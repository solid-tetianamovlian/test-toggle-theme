import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_theme_toggle/injector/widget/injection_container.dart';
import 'package:test_theme_toggle/metrics_theme/config/metrics_colors.dart';
import 'package:test_theme_toggle/metrics_theme/config/text_field_config.dart';
import 'package:test_theme_toggle/metrics_theme/config/text_style_config.dart';
import 'package:test_theme_toggle/metrics_theme/model/dark_metrics_theme_data.dart';
import 'package:test_theme_toggle/metrics_theme/model/light_metrics_theme_data.dart';
import 'package:test_theme_toggle/metrics_theme/state/theme_notifier.dart';
import 'package:test_theme_toggle/metrics_theme/widgets/button/widgets/metrics_inactive_button.dart';
import 'package:test_theme_toggle/metrics_theme/widgets/button/widgets/metrics_negative_button.dart';
import 'package:test_theme_toggle/metrics_theme/widgets/button/widgets/metrics_neutral_button.dart';
import 'package:test_theme_toggle/metrics_theme/widgets/button/widgets/metrics_positive_button.dart';
import 'package:test_theme_toggle/metrics_theme/widgets/metrics_theme_builder.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return InjectionContainer(
      child: Builder(
        builder: (context) =>
            MetricsThemeBuilder(builder: (context, themeNotifier) {
          final isDark = themeNotifier?.isDark ?? true;

          return MaterialApp(
            themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
            theme: ThemeData(
              fontFamily: TextStyleConfig.defaultFontFamily,
              brightness: Brightness.light,
              primarySwatch: Colors.teal,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              primaryColorBrightness: Brightness.light,
              buttonColor: Colors.green,
              // buttonTheme: const ButtonThemeData(
              //   height: DimensionsConfig.buttonHeight,
              //   splashColor: Colors.transparent,
              //   highlightColor: Colors.transparent,
              // ),
              scaffoldBackgroundColor: MetricsColors.white,
              inputDecorationTheme: InputDecorationTheme(
                filled: true,
                fillColor: MetricsColors.gray[100],
                hoverColor: MetricsColors.gray[100],
                border: TextFieldConfig.border,
                enabledBorder: TextFieldConfig.border,
                focusedBorder: LightMetricsThemeData.inputFocusedBorder,
                errorStyle: TextFieldConfig.errorStyle,
                errorBorder: TextFieldConfig.errorBorder,
                focusedErrorBorder: TextFieldConfig.errorBorder,
                hintStyle: LightMetricsThemeData.hintStyle,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
              ),
              dialogTheme: const DialogTheme(elevation: 0.0),
            ),
            darkTheme: ThemeData(
              fontFamily: TextStyleConfig.defaultFontFamily,
              brightness: Brightness.dark,
              primarySwatch: Colors.teal,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              primaryColorBrightness: Brightness.dark,
              // buttonTheme: const ButtonThemeData(
              //   height: DimensionsConfig.buttonHeight,
              //   splashColor: Colors.transparent,
              //   highlightColor: Colors.transparent,
              // ),
              scaffoldBackgroundColor: MetricsColors.gray[800],
              inputDecorationTheme: InputDecorationTheme(
                filled: true,
                fillColor: MetricsColors.gray[900],
                hoverColor: MetricsColors.black,
                border: TextFieldConfig.border,
                enabledBorder: TextFieldConfig.border,
                focusedBorder: DarkMetricsThemeData.inputFocusedBorder,
                errorStyle: TextFieldConfig.errorStyle,
                errorBorder: TextFieldConfig.errorBorder,
                focusedErrorBorder: TextFieldConfig.errorBorder,
                hintStyle: DarkMetricsThemeData.hintStyle,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
              ),
              dialogTheme: const DialogTheme(elevation: 0.0),
            ),
            home: Scaffold(
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Consumer<ThemeNotifier>(
                      builder: (context, model, _) {
                        return Consumer<ThemeNotifier>(
                          builder: (context, model, _) {
                            return IconButton(
                              icon: model.isDark
                                  ? Icon(Icons.wb_sunny)
                                  : Icon(Icons.night_shelter),
                              onPressed: () => model.toggleTheme(),
                            );
                          },
                        );
                      },
                    ),
                    MetricsPositiveButton(
                      label: 'Positive button',
                      onPressed: () {
                        print('Positive button');
                      },
                    ),
                    MetricsInactiveButton(
                      label: 'Inactive button',
                      onPressed: () {
                        print('Inactive button');
                      },
                    ),
                    MetricsNegativeButton(
                      label: 'Negative button',
                      onPressed: () {
                        print('Negative button');
                      },
                    ),
                    MetricsNeutralButton(
                      label: 'Neutral button',
                      onPressed: () {
                        print('Neutral button');
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
