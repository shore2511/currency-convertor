import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slider_scroll/Currency_converter.dart';

void main(){
  runApp(const app());
}


class app extends StatelessWidget{
  const app({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CurrencyConverter(),
    );
  }
}
