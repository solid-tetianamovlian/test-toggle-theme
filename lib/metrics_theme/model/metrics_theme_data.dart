// Use of this source code is governed by the Apache License, Version 2.0
// that can be found in the LICENSE file.

import 'package:test_theme_toggle/metrics_theme/model/metrics_widget_theme_data.dart';
import 'package:test_theme_toggle/metrics_theme/widgets/button/theme/theme_data/metrics_button_theme_data.dart';

/// Stores the theme data for all metrics widgets.
class MetricsThemeData {
  static const MetricsWidgetThemeData _defaultWidgetThemeData =
      MetricsWidgetThemeData();

  /// A theme of the metrics widgets used to set the default colors
  /// and text styles.
  final MetricsWidgetThemeData metricsWidgetTheme;

  /// A theme of the inactive metrics widgets used when there are no data
  /// for metrics.
  final MetricsWidgetThemeData inactiveWidgetTheme;

  /// A theme for the buttons.
  final MetricsButtonThemeData metricsButtonTheme;

  /// Creates the [MetricsThemeData].
  const MetricsThemeData({
    MetricsWidgetThemeData metricsWidgetTheme,
    MetricsWidgetThemeData inactiveWidgetTheme,
    MetricsButtonThemeData metricsButtonTheme,
  })  : inactiveWidgetTheme = inactiveWidgetTheme ?? _defaultWidgetThemeData,
        metricsWidgetTheme = metricsWidgetTheme ?? _defaultWidgetThemeData,
        metricsButtonTheme =
            metricsButtonTheme ?? const MetricsButtonThemeData();
}
