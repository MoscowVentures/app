import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../data/home/home_align_enum.dart';
import '../../../utils/extensions.dart';

class StoryFulscreen extends StatelessWidget {
  const StoryFulscreen({
    required this.title,
    required this.text,
    required this.align,
    required this.backgroundUrl,
    super.key,
  });

  final String title;
  final String text;
  final HomeAlign align;
  final String backgroundUrl;

  Alignment get alignment {
    switch (align) {
      case HomeAlign.top:
        return Alignment.topLeft;
      case HomeAlign.center:
        return Alignment.centerLeft;
      case HomeAlign.bottom:
        return Alignment.bottomLeft;
    }
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: context.colors.transparent,
        statusBarColor: context.colors.transparent,
      ),
    );

    return GestureDetector(
      onTap: () {
        Navigator.of(context).pop();
        SystemChrome.setSystemUIOverlayStyle(
          SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark,
            statusBarIconBrightness: Brightness.dark,
            statusBarColor: context.colors.mainBackground,
            systemNavigationBarColor: context.colors.mainBackground,
          ),
        );
      },
      child: Scaffold(
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Positioned.fill(
                child: CachedNetworkImage(
                  fit: BoxFit.fill,
                  imageUrl: backgroundUrl,
                ),
              ),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 34,
                    vertical: 10,
                  ),
                  child: Container(
                    height: 2,
                    decoration: BoxDecoration(
                      color: context.colors.mainPrimary,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned.fill(
                child: Align(
                  alignment: alignment,
                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 34.0,
                        vertical: 60.0,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: context.text.titleLarge!.copyWith(
                              color: context.colors.mainPrimary,
                            ),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            text,
                            style: context.text.bodyLarge!.copyWith(
                              color: context.colors.mainPrimary,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
