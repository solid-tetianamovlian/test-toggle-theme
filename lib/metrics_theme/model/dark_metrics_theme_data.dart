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

/// Stores the theme data for dark metrics theme.
class DarkMetricsThemeData extends MetricsThemeData {
  static final inputFocusedBorder = OutlineInputBorder(
    borderSide: BorderSide(
      color: MetricsColors.gray[300],
    ),
  );

  static final TextStyle hintStyle = MetricsTextStyle(
    color: MetricsColors.gray[400],
    fontSize: 16.0,
    lineHeightInPixels: 20,
  );

  /// The default [TextStyle] for dropdown within the application.
  static const TextStyle _defaultDropdownTextStyle = MetricsTextStyle(
    color: MetricsColors.white,
    fontSize: 16.0,
    lineHeightInPixels: 20.0,
  );

  /// A [TextStyle] of the dialog title.
  static const TextStyle _dialogTitleTextStyle = TextStyle(
    color: MetricsColors.white,
    fontSize: 26.0,
    fontWeight: FontWeight.w500,
  );

  /// Creates the dark theme with the default widget theme configuration.
  DarkMetricsThemeData()
      : super(
          metricsWidgetTheme: MetricsWidgetThemeData(
            primaryColor: MetricsColors.green[500],
            accentColor: MetricsColors.green[900],
            backgroundColor: MetricsColors.gray[800],
            textStyle: TextStyle(
              color: MetricsColors.gray[100],
              fontWeight: FontWeight.bold,
            ),
          ),
          metricsButtonTheme: MetricsButtonThemeData(
            buttonAttentionLevel: MetricsButtonAttentionLevel(
              positive: MetricsButtonStyle(
                color: MetricsColors.green[500],
                hoverColor: MetricsColors.green[600],
                labelStyle: TextStyle(
                  color: MetricsColors.gray[900],
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              neutral: MetricsButtonStyle(
                color: MetricsColors.gray[700],
                hoverColor: MetricsColors.gray[800],
                labelStyle: const TextStyle(
                  color: MetricsColors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              negative: MetricsButtonStyle(
                color: MetricsColors.orange[500],
                hoverColor: MetricsColors.orange[600],
                labelStyle: TextStyle(
                  color: MetricsColors.gray[900],
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              inactive: MetricsButtonStyle(
                color: MetricsColors.gray[700],
                labelStyle: TextStyle(
                  color: MetricsColors.gray[800],
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        );
}
