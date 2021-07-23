import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:storyboard/themeProvider.dart';

class AppBarPage extends StatefulWidget {
  const AppBarPage({Key key}) : super(key: key);

  @override
  _AppBarPageState createState() => _AppBarPageState();
}

class _AppBarPageState extends State<AppBarPage> {
  bool _isDarkMode = false;
  @override
  Widget build(BuildContext context) {
    final p = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Dark Mode",
            style: TextStyle(fontSize: 21),
          ),
          Center(
            child: Switch(
                value: p.DarkMode,
                onChanged: (v) async {
                  p.changeMode();
                }),
          )
        ],
      ),
    );
  }
}
