import 'package:flutter/material.dart';
import 'package:movie_app_provider_mvvm/constants/app_icons.dart';

class FavoriteBtnWidget extends StatelessWidget {
  const FavoriteBtnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.zero,
      icon: const Icon(AppIcons.favoriteOutlined),
      onPressed: () {
        // Handle favorite action
      },
    );
  }
}
