import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:gocafein_test/model/models.dart';

class DetailRatingBuild extends HookWidget {
  final MovieModel dailyItem;
  const DetailRatingBuild(this.dailyItem, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'imdb 평점',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(width: 16),
            Text(
              dailyItem.imdbRating ?? '',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Theme.of(context).colorScheme.tertiary),
            ),
          ],
        ),
        ListView.builder(
          primary: false,
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: dailyItem.Ratings?.length,
          itemBuilder: (context, index) {
            return Row (
              children: [
                Text(
                  dailyItem.Ratings![index].Source,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(width: 16),
                Text(
                  dailyItem.Ratings![index].Value,
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Theme.of(context).colorScheme.tertiary),
                ),
              ],
            );
          },
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}