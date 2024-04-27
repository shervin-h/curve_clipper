import 'package:flutter/material.dart';

import '../../curve_clipper.dart';
import '../utils/helpers.dart';

/// ## [CustomClipperWidget] Class Documentation
///
/// A widget that applies custom clipping to its child widget based on the specified mode.
///
/// This widget wraps its child with a [ClipPath] widget using a custom clipper based on the provided [mode].
///
/// ### Parameters
///
/// - `child`: The widget to be clipped.
/// - `mode`: The clipping mode to be applied. Defaults to [ClipperMode.convex].
/// - `heightFromOrigin`: The height from which the clipping path should start (applicable for certain clipping modes).
/// - `curvePoint`: The curvature point for concave clipping mode (applicable only for [ClipperMode.concave]).
///
/// ### Example
///
/// ```dart
/// CustomClipperWidget(
///   child: Container(
///     color: Colors.blue,
///     width: 200,
///     height: 200,
///     child: Center(
///       child: Text(
///         'Custom Clipper Widget Example',
///         style: TextStyle(color: Colors.white),
///       ),
///     ),
///   ),
///   mode: ClipperMode.concave,
///   heightFromOrigin: 100,
///   curvePoint: 50,
/// )
/// ```
class CustomClipperWidget extends StatelessWidget {
  /// Constructor for the `CustomClipperWidget` class.
  ///
  /// The `child` parameter specifies the widget to be clipped,
  /// and the optional parameters allow customization of the clipping behavior.
  const CustomClipperWidget({
    required this.child,
    this.mode = ClipperMode.convex,
    this.heightFromOrigin,
    this.curvePoint,
    super.key,
  });

  /// The widget to be clipped.
  final Widget child;

  /// The clipping mode to be applied.
  final ClipperMode mode;

  /// The height from which the clipping path should start (applicable for certain clipping modes).
  final double? heightFromOrigin;

  /// The curvature point for concave clipping mode (applicable only for [ClipperMode.concave]).
  final double? curvePoint;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: convertModeToClipper(
        mode: mode,
        heightFromOrigin: heightFromOrigin,
        curvedPoint: curvePoint,
      ),
      child: child,
    );
  }
}
