import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:storyboard/LoginPage.dart';
import 'package:storyboard/pages/AppBarPage.dart';
import 'package:storyboard/pages/ButtonsPage.dart';
import 'package:storyboard/themeProvider.dart';
import 'package:storyboard/utils/colors.dart';
import 'package:flutter_login/theme.dart';
import 'package:storyboard/widget_library/themes.dart';

import 'pages/home_page.dart';

void main() {
  runApp(MultiProvider(
    providers:[
          ChangeNotifierProvider(create: (context) => ThemeProvider()),

    ],
    child: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getSharedData();
  }

  var d=null;
  void getSharedData() async {
    SharedPreferences s = await SharedPreferences.getInstance();
    d=s.getBool("darkMode");

  }

  @override
  Widget build(BuildContext context) {
    final p=Provider.of<ThemeProvider>(context);
    return MaterialApp(
        routes: {'/AppBar with Title': (context) => AppBarPage(),"/Blue Gradient Button":(context) => ButtonsPage()},
        title: 'Flutter Demo',
        theme:p.DarkMode?StoryBoardThemes.lightTheme:StoryBoardThemes.darkTheme,
        debugShowCheckedModeBanner: false,
        home: LoginPage());
  }
}
