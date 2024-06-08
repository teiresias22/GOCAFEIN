import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:gocafein_test/provider/provider.dart';
import 'package:gocafein_test/model/models.dart';

class MovieDetailScreen extends HookConsumerWidget {
  final MovieModel movieModel;
  const MovieDetailScreen(this.movieModel, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final detailState = ref.watch(movieDetailProvider);

    return  Scaffold(
      appBar: AppBar(
        title: Text(
          movieModel.Title ?? '',
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            _HeadBuild(context, ref, movieModel),
            Padding(
              padding: const EdgeInsets.all(16),
              child: detailState.when(
                data: (dailyItem) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _AwardsBuild(context, ref, dailyItem),
                    _RatingBuild(context, ref, dailyItem),
                    _PlotBuild(context, ref, dailyItem),
                    GridView.builder(
                      shrinkWrap: true,
                      itemCount: 10,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 16,
                        childAspectRatio: 2,
                      ),
                      itemBuilder: (context, index) {
                        return _GridItemBuild(context, ref, index, dailyItem);
                      }
                    ),
                  ],
                ),
                error: (e, s) => const Center(
                  child: Text('로딩 중 에러가 발생했습니다'),
                ),
                loading: () => const Center(
                  child: CircularProgressIndicator.adaptive(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _HeadBuild(
      BuildContext context,
      WidgetRef ref,
      MovieModel movieModel) {
    return SizedBox(
      width: double.infinity,
      height: 240,
      child:
      Stack(
        fit: StackFit.expand,
        children: [
          ColorFiltered(
            colorFilter: ColorFilter.mode(
              Colors.grey.withOpacity(0.5),
              BlendMode.srcOver,
            ),
            child: CachedNetworkImage(
              imageUrl: movieModel.Poster ?? '',
              fit: BoxFit.cover,
              placeholder: (context, url) =>
              const Center(
                child: SizedBox(
                  width: 40,
                  height: 40,
                  child: CircularProgressIndicator.adaptive(),
                ),
              ),
            ),
          ),
          Positioned(
            left: 16,
            right: 16,
            bottom: 16,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  height: 120,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: CachedNetworkImage(
                      imageUrl: movieModel.Poster ?? '',
                      fit: BoxFit.cover,
                      placeholder: (context, url) => const Center(
                        child: SizedBox(
                          width: 40,
                          height: 40,
                          child: CircularProgressIndicator.adaptive(),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            movieModel.Type ?? '',
                            style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.white),
                          ),
                          const SizedBox(width: 16),
                          Text(
                            movieModel.Year ?? '',
                            style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                      Text(
                        movieModel.Title ?? '',
                        maxLines: 2,
                        style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _AwardsBuild(
      BuildContext context,
      WidgetRef ref,
      MovieModel? dailyItem) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '수상',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(height: 8),
        Text(
          dailyItem?.Awards ?? '',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(height: 16),
      ],
    );
  }

  Widget _RatingBuild(
      BuildContext context,
      WidgetRef ref,
      MovieModel? dailyItem) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '평점',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Text(
              'imdb 평점',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(width: 16),
            Text(
              dailyItem?.imdbRating ?? '',
            ),
          ],
        ),
        ListView.builder(
          primary: false,
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: dailyItem?.Ratings?.length,
          itemBuilder: (context, index) {
            return Row (
              children: [
                Text(
                  dailyItem!.Ratings![index].Source,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                const SizedBox(width: 16),
                Text(
                  dailyItem.Ratings![index].Value,
                ),
              ],
            );
          },
        ),
        const SizedBox(height: 16),
      ],
    );
  }

  Widget _PlotBuild(
      BuildContext context,
      WidgetRef ref,
      MovieModel? dailyItem) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '기본정보',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(height: 8),
        Text(
          dailyItem?.Plot ?? '',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(height: 16),
      ],
    );
  }

  Widget _GridItemBuild(
      BuildContext context,
      WidgetRef ref,
      int index,
      MovieModel? movieModel) {
    String titleToIndex (int index) {
      switch (index) {
        case 0: return '감독';
        case 1: return '상영시간';
        case 2: return '영화등급';
        case 3: return '장르';
        case 4: return '국가';
        case 5: return '각본';
        case 6: return '제작 연도';
        case 7: return '출연';
        case 8: return '언어';
        case 9: return 'DVD';
        default: return '';
      }
    }
    String contentToIndex (int index) {
      switch (index) {
        case 0: return movieModel?.Director ?? '';
        case 1: return movieModel?.Runtime ?? '';
        case 2: return movieModel?.Rated ?? '';
        case 3: return movieModel?.Genre ?? '';
        case 4: return movieModel?.Country ?? '';
        case 5: return movieModel?.Writer ?? '';
        case 6: return movieModel?.Year ?? '';
        case 7: return movieModel?.Actors ?? '';
        case 8: return movieModel?.Language ?? '';
        case 9: return movieModel?.DVD ?? '';
        default: return '';
      }
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          titleToIndex(index),
          style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.grey),
        ),
        const SizedBox(height: 8),
        const Divider(
          height: 1,
          thickness: 1,
          color: Colors.grey,
        ),
        const SizedBox(height: 8),
        Text(
          contentToIndex(index),
          style: Theme.of(context).textTheme.bodyMedium,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
