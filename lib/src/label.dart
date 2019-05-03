import 'package:flutter/widgets.dart';
import 'octicons.dart';

const white = Color(0xffffffff);

enum PrimerTheme {
  primary,
  warn,
  error,
  success,
}

Map<PrimerTheme, Color> colorMap = {
  PrimerTheme.primary: Color(0xff0366d6),
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
          color: outline ? mainColor : white,
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
        bgColor = Color(0xff2cbe4e);
        break;
      case StateLabelStatus.issueClosed:
        text = 'Closed';
        iconData = Octicons.issue_closed;
        bgColor = Color(0xffcb2431);
        break;
      case StateLabelStatus.pullOpened:
        text = 'Open';
        iconData = Octicons.git_pull_request;
        bgColor = Color(0xff2cbe4e);
        break;
      case StateLabelStatus.pullClosed:
        text = 'Closed';
        iconData = Octicons.git_pull_request;
        bgColor = Color(0xffcb2431);
        break;
      case StateLabelStatus.pullMerged:
        text = 'Merged';
        iconData = Octicons.git_merge;
        bgColor = Color(0xff6f42c1);
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
          Icon(iconData, color: white, size: 15),
          SizedBox(width: 2),
          Text(
            text,
            style: TextStyle(
              color: white,
              fontWeight: FontWeight.w600,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
