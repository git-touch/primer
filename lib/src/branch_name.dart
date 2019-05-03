import 'package:flutter/widgets.dart';
import 'colors.dart';

const branchBgColor = Color(0xffeaf5ff);

class BranchName extends StatelessWidget {
  final String name;

  BranchName(this.name);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 2, horizontal: 6),
      decoration: BoxDecoration(
        color: branchBgColor,
        borderRadius: BorderRadius.all(Radius.circular(3)),
      ),
      child: Text(name,
          style: TextStyle(color: PrimerColors.blue500, fontSize: 12)),
    );
  }
}
