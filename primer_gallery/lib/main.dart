import 'package:flutter/material.dart';
import 'screens/alert.dart';
import 'screens/blankslate.dart';
import 'screens/branch_name.dart';
import 'screens/label.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var title = 'Flutter Primer Gallery';
    return MaterialApp(
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: title),
    );
  }
}

class WidgetItem {
  String name;
  String description;
  Widget Function() screenFactory;
  String code;
  WidgetItem(this.name, this.description, this.screenFactory, this.code);
}

List<WidgetItem> widgetItems = [
  WidgetItem(
    'Alert',
    'Inform users of successful or pending actions',
    () => AlertScreen(),
    '''import 'package:flutter/material.dart';
import 'package:primer/primer.dart';

class AlertScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Alert('Flash message goes here.');
  }
}
''',
  ),
  WidgetItem(
    'Blankslate',
    'Used when there is a lack of content within a page or section',
    () => BlankslateScreen(),
    '''import 'package:flutter/material.dart';
import 'package:primer/primer.dart';

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
''',
  ),
  WidgetItem(
    'Branch Name',
    'Git branch name',
    () => BranchNameScreen(),
    '''import 'package:flutter/material.dart';
import 'package:primer/primer.dart';

class BranchNameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BranchName('a_new_feature_branch');
  }
}
''',
  ),
  WidgetItem(
    'Label',
    'Add contextual metadata to a design',
    () => LabelScreen(),
    '''import 'package:flutter/material.dart';
import 'package:primer/primer.dart';

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
''',
  ),
];

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Column(
            children: widgetItems.map((item) {
          return InkWell(
            child: ListTile(
              title: Text(item.name),
              subtitle: Text(item.description),
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Scaffold(
                  appBar: AppBar(title: Text(item.name)),
                  body: Column(
                    children: [
                      Center(
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          child: item.screenFactory(),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: Text(item.code,
                            style: TextStyle(fontFamily: 'Menlo')),
                      ),
                    ],
                  ),
                ),
              ));
            },
          );
        }).toList()),
      ),
    );
  }
}
