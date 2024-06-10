import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:gocafein_test/model/models.dart';

class DetailGridItem extends HookWidget {
  final MovieModel dailyItem;
  final int index;
  const DetailGridItem(this.dailyItem, this.index, {super.key});

  @override
  Widget build(BuildContext context) {
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
        case 0: return dailyItem.Director ?? '';
        case 1: return dailyItem.Runtime ?? '';
        case 2: return dailyItem.Rated ?? '';
        case 3: return dailyItem.Genre ?? '';
        case 4: return dailyItem.Country ?? '';
        case 5: return dailyItem.Writer ?? '';
        case 6: return dailyItem.Year ?? '';
        case 7: return dailyItem.Actors ?? '';
        case 8: return dailyItem.Language ?? '';
        case 9: return dailyItem.DVD ?? '';
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