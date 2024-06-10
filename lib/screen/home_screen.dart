import 'package:flutter/material.dart';
import 'package:gocafein_test/provider/provider.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:gocafein_test/widget/home_list_item.dart';

class HomeScreen extends HookConsumerWidget {
  static const routeName = '/main';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final keywordController = useTextEditingController(text: 'star');
    final scrollController = useScrollController();
    final movieState = ref.watch(movieProvider);

    var pageIndex = useState(1);
    var floatingButton = useState(false);

    Future<void> requestData() async {
      Future.microtask(() => ref.read(movieProvider.notifier).fetchMovies(keywordController.text, pageIndex.value));
      pageIndex.value = pageIndex.value+1;
    }

    useEffect(() {
      requestData();
      scrollController.addListener(() {
        bool isScrolling = scrollController.position.isScrollingNotifier.value;
        if (isScrolling) {
          floatingButton.value = true;
          FocusScope.of(context).unfocus();
        }

        bool atTop = scrollController.position.pixels == 0;
        if (atTop) {
          floatingButton.value = false;
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
          'GOCAFEIN: Jeon_Joonhwan',
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
                      onChanged: (text) {
                        print(keywordController.text);
                      },
                    ),
                  ),
                  const SizedBox(width: 16),
                  SizedBox(
                    width: 80,
                    child: OutlinedButton(
                      onPressed: () async {
                        FocusScope.of(context).unfocus();
                        pageIndex.value = 1;
                        ref.read(movieProvider.notifier).fetchMovies(keywordController.text, pageIndex.value);
                      },
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
                data: (movies) => ListView.builder(
                  primary: false,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: movies?.length,
                  itemBuilder: (context, index) {
                    return MovieItem(movies![index]);
                  },
                ),
                error: (e, s) => const Center(
                  child: Text('로딩 중 에러가 발생했습니다'),
                ),
                loading: () => const Center(
                  child: CircularProgressIndicator.adaptive(),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: floatingButton.value ? FloatingActionButton.small(
        onPressed: () {
          scrollController.animateTo(
            0,
            duration: const Duration(milliseconds: 1000),
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
      ) : null,
    );
  }
}