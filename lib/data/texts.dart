import 'package:flutter/material.dart';

class TextWithTextStyle {
  final String text;
  final TextStyle style;

  const TextWithTextStyle(this.text, this.style);
}

class TextWithLink {
  final TextWithTextStyle text;
  final String linkText;

  const TextWithLink({
    required this.text,
    required this.linkText,
  });

  Uri get link => Uri.parse(linkText);
}

class IconWithLink {
  final TextWithTextStyle textWithStyle;
  final String linkText;
  final IconData icon;

  const IconWithLink({
    required this.textWithStyle,
    required this.linkText,
    required this.icon,
  });

  Uri get link {
    final link = Uri.parse(linkText);
    return link;
  }
}
