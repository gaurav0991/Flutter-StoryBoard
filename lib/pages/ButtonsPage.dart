import 'package:flutter/material.dart';
import 'package:storyboard/widget_library/buttons/gradient_button_blue.dart';
import 'package:storyboard/widget_library/buttons/green_gradient_button.dart';
import 'package:storyboard/widget_library/buttons/raised_button.dart';
class ButtonsPage extends StatefulWidget {
  const ButtonsPage({ Key key }) : super(key: key);

  @override
  _ButtonsPageState createState() => _ButtonsPageState();
}

class _ButtonsPageState extends State<ButtonsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GradientButtonBlue(buttonText: "Click Me",onTapGradientButton: (){},width: 97,),
        SizedBox(height: 20,),
        GradientButtonGreen(buttonText: "Click Me",onTap: (){}, buttonTextStyle: null,),
        SizedBox(height: 20,),
        CustomisedButton()
      ],
    ),
      
    );
  }
}