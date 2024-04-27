import 'package:flutter/material.dart';

/// ## [ConcaveClipper] Class Documentation
///
/// A custom clipper that creates a concave shape.
///
/// This class extends [CustomClipper<Path>] and is used to create a concave
/// clipping path in Flutter framework.
///
/// ### Parameters
///
/// - `heightFromOrigin`: The height from which the clipping path should start.
/// - `curvedPoint`: The curvature point for creating the concave shape.
///
/// ### Example
///
/// ```dart
/// CustomClipper<Path> clipper = ConcaveClipper(
///   heightFromOrigin: 120,
///   curvedPoint: 50,
/// );
/// ```
class ConcaveClipper extends CustomClipper<Path> {
  /// Constructor for the `ConcaveClipper` class.
  ///
  /// The `heightFromOrigin` parameter specifies the height from which the
  /// clipping path should start, and the `curvedPoint` parameter specifies
  /// the curvature point for creating the concave shape.
  ConcaveClipper({
    this.heightFromOrigin,
    this.curvedPoint,
  });

  /// The height from the origin of the concave shape.
  final double? heightFromOrigin;

  /// The curvature point for creating the concave shape.
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

    Path path = Path();
    path.lineTo(0, fromOrigin);

    Offset curvePoint = Offset(width * 0.5, min);
    Offset endPoint = Offset(width, fromOrigin);

    path.quadraticBezierTo(
        curvePoint.dx, curvePoint.dy, endPoint.dx, endPoint.dy);

    path.lineTo(width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
