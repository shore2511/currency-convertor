

import 'package:flutter/material.dart';


class CurrencyConverter extends StatefulWidget{
  const CurrencyConverter({super.key});

  @override
  State<CurrencyConverter> createState()=>
      _CurrencyConverterState();


}

class _CurrencyConverterState extends State<CurrencyConverter>{
  double result= 0;
  final TextEditingController textEditingController = TextEditingController();

  void convert(){
    setState(() {
      result= double.parse(textEditingController.text)*83;
    });
}
  @override
  Widget build(BuildContext context) {

    final border = OutlineInputBorder(
      borderSide: const  BorderSide(
        width: 2.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.circular(5),
    );


    return Scaffold(
        backgroundColor: const Color.fromRGBO(47, 62, 81, 1.0),
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(39, 49, 66, 1.0),
          elevation: 0,
          title:const  Text("Currency Convertor",
            style: TextStyle(
                fontSize: 25,
                color: Colors.white
            ),
          ),
          actions: [
            IconButton(onPressed:(){
              print("appBar icon press");
            }, icon: const Icon(Icons.currency_exchange,
              color: Colors.green,),
              iconSize: 30,
            ) 

          ],

        ),
        body:Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '₹ ${result !=0 ? result.toStringAsFixed(3) : result.toStringAsFixed(1)}',
                style:const TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(30, 255, 3, 1.0),
                ),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    controller: textEditingController,
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500
                    ),
                    decoration: InputDecoration(
                      hintText: "Enter the amount in USD",
                      hintStyle: const TextStyle(
                          color: Colors.black38
                      ),
                      prefixIcon:const Icon(Icons.currency_exchange),
                      prefixIconColor: Colors.black38,
                      filled: true,
                      fillColor: Colors.white60,
                      focusedBorder: border,
                      enabledBorder: border,
                    ),
                    keyboardType:const  TextInputType.numberWithOptions(decimal: true,signed: true),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: ElevatedButton(
                  onPressed:convert,
                  style: ElevatedButton.styleFrom(
                    elevation: (15),
                    backgroundColor: (Colors.black),
                    foregroundColor: (Colors.white),
                    minimumSize: (const Size(double.infinity, 50)),
                    shape: (const StadiumBorder())
                ),
                  child:const  Text("Convert",
                      style:TextStyle(
                          fontSize: 18
                      )),
                ),
              )
            ],
          ) ,
        )

    );
  }
}

