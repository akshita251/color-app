import 'package:flutter/material.dart';
import 'package:food_app/bloc/color_bloc.dart';
import 'package:food_app/widgets/color_button.dart';

class ColorSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: GridView.count(
        crossAxisCount: 4,
        childAspectRatio: 1.0,
        children: <Widget>[
          ColorButton(
            color: Colors.red,
            event: ColorEvents.red,
          ),
          ColorButton(
            color: Colors.blue,
            event: ColorEvents.blue,
          ),
          ColorButton(
            color: Colors.green,
            event: ColorEvents.green,
          ),
          ColorButton(
            color: Colors.yellow,
            event: ColorEvents.yellow,
          ),
        ],
      ),
    );
  }
}
