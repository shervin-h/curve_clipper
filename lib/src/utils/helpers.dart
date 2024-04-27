import 'package:flutter/material.dart';

import '../../curve_clipper.dart';

/// ## [convertModeToClipper] Function Documentation
///
/// A helper function that converts a [ClipperMode] enum value into a corresponding [CustomClipper<Path>] object.
///
/// This function takes the following parameters:
/// - `mode`: The [ClipperMode] enum value representing the desired clipping mode.
/// - `heightFromOrigin`: The height from which the clipping path should start (applicable for certain clipping modes).
/// - `curvedPoint`: The curvature point for concave clipping mode (applicable only for [ClipperMode.concave]).
///
/// The function returns a [CustomClipper<Path>] object based on the provided [mode].
///
/// ### Example
///
/// ```dart
/// CustomClipper<Path> clipper = convertModeToClipper(
///   mode: ClipperMode.wavy,
///   heightFromOrigin: 120,
/// );
/// ```
CustomClipper<Path> convertModeToClipper({
  required ClipperMode mode,
  double? heightFromOrigin,
  double? curvedPoint,
}) {
  switch (mode) {
    case ClipperMode.wavy:
      return WavyClipper(
        heightFromOrigin: heightFromOrigin,
      );
    case ClipperMode.wavySin:
      return WavySinClipper(
        heightFromOrigin: heightFromOrigin,
      );
    case ClipperMode.wavyCurtain:
      return WavyCurtainClipper(
        heightFromOrigin: heightFromOrigin,
        curvedPoint: curvedPoint,
      );
    case ClipperMode.convex:
      return ConvexClipper(
        heightFromOrigin: heightFromOrigin,
      );
    case ClipperMode.concave:
      return ConcaveClipper(
        heightFromOrigin: heightFromOrigin,
        curvedPoint: curvedPoint,
      );
    default:
      return ConvexClipper(
        heightFromOrigin: heightFromOrigin,
      );
  }
}
