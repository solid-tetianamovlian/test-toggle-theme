// Use of this source code is governed by the Apache License, Version 2.0
// that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_theme_toggle/metrics_theme/state/theme_notifier.dart';

/// Creates the [ChangeNotifier]s and injects them, using the [MultiProvider] widget.
class InjectionContainer extends StatefulWidget {
  /// A child widget to display.
  final Widget child;

  /// Creates the [InjectionContainer].
  ///
  /// The [child] must not be null.
  const InjectionContainer({
    Key key,
    @required this.child,
  })  : assert(child != null),
        super(key: key);

  @override
  _InjectionContainerState createState() => _InjectionContainerState();
}

class _InjectionContainerState extends State<InjectionContainer> {
  /// Returns the current system's theme brightness.
  Brightness get platformBrightness {
    return WidgetsBinding.instance.window.platformBrightness;
  }

  /// The [ChangeNotifier] of the theme type.
  ThemeNotifier _themeNotifier;

  @override
  void initState() {
    super.initState();

    _themeNotifier = ThemeNotifier(brightness: platformBrightness);
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: _themeNotifier),
      ],
      child: widget.child,
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
