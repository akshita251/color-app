import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum ColorEvents { red, blue, green, yellow, black, white }

class ColorBloc extends Bloc<ColorEvents, Color> {
  ColorBloc() : super(Colors.black);

  @override
  Stream<Color> mapEventToState(ColorEvents event) async* {
    switch (event) {
      case ColorEvents.black:
        yield Colors.black;
        break;

      case ColorEvents.red:
        yield Colors.red;
        break;

      case ColorEvents.blue:
        yield Colors.blue;
        break;

      case ColorEvents.green:
        yield Colors.green;
        break;

      case ColorEvents.yellow:
        yield Colors.yellow;
        break;

      case ColorEvents.white:
        yield Colors.white;
        break;
    }
  }
}
