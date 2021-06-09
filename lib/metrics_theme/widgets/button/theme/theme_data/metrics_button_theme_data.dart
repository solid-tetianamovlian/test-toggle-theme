// Use of this source code is governed by the Apache License, Version 2.0
// that can be found in the LICENSE file.

import 'package:test_theme_toggle/metrics_theme/model/attention_level_theme_data.dart';
import 'package:test_theme_toggle/metrics_theme/widgets/button/theme/attention_level/metrics_button_attention_level.dart';

/// The class that stores the theme data for application buttons.
class MetricsButtonThemeData
    extends AttentionLevelThemeData<MetricsButtonAttentionLevel> {
  /// Creates a new instance of the [MetricsButtonThemeData].
  ///
  /// If [buttonAttentionLevel] is null, an empty [MetricsButtonAttentionLevel]
  /// instance is used.
  const MetricsButtonThemeData({
    MetricsButtonAttentionLevel buttonAttentionLevel,
  }) : super(buttonAttentionLevel ?? const MetricsButtonAttentionLevel());
}
