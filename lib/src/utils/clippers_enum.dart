/// ## [ClipperMode] Enum Documentation
///
/// An enumeration representing different clipping modes for custom clipper widgets.
///
/// This enum defines the following clipping modes:
/// - `wavy`: Represents a wavy clipping mode.
/// - `convex`: Represents a convex clipping mode.
/// - `concave`: Represents a concave clipping mode.
///
/// ### Example
///
/// ```dart
/// ClipperMode mode = ClipperMode.convex;
/// ```
enum ClipperMode {
  /// Represents a wavy clipping mode.
  wavy,

  /// Represents a wavy sin clipping mode.
  wavySin,

  /// Represents a wavy sin clipping mode.
  wavyCurtain,

  /// Represents a convex clipping mode.
  convex,

  /// Represents a concave clipping mode.
  concave,
}
