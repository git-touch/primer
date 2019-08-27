import 'package:flutter_web/material.dart';
import 'generated/primer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Label('default label', theme: PrimerTheme.primary),
            Label('default label', theme: PrimerTheme.primary, outline: true),
            StateLabel(StateLabelStatus.issueOpened),
            StateLabel(StateLabelStatus.issueClosed),
            StateLabel(StateLabelStatus.pullMerged),
            Alert('Flash message goes here.'),
            BranchName('a_new_feature_branch'),
            Blankslate(
              child: Column(
                children: <Widget>[
                  BlankslateTitle('This is a blank slate'),
                  Text(
                      'Use it to provide information when no dynamic content exists.'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
