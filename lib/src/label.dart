import 'package:flutter/widgets.dart';
import 'octicons.dart';
import 'colors.dart';

const openGreen = Color(0xff2cbe4e);

enum PrimerTheme {
  primary,
  warn,
  error,
  success,
}

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

enum StateLabelStatus {
  issueOpened,
  issueClosed,
  pullOpened,
  pullClosed,
  pullMerged,
}

class StateLabel extends StatelessWidget {
  final StateLabelStatus status;
  final bool small;

  StateLabel(this.status, {this.small = false});

  @override
  Widget build(BuildContext context) {
    String text;
    IconData iconData;
    Color bgColor;

    switch (status) {
      case StateLabelStatus.issueOpened:
        text = 'Open';
        iconData = Octicons.issue_opened;
        bgColor = openGreen;
        break;
      case StateLabelStatus.issueClosed:
        text = 'Closed';
        iconData = Octicons.issue_closed;
        bgColor = PrimerColors.red600;
        break;
      case StateLabelStatus.pullOpened:
        text = 'Open';
        iconData = Octicons.git_pull_request;
        bgColor = openGreen;
        break;
      case StateLabelStatus.pullClosed:
        text = 'Closed';
        iconData = Octicons.git_pull_request;
        bgColor = PrimerColors.red600;
        break;
      case StateLabelStatus.pullMerged:
        text = 'Merged';
        iconData = Octicons.git_merge;
        bgColor = PrimerColors.purple500;
        break;
    }

    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
      padding: EdgeInsets.all(6),
      child: Row(
        children: <Widget>[
          Icon(iconData, color: PrimerColors.white, size: 15),
          SizedBox(width: 2),
          Text(
            text,
            style: TextStyle(
              color: PrimerColors.white,
              fontWeight: FontWeight.w600,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
