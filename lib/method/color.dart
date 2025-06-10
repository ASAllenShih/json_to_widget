import 'package:flutter/material.dart';

Color? methodColor(dynamic color, {BuildContext? buildContext}) {
  if (color is String) {
    if (color.startsWith('#')) {
      color = color.substring(1);
      final int? hexColor = int.tryParse(color, radix: 16);
      if (hexColor != null) {
        return Color(hexColor);
      }
    }
    if (buildContext != null) {
      final ColorScheme colorScheme = Theme.of(buildContext).colorScheme;
      switch (color) {
        case 'error':
          return colorScheme.error;
        case 'errorContainer':
          return colorScheme.errorContainer;
        case 'inversePrimary':
          return colorScheme.inversePrimary;
        case 'inverseSurface':
          return colorScheme.inverseSurface;
        case 'onError':
          return colorScheme.onError;
        case 'onErrorContainer':
          return colorScheme.onErrorContainer;
        case 'onInverseSurface':
          return colorScheme.onInverseSurface;
        case 'onPrimary':
          return colorScheme.onPrimary;
        case 'onPrimaryContainer':
          return colorScheme.onPrimaryContainer;
        case 'onPrimaryFixed':
          return colorScheme.onPrimaryFixed;
        case 'onPrimaryFixedVariant':
          return colorScheme.onPrimaryFixedVariant;
        case 'onSecondary':
          return colorScheme.onSecondary;
        case 'onSecondaryContainer':
          return colorScheme.onSecondaryContainer;
        case 'onSecondaryFixed':
          return colorScheme.onSecondaryFixed;
        case 'onSecondaryFixedVariant':
          return colorScheme.onSecondaryFixedVariant;
        case 'onSurface':
          return colorScheme.onSurface;
        case 'onSurfaceVariant':
          return colorScheme.onSurfaceVariant;
        case 'onTertiary':
          return colorScheme.onTertiary;
        case 'onTertiaryContainer':
          return colorScheme.onTertiaryContainer;
        case 'onTertiaryFixed':
          return colorScheme.onTertiaryFixed;
        case 'onTertiaryFixedVariant':
          return colorScheme.onTertiaryFixedVariant;
        case 'outline':
          return colorScheme.outline;
        case 'outlineVariant':
          return colorScheme.outlineVariant;
        case 'primary':
          return colorScheme.primary;
        case 'primaryContainer':
          return colorScheme.primaryContainer;
        case 'primaryFixed':
          return colorScheme.primaryFixed;
        case 'primaryFixedDim':
          return colorScheme.primaryFixedDim;
        case 'scrim':
          return colorScheme.scrim;
        case 'secondary':
          return colorScheme.secondary;
        case 'secondaryContainer':
          return colorScheme.secondaryContainer;
        case 'secondaryFixed':
          return colorScheme.secondaryFixed;
        case 'secondaryFixedDim':
          return colorScheme.secondaryFixedDim;
        case 'shadow':
          return colorScheme.shadow;
        case 'surface':
          return colorScheme.surface;
        case 'surfaceBright':
          return colorScheme.surfaceBright;
        case 'surfaceContainer':
          return colorScheme.surfaceContainer;
        case 'surfaceContainerHigh':
          return colorScheme.surfaceContainerHigh;
        case 'surfaceContainerHighest':
          return colorScheme.surfaceContainerHighest;
        case 'surfaceContainerLow':
          return colorScheme.surfaceContainerLow;
        case 'surfaceContainerLowest':
          return colorScheme.surfaceContainerLowest;
        case 'surfaceDim':
          return colorScheme.surfaceDim;
        case 'surfaceTint':
          return colorScheme.surfaceTint;
        case 'tertiary':
          return colorScheme.tertiary;
        case 'tertiaryContainer':
          return colorScheme.tertiaryContainer;
        case 'tertiaryFixed':
          return colorScheme.tertiaryFixed;
        case 'tertiaryFixedDim':
          return colorScheme.tertiaryFixedDim;
      }
    }
  }
  return null;
}
