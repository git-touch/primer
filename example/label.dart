import 'package:flutter/material.dart';
import 'package:primer/primer.dart';

/// Label example
class LabelScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 4,
      children: <Widget>[
        Label('default label', theme: PrimerTheme.primary),
        Label('default label', theme: PrimerTheme.primary, outline: true),
        StateLabel(StateLabelStatus.issueOpened),
        StateLabel(StateLabelStatus.issueClosed),
        StateLabel(StateLabelStatus.pullMerged),
      ],
    );
  }
}
