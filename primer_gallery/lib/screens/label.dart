import 'package:flutter/material.dart';
import 'package:primer/primer.dart';

class LabelScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Label('default label', theme: PrimerTheme.primary),
      Label('default label', theme: PrimerTheme.primary, outline: true),
      StateLabel(StateLabelStatus.issueOpened),
      StateLabel(StateLabelStatus.issueClosed),
      StateLabel(StateLabelStatus.pullMerged),
    ]);
  }
}
