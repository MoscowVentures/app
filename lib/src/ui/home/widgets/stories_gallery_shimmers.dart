import 'package:flutter/material.dart';

import '../../../data/home/home_align_enum.dart';
import 'story_gallery.dart';

class StoriesGalleryShimmers extends StatelessWidget {
  const StoriesGalleryShimmers({super.key});

  @override
  Widget build(BuildContext context) => SizedBox(
        height: 172,
        child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          separatorBuilder: (context, index) => const SizedBox(width: 8),
          itemBuilder: (context, index) {
            if (index == 0) return const SizedBox(width: 16);
            if (index == 5) return const SizedBox(width: 16);

            return const StoryGallery(
              title: '',
              text: '',
              align: HomeAlign.center,
            );
          },
        ),
      );
}
