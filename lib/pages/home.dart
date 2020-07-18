import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/bloc/color_bloc.dart';
import 'package:food_app/widgets/color_settings.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void _showSettingsPanel() {
      showModalBottomSheet(
          context: context,
          builder: (context) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 5.0),
              child: Container(
                child: ColorSettings(),
              ),
            );
          });
    }

    return Scaffold(
      backgroundColor: context.bloc<ColorBloc>().state,
      appBar: AppBar(
        title: Text('Colors'),
        backgroundColor: Colors.grey[700],
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.color_lens),
              iconSize: 40.0,
              onPressed: () {
                _showSettingsPanel();
              })
        ],
      ),
    );
  }
}
