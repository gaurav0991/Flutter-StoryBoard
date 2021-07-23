import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';

enum StoryboardThemeKeys { LIGHT, DARK }

class StoryBoardThemes {
  static final ThemeData lightTheme =
      FlexColorScheme.light(scheme: FlexScheme.amber).toTheme;
  static final ThemeData darkTheme = FlexColorScheme.dark(scheme: FlexScheme.amber).toTheme;

  static ThemeData getThemeFromKey(StoryboardThemeKeys themeKey) {
    switch (themeKey) {
      case StoryboardThemeKeys.LIGHT:
        return lightTheme;
      case StoryboardThemeKeys.DARK:
        return darkTheme;
      default:
        return lightTheme;
    }
  }
}
