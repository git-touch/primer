import 'package:flutter/material.dart';
import 'package:primer/primer.dart';

/// Blankslate example
class BlankslateExample extends StatelessWidget {
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
