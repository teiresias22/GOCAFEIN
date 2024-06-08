import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:gocafein_test/provider/provider.dart';

class MovieDetailScreen extends ConsumerWidget {
  final String imdbID;
  const MovieDetailScreen(this.imdbID, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // fetchMovieDetail 호출
    ref.read(movieProvider.notifier).fetchMovieDetail(imdbID);

    // 상태 구독
    final detailState = ref.watch(movieProvider);

    return detailState.when(
      data: (dailyItem) => Text('etrr'),
      error: (e, s) => const Center(
        child: Text('로딩 중 에러가 발생했습니다'),
      ),
      loading: () => const Center(
        child: CircularProgressIndicator.adaptive(),
      ),
    );
  }
}
