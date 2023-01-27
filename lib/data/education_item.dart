import 'package:cvcard/data/texts.dart';
import 'package:flutter/material.dart';

import '../constants/styling/textstyles.dart';

class EducationItem {
  final String universityText;
  final String link;
  final String degreeText;
  final String resultText;

  const EducationItem({
    required this.universityText,
    required this.link,
    required this.degreeText,
    required this.resultText,
  });

  TextWithLink get university => TextWithLink(
        text: TextWithTextStyle(
          universityText,
          TextStyles.educationItemUni,
        ),
        linkText: link,
      );
  TextWithTextStyle get degree => TextWithTextStyle(
        degreeText,
        TextStyles.educationItemDegree,
      );
  TextWithTextStyle get result => TextWithTextStyle(
        resultText,
        TextStyles.educationItemResult,
      );
}
