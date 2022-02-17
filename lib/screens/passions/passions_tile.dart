import 'package:flutter/material.dart';
import 'package:who_am_i/services/dbmodel.dart';

class PassionTile extends StatelessWidget {
  final MainModel passions;
  PassionTile(this.passions);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.00),
      child: Container(
        color: Colors.blue[50],
        child: ListTile(
            leading: CircleAvatar(
              radius: 25.0,
              backgroundColor: Colors.brown[100],
              //backgroundImage: AssetImage('lot.jpg'),
            ),
            title: Text(passions.passion_name.toString()),
            subtitle: Text(passions.passion_description.toString())),
      ),
    );
  }
}
