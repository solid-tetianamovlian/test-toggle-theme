// Use of this source code is governed by the Apache License, Version 2.0
// that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:test_theme_toggle/metrics_theme/config/metrics_colors.dart';
import 'package:test_theme_toggle/metrics_theme/model/metrics_text/style/metrics_text_style.dart';
import 'package:test_theme_toggle/metrics_theme/model/metrics_theme_data.dart';
import 'package:test_theme_toggle/metrics_theme/model/metrics_widget_theme_data.dart';
import 'package:test_theme_toggle/metrics_theme/widgets/button/theme/attention_level/metrics_button_attention_level.dart';
import 'package:test_theme_toggle/metrics_theme/widgets/button/theme/style/metrics_button_style.dart';
import 'package:test_theme_toggle/metrics_theme/widgets/button/theme/theme_data/metrics_button_theme_data.dart';

// ignore_for_file: public_member_api_docs

/// Stores the theme data for light metrics theme.
class LightMetricsThemeData extends MetricsThemeData {
  static final inputFocusedBorder = OutlineInputBorder(
    borderSide: BorderSide(
      color: MetricsColors.gray[400],
    ),
  );

  static final TextStyle hintStyle = MetricsTextStyle(
    color: MetricsColors.gray[300],
    fontSize: 16.0,
    lineHeightInPixels: 20.0,
  );

  /// The default [TextStyle] for a dropdown component within the application.
  static final TextStyle _defaultDropdownTextStyle = MetricsTextStyle(
    fontSize: 16.0,
    color: MetricsColors.gray[900],
    lineHeightInPixels: 20.0,
  );

  /// A [TextStyle] of the dialog title.
  static final TextStyle _dialogTitleTextStyle = TextStyle(
    color: MetricsColors.gray[900],
    fontSize: 26.0,
    fontWeight: FontWeight.w500,
  );

  /// Creates the light theme with the default widget theme configuration.
  LightMetricsThemeData()
      : super(
          metricsWidgetTheme: MetricsWidgetThemeData(
            primaryColor: MetricsColors.green[500],
            accentColor: MetricsColors.green[900],
            backgroundColor: MetricsColors.white,
            textStyle: TextStyle(
              color: MetricsColors.green[500],
              fontWeight: FontWeight.bold,
            ),
          ),
          metricsButtonTheme: MetricsButtonThemeData(
            buttonAttentionLevel: MetricsButtonAttentionLevel(
              positive: MetricsButtonStyle(
                color: MetricsColors.green[500],
                hoverColor: MetricsColors.green[600],
                labelStyle: MetricsTextStyle(
                  color: MetricsColors.gray[900],
                  fontSize: 16.0,
                  lineHeightInPixels: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              neutral: MetricsButtonStyle(
                color: MetricsColors.gray[100],
                hoverColor: MetricsColors.gray[200],
                labelStyle: TextStyle(
                  color: MetricsColors.gray[900],
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              negative: MetricsButtonStyle(
                color: MetricsColors.orange[500],
                hoverColor: MetricsColors.orange[600],
                labelStyle: MetricsTextStyle(
                  color: MetricsColors.gray[900],
                  fontSize: 16.0,
                  lineHeightInPixels: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              inactive: MetricsButtonStyle(
                color: MetricsColors.gray[100],
                labelStyle: MetricsTextStyle(
                  color: MetricsColors.gray[200],
                  lineHeightInPixels: 20,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        );
}
