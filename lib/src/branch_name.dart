import 'package:flutter/widgets.dart';
import 'colors.dart';

class BranchName extends StatelessWidget {
  final String name;

  BranchName(this.name);

  static const branchBgColor = Color(0xffeaf5ff);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 2, horizontal: 6),
      height: 18,
      decoration: BoxDecoration(
        color: branchBgColor,
        borderRadius: BorderRadius.all(Radius.circular(3)),
      ),
      child: Text(
        name,
        style: TextStyle(
            color: PrimerColors.blue500,
            fontSize: 12,
            fontFamily: 'monospace'), // TODO: monospace fonts
      ),
    );
  }
}
