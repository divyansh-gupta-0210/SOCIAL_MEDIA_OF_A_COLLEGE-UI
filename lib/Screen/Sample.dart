import 'package:flutter/material.dart';

class Sample extends StatelessWidget {
  final List<String> name;
  final List<String> description;

  const Sample({Key key, this.name, this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Text(
                'jn',
              )
            ],
          ),
        ),
      ),
    );
  }
}
