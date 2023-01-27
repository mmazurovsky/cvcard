import 'package:cvcard/data/texts.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants/styling/colors.dart';
import '../constants/text/contents.dart';
import '../constants/text/links.dart';
import '../utils/extensions.dart';
import 'widget/images.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.kMain,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 480),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    PhotoAndMainInfoRow(),
                    SizedBox(height: 20),
                    LinkList(),
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

class PhotoAndMainInfoRow extends StatelessWidget {
  const PhotoAndMainInfoRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          clipBehavior: Clip.hardEdge,
          child: const MyCachedNetworkImage(MyLinks.avatar),
        ),
        const SizedBox(width: 15),
        const MainInfo(),
      ],
    );
  }
}

class LinkList extends StatelessWidget {
  const LinkList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      // mainAxisSize: MainAxisSize.min,
      children: Contents.contactLinks
          .mapSeparatedRow(
            (e) => IconButton(
              iconWithLink: e,
            ),
            separator: const SizedBox(width: 10),
          )
          .toList(),
    );
  }
}

class IconButton extends StatelessWidget {
  final IconWithLink iconWithLink;
  const IconButton({
    Key? key,
    required this.iconWithLink,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => launchUrl(iconWithLink.link),
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 43, 41, 41),
          borderRadius: BorderRadius.circular(5),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 8,
        ),
        alignment: Alignment.center,
        child: Row(
          children: [
            Icon(
              iconWithLink.icon,
              size: 22,
              color: MyColors.kAccent,
            ),
            const SizedBox(width: 10),
            Text(
              iconWithLink.textWithStyle.text,
              style: iconWithLink.textWithStyle.style,
            )
          ],
        ),
      ),
    );
  }
}

class MainInfo extends StatelessWidget {
  const MainInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: Contents.mainInfo
          .mapSeparatedColumn(
            separator: const SizedBox(
              height: 10,
            ),
            (e) => Text(
              e.text,
              style: e.style,
            ),
          )
          .toList(),
    );
  }
}
