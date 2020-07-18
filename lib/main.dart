import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/pages/home.dart';

import 'bloc/color_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BlocProvider<ColorBloc>(
            create: (context) => ColorBloc(),
            child: BlocBuilder<ColorBloc, Color>(builder: (context, state) {
              return Home();
            })));
  }
}
