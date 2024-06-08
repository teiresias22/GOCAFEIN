import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:gocafein_test/provider/provider.dart';
import 'package:gocafein_test/model/models.dart';
import 'package:gocafein_test/screen/movie_detail.screen.dart';

class MovieItem extends ConsumerWidget {
  final MovieModel movieModel;
  const MovieItem(this.movieModel, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return GestureDetector(
      onTap: () async {
        ref.read(movieDetailProvider.notifier).fetchMovieDetail(movieModel.imdbID ?? '');
        await Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MovieDetailScreen(movieModel.Title ?? ''),
          ),
        );
      },
      child: Container(
        height: 120,
        width: double.infinity,
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.only(bottom: 8),
        child: Row(
          children: [
            ClipRRect(
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
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        movieModel.Type ?? '',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      Text(
                        movieModel.Year ?? '',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    movieModel.Title ?? '',
                    style: Theme.of(context).textTheme.titleSmall,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Spacer(),
                  const Divider(
                    height: 1,
                    thickness: 1,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}