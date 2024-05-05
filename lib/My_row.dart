import 'package:flutter/material.dart';
import 'package:pro/my_provider.dart';
import 'package:provider/provider.dart';

class my_row extends StatelessWidget {
  bool s = false ;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Light'),
        Switch(value:Provider.of<MProvider>(context).state ,
         onChanged: (val){Provider.of<MProvider>(context , listen: false).changed(val); },
         activeColor: Colors.black,
         activeTrackColor: Colors.black.withOpacity(0.7),
         inactiveThumbColor:  Colors.deepPurpleAccent,
         inactiveTrackColor: Colors.deepPurpleAccent.withOpacity(0.7) ,
         ),
       const Text('Dark'),
      ],
    );
  }
}