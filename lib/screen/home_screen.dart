import 'package:flutter/material.dart';
import 'package:gocafein_test/provider/provider.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:gocafein_test/screen/home_item.dart';

class HomeScreen extends HookConsumerWidget {
  static const routeName = '/main';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final keywordController = useTextEditingController(text: 'star');

    useEffect(() {
      Future.microtask(() => ref.read(movieProvider.notifier).fetchMovies('star'));
      return null;
    }, [keywordController]);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'GOCAFEIN: MovieSearch',
          style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Theme.of(context).primaryColor),
        ),
      ),
      body: SingleChildScrollView(
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
                        keywordController.text = text;
                      },
                    ),
                  ),
                  const SizedBox(width: 16),
                  SizedBox(
                    width: 80,
                    child: OutlinedButton(
                      onPressed: () async {
                        ref.read(movieProvider.notifier).fetchMovies(keywordController.text);
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
              _listBuild(context, ref),
            ],
          ),
        ),
      ),
    );
  }

  Widget _listBuild(BuildContext context, WidgetRef ref) {
    final movieState = ref.watch(movieProvider);

    return movieState.when(
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
    );
  }
}