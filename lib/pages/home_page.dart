import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:storyboard/pages/widget_list_container.dart';
import 'package:storyboard/widget_library/widget_list_data.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List widgetHeadingList = [
    {
      "title":"AppBar",
      "subtitle":["AppBar with Title","AppBar without title"]
    },
    {
      "title":"Buttons",
      "subtitle":["Blue Gradient Button","Green Gradient Button","Raised Button","Outlined Button"]
    }
  ];

  bool isBigScreen = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    isBigScreen = MediaQuery.of(context).size.width >= 400 &&
        MediaQuery.of(context).size.width >= 900;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Demo Flutter",
        ),
      ),

      body: SafeArea(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: widgetHeadingList.length,
          padding: EdgeInsets.all(0),
          itemBuilder: (context, i) {
            return WidgetListContainer(widgetHeadingList[i]["subtitle"], widgetLibraryTitle: widgetHeadingList[i]["title"]);
          },
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
