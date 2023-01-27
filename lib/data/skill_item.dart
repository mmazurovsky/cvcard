import 'package:cvcard/constants/styling/textstyles.dart';
import 'package:cvcard/data/texts.dart';

class SkillItem {
  final String titleText;
  final String contentText;

  const SkillItem({
    required this.titleText,
    required this.contentText,
  });

  TextWithTextStyle get title => TextWithTextStyle(
        titleText,
        TextStyles.skillItemTitle,
      );

  TextWithTextStyle get content => TextWithTextStyle(
        contentText,
        TextStyles.skillItemContent,
      );
}
