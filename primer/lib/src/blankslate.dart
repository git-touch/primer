import 'package:flutter/widgets.dart';
import 'colors.dart';

class Blankslate extends StatelessWidget {
  final Widget child;
  final bool spacious;
  final bool cleanBackground;

  Blankslate({this.child, this.spacious = false, this.cleanBackground = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: spacious
          ? EdgeInsets.symmetric(vertical: 80, horizontal: 40)
          : EdgeInsets.all(32),
      decoration: BoxDecoration(
        color: cleanBackground ? null : PrimerColors.gray000,
        borderRadius: BorderRadius.all(Radius.circular(3)),
        border: cleanBackground
            ? null
            : Border.all(color: PrimerColors.gray200, width: 1),
      ),
      child: child,
    );
  }
}

class BlankslateTitle extends StatelessWidget {
  final String text;

  BlankslateTitle(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: PrimerColors.gray900,
        height: 1.5,
      ),
    );
  }
}
