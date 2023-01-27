import '../constants/styling/textstyles.dart';
import 'texts.dart';

class ExperienceItem {
  final String companyText;
  final String link;
  final String positionText;
  final String timePeriodText;
  final String descriptionText;

  const ExperienceItem({
    required this.companyText,
    required this.link,
    required this.positionText,
    required this.timePeriodText,
    required this.descriptionText,
  });

  TextWithLink get company => TextWithLink(
        text: TextWithTextStyle(
          companyText,
          TextStyles.experienceItemCompany,
        ),
        linkText: link,
      );
  TextWithTextStyle get position => TextWithTextStyle(
        positionText,
        TextStyles.experienceItemPosition,
      );
  TextWithTextStyle get timePeriod => TextWithTextStyle(
        timePeriodText,
        TextStyles.experienceItemTimePeriod,
      );
  TextWithTextStyle get description => TextWithTextStyle(
        descriptionText,
        TextStyles.experienceItemDescription,
      );
}
