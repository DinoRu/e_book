import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  colorScheme: lightColorScheme,
  fontFamily: 'Nobile'
);


ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  colorScheme: darkColorScheme,
  fontFamily: "Nobile"
);


const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(4282801553),
  surfaceTint: Color(4282801553),
  onPrimary: Color(4294967295),
  primaryContainer: Color(4292469503),
  onPrimaryContainer: Color(4278196548),
  secondary: Color(4283915889),
  onSecondary: Color(4294967295),
  secondaryContainer: Color(4292666105),
  onSecondaryContainer: Color(4279507756),
  tertiary: Color(4285683058),
  onTertiary: Color(4294967295),
  tertiaryContainer: Color(4294825978),
  onTertiaryContainer: Color(4280947500),
  error: Color(4290386458),
  onError: Color(4294967295),
  errorContainer: Color(4294957782),
  onErrorContainer: Color(4282449922),
  background: Color(4294637823),
  onBackground: Color(4279900960),
  surface: Color(4294637823),
  onSurface: Color(4279900960),
  surfaceVariant: Color(4292993772),
  onSurfaceVariant: Color(4282664527),
  outline: Color(4285888384),
  outlineVariant: Color(4291151568),
  shadow: Color(4278190080),
  scrim: Color(4278190080),
  inverseSurface: Color(4281282614),
  inversePrimary: Color(4289775359),
);

const darkColorScheme= ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294769407),
      surfaceTint: Color(4289775359),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4290169599),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294769407),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4291087073),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294965754),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4293181410),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      background: Color(4279374616),
      onBackground: Color(4293059305),
      surface: Color(4279374616),
      onSurface: Color(4294967295),
      surfaceVariant: Color(4282664527),
      onSurfaceVariant: Color(4294769407),
      outline: Color(4291414740),
      outlineVariant: Color(4291414740),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293059305),
);