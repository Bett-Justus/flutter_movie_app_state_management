import 'package:flutter/material.dart';

class GenresListWidget extends StatelessWidget {
  const GenresListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 5,

      children: [
        chipWidget(genreName: 'Horror', context: context),
        chipWidget(genreName: 'Action', context: context),
        chipWidget(genreName: 'Adventure', context: context),
        chipWidget(genreName: 'Sci-Fi', context: context),
        chipWidget(genreName: 'Comedy', context: context),
        chipWidget(genreName: 'Drama', context: context),
      ],
    );
  }

  Widget chipWidget({
    required String genreName,
    required BuildContext context,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 4.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Theme.of(context).colorScheme.surface.withAlpha(70),
          border: Border.all(color: Theme.of(context).colorScheme.surface),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
        child: Text(
          genreName,
          style: TextStyle(
            color: Theme.of(context).colorScheme.onSurface,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
