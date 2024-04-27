/// ## Curve Clipper Library Documentation
///
/// This library provides custom clipper functionality for Flutter applications.
///
/// It includes the following components:
/// - [ClipperMode]: An enum representing different clipping modes.
/// - [CustomClipperWidget]: A widget that applies custom clipping to its child widget based on the specified mode.
/// - Custom clipper classes: Implementations of custom clipper classes for various clipping shapes, such as wavy, convex, and concave shapes.
///
/// ### Usage
///
/// Import this library to access custom clipper functionality in your Flutter application.
///
/// ```dart
/// import 'package:custom_clipper/custom_clipper.dart';
/// ```
library curve_clipper;

export 'src/clippers/clippers.dart';
export 'src/utils/clippers_enum.dart';
export 'src/widgets/custom_clipper_widget.dart';
