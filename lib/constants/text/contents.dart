import 'package:ionicons/ionicons.dart';

import '../../data/education_item.dart';
import '../../data/experience_item.dart';
import '../../data/skill_item.dart';
import '../../data/texts.dart';
import '../styling/textstyles.dart';

class Contents {
  static const name = TextWithTextStyle(
    'Michael Mazurovsky',
    TextStyles.name,
  );
  static const title = TextWithTextStyle(
    'Senior Flutter Developer',
    TextStyles.title,
  );
  static const subtitle1 = TextWithTextStyle(
    'Blue Card holder. Located in Berlin, Germany',
    TextStyles.subtitle,
  );
  static const subtitle2 = TextWithTextStyle(
    'Clean Code advocate with more than 5 yrs experience',
    TextStyles.subtitle,
  );
  static const mainInfo = [
    name,
    title,
    subtitle1,
    subtitle2,
  ];
  static const contactLinks = [
    IconWithLink(
      textWithStyle: TextWithTextStyle('Email', TextStyles.contactLink),
      linkText: 'mailto:mmazurovsky@gmail.com?subject=Request from website related to: ',
      icon: Ionicons.mail,
    ),
    IconWithLink(
      textWithStyle: TextWithTextStyle('LinkedIn', TextStyles.contactLink),
      linkText: 'https://www.linkedin.com/in/mmazurovsky',
      icon: Ionicons.logo_linkedin,
    ),
    IconWithLink(
      textWithStyle: TextWithTextStyle('Github', TextStyles.contactLink),
      linkText: 'https://github.com/mmazurovsky',
      icon: Ionicons.logo_github,
    ),
  ];
  static const experienceTitle = 'Professional Experience';
  static const educationTitle = 'Relevant Education';
  static const skillsTitle = 'Skills';
  static const experienceItems = [
    ExperienceItem(
      companyText: 'Beautiful Destinations (Berlin, Germany).',
      link: 'https://beautifuldestinations.com',
      positionText: 'Senior Flutter Mobile Developer',
      timePeriodText: '12.22 – 01.22',
      descriptionText:
          'Refactored a vertical video app using Clean Code and SOLID practices, but the company decided to adopt a lower-quality approach.',
    ),
    ExperienceItem(
      companyText: 'Upwork Freelancing.',
      link: 'https://www.upwork.com/freelancers/~01d81165702797a3ca',
      positionText: 'Top Rated Flutter Mobile Developer',
      timePeriodText: '01.22 – 12.22',
      descriptionText:
          'Rewrote One2One.Run app for professional runners (the Netherlands), resulting in improved code quality, integration with Firebase, faster page loading, added features, and positive UX changes.\n\nRewrote crucial parts of an app for 29ventures GmbH (Germany), integrating AWS Amplify and Cognito, improving offline data synchronization, and enhancing state management and code readability.',
    ),
    ExperienceItem(
      companyText: 'Postraves.',
      link: 'https://www.youtube.com/watch?v=n0C-t9XwdD0',
      positionText: 'Middle Flutter Mobile Developer',
      timePeriodText: '01.20 – 01.22',
      descriptionText:
          'Developed a system composed of new Android, iOS, and Web apps from scratch. Implemented complex app-wide state management for counting followers. Integrated Firebase authentication with 3rd party services.',
    ),
    ExperienceItem(
      companyText: 'Zyfra.',
      link: 'https://www.zyfra.com',
      positionText: 'Middle Java/Kotlin Software Engineer',
      timePeriodText: '07.19 – 04.21',
      descriptionText:
          "Developed a large SCM system for one of the biggest oil companies in a team of 12 members working according to Scrum. Won a title as the company's most effective software dev team.",
    ),
    ExperienceItem(
      companyText: 'Fitness Lab.',
      link: 'https://www.producthunt.com/posts/fitness-lab',
      positionText: 'Junior Software Engineer',
      timePeriodText: '04.17 – 01.19',
      descriptionText:
          "I took part in the creation of a Fitness mobile app ecosystem. Mobile app of our team was featured by Apple in the App Store.",
    ),
  ];
  static const educationItems = [
    EducationItem(
      universityText: 'Lappeenranta University of Technology (Finland)',
      link: 'http://lut.fi/web/en',
      degreeText: 'Master’s degree in Software Engineering.',
      resultText: 'GPA: 92,4 / 100.',
    ),
  ];
  static const skillItems = [
    SkillItem(
      titleText: 'Mobile.',
      contentText:
          'Flutter; Dart; BLoC, Provider, Riverpod, Mobx state management; Firebase; AWS Amplify, Cognito, S3; Get It dependency injection; unit, integration, widget testing. Multithreading, Isolates, Platform channels for calling native Android Kotlin and iOS Swift code.',
    ),
    SkillItem(
      titleText: 'General software engineering.',
      contentText:
          'SOLID, Design Patterns, Git, SQL and NoSQL databases, Redis, Java, Kotlin, Docker.',
    ),
    SkillItem(
      titleText: 'Other.',
      contentText:
          'Advanced English, Team work, Independent work, Scrum, Kanban, Jira, Trello, Asana.',
    ),
  ];
}
