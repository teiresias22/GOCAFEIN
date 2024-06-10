import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:gocafein_test/model/models.dart';

class DetailAwaardsBuild extends HookWidget {
  final MovieModel dailyItem;
  const DetailAwaardsBuild(this.dailyItem, {super.key});

  @override
  Widget build(BuildContext context) {
    return dailyItem.Awards != 'N/A' ? Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          dailyItem.Awards ?? '',
          maxLines: 2,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Theme.of(context).primaryColor),
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 16),
      ],
    ) : const SizedBox();
  }
}