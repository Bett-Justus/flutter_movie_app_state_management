import 'package:flutter/material.dart';
import 'package:movie_app_provider_mvvm/constants/app_colors.dart';
import 'package:movie_app_provider_mvvm/constants/app_icons.dart';
import 'package:movie_app_provider_mvvm/widgets/movies/movie_widget.dart';

class MovieScreen extends StatelessWidget {
  const MovieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text('Popular Movies'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(AppIcons.favoriteRounded, color: AppColors.kRed),
          ),
          SizedBox(width: 10),
          IconButton(onPressed: () {}, icon: const Icon(AppIcons.darkmode)),
        ],
        actionsPadding: EdgeInsets.only(right: 10),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return MovieWidget();
        },
      ),
    );
  }
}
