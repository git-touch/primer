import 'package:flutter_web/material.dart';
import '../generated/primer.dart';

class BlankslateScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        BlankslateTitle('This is a blank slate'),
        Text('Use it to provide information when no dynamic content exists.'),
      ],
    );
  }
}
