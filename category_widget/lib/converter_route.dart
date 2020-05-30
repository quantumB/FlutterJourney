import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import 'package:category_widget/unit.dart';

class ConverterRoute extends StatelessWidget {
  //color for this [Category]
  final Color color;
  final List<Unit> units;

  const ConverterRoute({
    @required this.color,
    @required this.units,
    }): assert(color != null),
    assert(color != null);

@override
  Widget build(BuildContext context) {
    final unitWidgets = units.map( (Unit unit) {
      return Container(
        color: color,
        margin: EdgeInsets.all(8.0),
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text(
              unit.name,
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              'Convertion: ${unit.conversion}',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ],
        ),
      );
    }).toList();

    return ListView(
      children: unitWidgets
    );
  }
}

