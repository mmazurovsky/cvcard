import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../../constants/styling/colors.dart';

class MyCachedNetworkImage extends StatelessWidget {
  final String? imageLink;
  const MyCachedNetworkImage(this.imageLink, {Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return imageLink == null || imageLink!.length < 3
        ? const EmptyImagePlaceholder()
        : CachedNetworkImage(
            imageUrl: imageLink!,
            imageBuilder: (context, provider) {
              return Image(
                image: provider,
                fit: BoxFit.cover,
              );
            },
            placeholder: (context, url) => Container(color: MyColors.kMain),
            errorWidget: (context, url, smth) => const EmptyImagePlaceholder(),
          );
  }
}

class EmptyImagePlaceholder extends StatelessWidget {
  const EmptyImagePlaceholder({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyColors.kMain,
      child: const Icon(
        Ionicons.image_outline,
        color: MyColors.kAccent,
        size: 25,
      ),
    );
  }
}
