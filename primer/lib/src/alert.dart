import 'package:flutter/widgets.dart';
import 'colors.dart';
import 'utils.dart';

class Alert extends StatelessWidget {
  final String text;
  final PrimerTheme theme;

  Alert(this.text, {this.theme});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: PrimerColors.blue100,
        borderRadius: BorderRadius.all(Radius.circular(3)),
        border: Border.all(color: Color(0x1b1f2326), width: 1),
      ),
      child: Text(
        text,
        style: TextStyle(color: PrimerColors.blue800),
      ),
    );
  }
}
