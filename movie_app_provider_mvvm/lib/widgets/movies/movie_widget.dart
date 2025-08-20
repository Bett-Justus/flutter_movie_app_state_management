import 'package:flutter/material.dart';
import 'package:movie_app_provider_mvvm/constants/app_colors.dart';
import 'package:movie_app_provider_mvvm/constants/app_constants.dart';
import 'package:movie_app_provider_mvvm/constants/app_icons.dart';
import 'package:movie_app_provider_mvvm/widgets/cached_image.dart';
import 'package:movie_app_provider_mvvm/widgets/movies/favorite_button.dart';
import 'package:movie_app_provider_mvvm/widgets/movies/genres_list_widget.dart';

class MovieWidget extends StatelessWidget {
  const MovieWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () {
          // Handle tap
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CachedImageWidget(imageUrl: AppConstants.imageUrl),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Movie Title',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(AppIcons.star, color: AppColors.kAmper, size: 20),
                        SizedBox(width: 5),
                        Text('4/5'),
                      ],
                    ),
                    GenresListWidget(),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              AppIcons.clock,
                              color: Theme.of(context).colorScheme.secondary,
                              size: 20,
                            ),
                            SizedBox(width: 5),
                            Text('2024-06-15'),
                          ],
                        ),
                        FavoriteBtnWidget(),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
