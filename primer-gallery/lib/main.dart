import 'package:flutter_web/material.dart';
import 'generated/primer.dart';
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
  WidgetItem(this.name, this.description, this.screenFactory);
}

List<WidgetItem> widgetItems = [
  WidgetItem('Alert', 'Inform users of successful or pending actions',
      () => AlertScreen()),
  WidgetItem(
      'Blankslate',
      'Used when there is a lack of content within a page or section',
      () => BlankslateScreen()),
  WidgetItem('Branch Name', 'Git branch name', () => BranchNameScreen()),
  WidgetItem(
      'Label', 'Add contextual metadata to a design', () => LabelScreen()),
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
                  body: item.screenFactory(),
                ),
              ));
            },
          );
        }).toList()),
      ),
    );
  }
}
