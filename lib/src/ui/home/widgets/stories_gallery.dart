import 'package:flutter/material.dart';

import '../../../data/home/story_response_data.dart';
import 'story_gallery.dart';

class StoriesGallery extends StatelessWidget {
  const StoriesGallery({
    required this.stories,
    super.key,
  });

  final List<StoryResponseData> stories;

  @override
  Widget build(BuildContext context) => SizedBox(
        height: 172,
        child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: stories.length + 2,
          separatorBuilder: (context, index) => const SizedBox(width: 8),
          itemBuilder: (context, index) {
            if (index == 0) return const SizedBox(width: 16);
            if (index == stories.length + 1) return const SizedBox(width: 16);

            final story = stories[index - 1];

            return StoryGallery(
              backgroundUrl: story.url,
              title: story.title,
              text: story.text,
              align: story.align,
            );
          },
        ),
      );
}
