import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:gocafein_test/widget/detail_head_build.dart';
import 'package:gocafein_test/widget/detail_awards_build.dart';
import 'package:gocafein_test/widget/detail_plot_build.dart';
import 'package:gocafein_test/widget/detail_rating_build.dart';
import 'package:gocafein_test/widget/detail_grid_item.dart';
import 'package:gocafein_test/widget/error_message_build.dart';
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
            DetailHeadBuild(movieModel),
            Padding(
              padding: const EdgeInsets.all(16),
              child: detailState.when(
                data: (dailyItem) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DetailAwaardsBuild(dailyItem!),
                    DetailPlotBuild(dailyItem),
                    DetailRatingBuild(dailyItem),
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
                        return DetailGridItem(dailyItem, index);
                      }
                    ),
                  ],
                ),
                error: (e, s) => ErrorMessageBuild(movieModel.Title ?? ''),
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
}
