import 'package:flutter/material.dart';

/// ## [WavyCurtainClipper] Class Documentation
///
/// A custom clipper that creates a wavy curtain shape.
///
/// This class extends [CustomClipper<Path>] and is used to create a wavy curtain
/// clipping path in Flutter framework.
///
/// ### Parameters
///
/// - `heightFromOrigin`: The height from which the clipping path should start.
/// - `curvedPoint`: The curvature point for creating the curtain shape it is the minimum point.
///
/// ### Example
///
/// ```dart
/// CustomClipper<Path> clipper = WavyCurtainClipper(
///   heightFromOrigin: 120,
///   curvedPoint: 50,
/// );
/// ```
class WavyCurtainClipper extends CustomClipper<Path> {
  /// Constructor for the `WavyCurtainClipper` class.
  ///
  /// The `heightFromOrigin` parameter specifies the height from which the
  /// clipping path should start, and the `curvedPoint` parameter specifies
  /// the curvature point for creating the curtain shape it is the minimum point.
  const WavyCurtainClipper({
    this.heightFromOrigin,
    this.curvedPoint,
  });

  /// The height from the origin of the curtain shape.
  final double? heightFromOrigin;

  /// The curvature point for creating the curtain shape.
  final double? curvedPoint;

  @override
  Path getClip(Size size) {
    final width = size.width;
    final height = size.height;

    // Calculate the height from the origin relative to the total clipping height
    final fromOrigin = (heightFromOrigin != null &&
            heightFromOrigin! < height &&
            heightFromOrigin! > 0)
        ? heightFromOrigin!
        : 0.75 * height;

    final min =
        (curvedPoint != null && curvedPoint! < fromOrigin && curvedPoint! > 0)
            ? curvedPoint!
            : 0.5 * fromOrigin;

    Offset curvePoint1 = Offset(
      0.25 * width,
      fromOrigin + ((height - fromOrigin) / 2),
    );

    Offset centerPoint = Offset(0.5 * width, min);

    Offset curvePoint2 = Offset(
      0.75 * width,
      fromOrigin + ((height - fromOrigin) / 2),
    );

    Offset endPoint = Offset(width, height);

    Path path = Path();
    path.lineTo(0, height);

    path.quadraticBezierTo(
      curvePoint1.dx,
      curvePoint1.dy,
      centerPoint.dx,
      centerPoint.dy,
    );

    path.quadraticBezierTo(
      curvePoint2.dx,
      curvePoint2.dy,
      endPoint.dx,
      endPoint.dy,
    );

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
