import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../data/home/home_align_enum.dart';
import '../../../utils/extensions.dart';
import '../../home/widgets/story_fullscreen.dart';

class StoryGallery extends StatefulWidget {
  const StoryGallery({
    required this.title,
    required this.text,
    required this.align,
    this.backgroundUrl,
    super.key,
  });

  final String? backgroundUrl;
  final String title;
  final String text;
  final HomeAlign align;

  @override
  State<StoryGallery> createState() => _StoryGalleryState();
}

class _StoryGalleryState extends State<StoryGallery> {
  bool viewed = false;

  @override
  Widget build(BuildContext context) {
    final backgroundUrl = widget.backgroundUrl;
    return GestureDetector(
      onTap: () {
        if (backgroundUrl == null) return;
        setState(() => viewed = true);
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => StoryFulscreen(
              title: widget.title,
              text: widget.text,
              backgroundUrl: backgroundUrl,
              align: widget.align,
            ),
          ),
        );
      },
      child: Container(
        width: 124,
        height: 172,
        decoration: BoxDecoration(
          border: Border.all(
            color: backgroundUrl == null
                ? context.colors.mainPrimary
                : viewed
                    ? context.colors.transparent
                    : context.colors.mainAccent,
            width: 3.5,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        clipBehavior: Clip.hardEdge,
        child: ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(16.5),
          ),
          child: Stack(
            children: [
              if (backgroundUrl != null)
                CachedNetworkImage(
                  imageUrl: backgroundUrl,
                  fit: BoxFit.fill,
                  width: 124,
                  height: 172,
                )
              else
                Container(
                  color: context.colors.mainPrimary,
                  width: 124,
                  height: 172,
                ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 16,
                  ),
                  child: Text(
                    widget.title,
                    maxLines: 5,
                    style: context.text.labelMedium,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
