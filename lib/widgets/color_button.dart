import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/bloc/color_bloc.dart';

class ColorButton extends StatelessWidget {
  final Color color;
  final ColorEvents event;
  ColorButton({this.color, this.event});
  @override
  Widget build(BuildContext context) {
    return FlatButton(
        child: CircleAvatar(
          radius: 45.0,
          backgroundColor: color,
        ),
        onPressed: () {
          context.bloc<ColorBloc>().add(event);
          Navigator.pop(context);
        });
  }
}
