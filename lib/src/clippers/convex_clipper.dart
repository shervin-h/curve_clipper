import 'package:flutter/material.dart';

/// ## [ConvexClipper] Class Documentation
///
/// A custom clipper that creates a convex shape.
///
/// This class extends [CustomClipper<Path>] and is used to create a convex
/// clipping path in Flutter framework.
///
/// ### Parameters
///
/// - `heightFromOrigin`: The height from which the clipping path should start.
///
/// ### Example
///
/// ```dart
/// CustomClipper<Path> clipper = ConvexClipper(
///   heightFromOrigin: 120,
/// );
/// ```
class ConvexClipper extends CustomClipper<Path> {
  /// Constructor for the `ConvexClipper` class.
  ///
  /// The `heightFromOrigin` parameter specifies the height from which the
  /// clipping path should start.
  ConvexClipper({
    this.heightFromOrigin,
  });

  /// The height from the origin of the convex shape.
  final double? heightFromOrigin;

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

    Path path = Path();
    path.lineTo(0, fromOrigin);

    Offset curvePoint = Offset(width * 0.5, height);
    Offset endPoint = Offset(width, fromOrigin);

    // Create quadratic bezier curves to make a convex shape
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
