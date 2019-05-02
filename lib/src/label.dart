import 'package:flutter/widgets.dart';

enum PrimerTheme {
  primary,
  warn,
  error,
  success,
}

Map<PrimerTheme, Color> colorMap = {
  PrimerTheme.primary: Color(0xff0366d6),
};

class Label extends StatelessWidget {
  final String text;
  final PrimerTheme theme;
  final bool outline;

  Label(this.text, {this.theme, this.outline = false});

  @override
  Widget build(BuildContext context) {
    var mainColor = colorMap[theme];

    return Container(
      padding: EdgeInsets.symmetric(vertical: 3, horizontal: 4),
      decoration: BoxDecoration(
        color: outline ? null : mainColor,
        border: Border.all(color: mainColor, width: 1),
        borderRadius: BorderRadius.all(Radius.circular(2)),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 12,
          color: outline ? mainColor : Color(0xffffffff),
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
