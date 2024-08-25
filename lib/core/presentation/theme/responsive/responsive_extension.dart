import 'responsive.dart';

/// Extension to use values using [num]
extension Responsive on num {
  /// [getter] to get [responsive fontSize] according to device width
  double get fontSize => SizeConfig.textMultiplier * this;
}
