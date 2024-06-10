import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ErrorMessageBuild extends HookWidget {
  final String message;
  const ErrorMessageBuild(this.message, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.error,
          color: Theme.of(context).colorScheme.error,
        ),
        const SizedBox(width: 16),
        Text(
          '검색 결과를 확인할 수 없습니다.',
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}