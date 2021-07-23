import 'package:flutter/material.dart';
import 'package:storyboard/utils/list_item_widget.dart';
import 'package:storyboard/widget_library/widget_list_data.dart';

class WidgetLibrarySublist extends StatefulWidget {
  final List widgetLibraryTitle;

  WidgetLibrarySublist(this.widgetLibraryTitle);

  @override
  _WidgetLibrarySublistState createState() => _WidgetLibrarySublistState();
}

class _WidgetLibrarySublistState extends State<WidgetLibrarySublist> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        for (var i = 0; i < widget.widgetLibraryTitle.length; i++)
          GestureDetector(
            onTap: () {
              print("object");
              Navigator.pushNamed(context,"/"+widget.widgetLibraryTitle[i]);
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(top: 15),
              child: ListItemWidget(widget.widgetLibraryTitle[i]),
            ),
          )
      ],
    );
  }
}
