import 'package:flutter/cupertino.dart';

extension ListWithSeparators<DATAELEMENT> on List<DATAELEMENT> {
  Iterable<Widget> mapSeparatedColumn(
    Widget Function(DATAELEMENT e) widgetBuilder, {
    required Widget separator,
  }) {
    return asMap().entries.map((e) {
      if (e.key == length - 1) {
        final widget = widgetBuilder(e.value);
        return widget;
      } else {
        final widget = Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            widgetBuilder(e.value),
            separator,
          ],
        );
        return widget;
      }
    });
  }

  Iterable<Widget> mapSeparatedRow(
    Widget Function(DATAELEMENT e) widgetBuilder, {
    required Widget separator,
  }) {
    return asMap().entries.map((e) {
      if (e.key == length - 1) {
        final widget = widgetBuilder(e.value);
        return widget;
      } else {
        final widget = Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            widgetBuilder(e.value),
            separator,
          ],
        );
        return widget;
      }
    });
  }
}
