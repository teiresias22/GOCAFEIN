import 'package:flutter/material.dart';
import 'package:gocafein_test/provider/provider.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:gocafein_test/widget/home_list_item.dart';
import 'package:gocafein_test/widget/error_message_build.dart';

class HomeScreen extends HookConsumerWidget {
  static const routeName = '/main';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final keywordController = useTextEditingController(text: 'star');
    final scrollController = useScrollController();
    final movieState = ref.watch(movieProvider);

    var pageIndex = useState(0);
    var isFloatingButtonShow = useState(false);

    Future<void> requestData() async {
      Future.microtask(() => ref.read(movieProvider.notifier).fetchMovies(keywordController.text, pageIndex.value));
      pageIndex.value = pageIndex.value+1;
    }
    void requestNewData(String keyword) {
      if (keyword.isEmpty) {
        _showKeywordDialog(context);
      } else {
        FocusScope.of(context).unfocus();
        pageIndex.value = 1;
        ref.read(movieProvider.notifier).fetchMovies(keywordController.text, pageIndex.value);
      }
    }

    useEffect(() {
      requestData();
      scrollController.addListener(() {
        bool isScrolling = scrollController.position.isScrollingNotifier.value;
        if (isScrolling) {
          isFloatingButtonShow.value = true;
          FocusScope.of(context).unfocus();
        }

        bool atTop = scrollController.position.pixels == 0;
        if (atTop) {
          isFloatingButtonShow.value = false;
        }

        bool atBottom = scrollController.position.pixels == scrollController.position.maxScrollExtent;
        if (atBottom) {
          requestData();
        }
      });
      return () {
        scrollController.removeListener(() {});
        keywordController.removeListener(() {});
      };
    }, [scrollController, keywordController]);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'GOCAFEIN :: jeon_joonhwan',
          style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Theme.of(context).primaryColor),
        ),
      ),
      body: SingleChildScrollView(
        controller: scrollController,
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child:Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: keywordController,
                      decoration: const InputDecoration(
                        hintText: '검색어를 입력하세요',
                      ),
                      keyboardType: TextInputType.text,
                      style: const TextStyle(fontSize: 16),
                      onSubmitted: (text) => requestNewData(text),
                    ),
                  ),
                  const SizedBox(width: 16),
                  SizedBox(
                    width: 80,
                    child: OutlinedButton(
                      onPressed: () => requestNewData(keywordController.text),
                      style: Theme.of(context).outlinedButtonTheme.style,
                      child: Text(
                        '검색',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              movieState.when(
                data: (movies) {
                  if (movies == null || movies.isEmpty) {
                    return ErrorMessageBuild(keywordController.text);
                  }
                  return Column(
                    children: [
                      ListView.builder(
                        primary: false,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: movies.length,
                        itemBuilder: (context, index) {
                          return MovieItem(movies[index]);
                        },
                      ),
                    ],
                  );
                },
                error: (e, s) => ErrorMessageBuild(keywordController.text),
                loading: () => const Center(
                  child: CircularProgressIndicator.adaptive(),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: isFloatingButtonShow.value
          ? FloatingActionButton.small(
              onPressed: () {
                scrollController.animateTo(
                  0,
                  duration: const Duration(milliseconds: 2000),
                  curve: Curves.easeInOut,
                );
              },
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              foregroundColor: Theme.of(context).canvasColor,
              backgroundColor: Theme.of(context).primaryColorDark,
              child: const Icon(
                Icons.upload_rounded,
                size: 32,
              ),
            )
          : null,
    );
  }

  void _showKeywordDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            '알림',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          content: Text(
            '검색 키워드를 입력해 주세요!',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          actions: [
            TextButton(
              child: const Text('확인'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}