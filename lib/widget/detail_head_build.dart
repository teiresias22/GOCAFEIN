import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:gocafein_test/model/models.dart';

class DetailHeadBuild extends HookWidget {
  final MovieModel movieModel;
  const DetailHeadBuild(this.movieModel, {super.key});

  @override
  Widget build(BuildContext context) {
    CachedNetworkImage posterImage = CachedNetworkImage(
      imageUrl: movieModel.Poster ?? '',
      fit: BoxFit.cover,
      placeholder: (context, url) => const Center(
        child: SizedBox(
          width: 40,
          height: 40,
          child: CircularProgressIndicator.adaptive(),
        ),
      ),
      errorWidget: (context, url, error) => Image.asset(
        'assets/movie.jpg',
        fit: BoxFit.fitWidth,
      ),
    );
    return SizedBox(
      width: double.infinity,
      height: 240,
      child: Stack(
        fit: StackFit.expand,
        children: [
          ColorFiltered(
            colorFilter: ColorFilter.mode(
              Colors.grey.withOpacity(0.6),
              BlendMode.srcOver,
            ),
            child: Hero(
              tag: 'moviePoster_${movieModel.imdbID}',
              child: posterImage,
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
                    child: posterImage,
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
}