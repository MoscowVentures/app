import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../utils/extensions.dart';

class Topic extends StatelessWidget {
  const Topic({
    required this.title,
    required this.text,
    this.backgroundUrl,
    this.assetPath,
    this.onTap,
    super.key,
  });

  final String title;
  final String text;
  final String? backgroundUrl;
  final String? assetPath;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final backgroundUrl = this.backgroundUrl;
    final assetPath = this.assetPath;

    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 140,
        width: 385,
        child: Stack(
          children: [
            if (backgroundUrl != null)
              CachedNetworkImage(
                imageUrl: backgroundUrl,
                fit: BoxFit.fill,
              ),
            if (assetPath != null) Image.asset(assetPath),
            Padding(
              padding: const EdgeInsets.only(
                left: 22,
                right: 110,
                top: 20,
                bottom: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: context.text.titleSmall,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    text,
                    style: context.text.labelLarge,
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
