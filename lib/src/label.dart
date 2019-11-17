import 'package:flutter/widgets.dart';
import 'colors.dart';
import 'utils.dart';

const openGreen = Color(0xff2cbe4e);

Map<PrimerTheme, Color> colorMap = {
  PrimerTheme.primary: PrimerColors.blue500,
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
          color: outline ? mainColor : PrimerColors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
