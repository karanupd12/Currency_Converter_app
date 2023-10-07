// ignore_for_file: unnecessary_const, no_logic_in_create_state


//in case of stateful widget - we first have to create a class which extends a statefulwidget and then we create a override constructor(let us change our widgets and variables, gives access to multiple methods)
//then we will create main(which has scaffold and whole body) class which extends that state constructor 

import 'package:flutter/material.dart';



class CCMaterialPage1 extends StatefulWidget{
  const CCMaterialPage1({super.key});

  @override
  State<CCMaterialPage1> createState(){
    return CCMP();
  } 
}

class CCMP extends State<CCMaterialPage1>{


  

  double result = 0;          //our final answer
  final TextEditingController textEditingController = TextEditingController();
    //takes value from text field and executes in children->text

  @override
  Widget build(BuildContext context) {
    //BuildContext is a class which tells the location of a widget in a widget tree to flutter
    //IT IS KIND OF THE MOST IMPORTANT MAIN FUNCTION IN OUR APPPLICATION

    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: const Text('Currency Converter\nUSD - INR', style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w600),),
        //centerTitle: true, >>> for aligning title at centre
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //setting text at the centre of a column(vertically centre)
      
          children: [

            Text(
              '\u{20B9} ${result.toStringAsFixed(2)}', // \u{20B9} = unicode for rupee symbol
              style: const TextStyle(fontSize: 31, fontWeight: FontWeight.w800, color: Colors.white),
            ),


           Padding(
              padding: const EdgeInsets.fromLTRB(10,17,10,17),

              child: TextField( //first create text field and then wrap it with padding / widgets whatever
                
                controller: textEditingController, //through this controller we will have access to all the input values

                style: const TextStyle(color: Colors.white , fontSize: 20),
            
                //this is for the decoration of widget
                decoration: const InputDecoration(
                  hintText: "USD Amount" ,
                  hintStyle: TextStyle(color: Colors.white60 , fontSize: 20),
                  prefixIcon: Icon(Icons.monetization_on , color: Colors.green),
                  filled: true,
                  fillColor: Color.fromRGBO(61, 60, 60, 4),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width:1, style: BorderStyle.solid),
                    borderRadius: BorderRadius.all(Radius.elliptical(50, 50))
                  ),
                ),
            
                //this is for making the keyboard only number type
                keyboardType: TextInputType.number,
              ),
            ),


            //TextButton >>> appears like a text
            Padding(
              padding: const EdgeInsets.fromLTRB(10,5,10,5),
              child: TextButton(
                onPressed: () { 
                  setState(() {      //setstate fun tells the widget tree that anything written inside it needs a rebuilt(immutable)
                    result = double.parse(textEditingController.text)*83.12;  
                  });
                },
                
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white60,        
                  foregroundColor: Colors.black,        
                  minimumSize: const Size(double.infinity , 40),         
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),   
                ),
            
                  
                child: const Text('Convert', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20)),
              ),
            )

          ]    
        ),
      ),
    );
  }
}





















/*

///THIS IS HOW WE DO USING STATELESSWIDGET(INCOMPLETE AS WE CAN NOT CREATE A STATE HERE)


class CCMaterialPage2 extends StatelessWidget {
  const CCMaterialPage2({super.key});

  
  @override
  Widget build(BuildContext context) {
    //BuildContext is a class which tells the location of a widget in a widget tree to flutter

    double result = 0;          //our final answer
    final TextEditingController textEditingController = TextEditingController();
    //takes value from text field and executes in children>text

    return Scaffold(
      backgroundColor: Colors.black,// Color.fromARGB(255, 255, 253, 253)-for grey

      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: const Text('Currency Converter', style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w600),),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //setting text at the centre of a column(vertically centre)
      
          children: [

            Text(
              result.toString() , //because we cant print int value inside text
              style: const TextStyle(fontSize: 31, fontWeight: FontWeight.w800, color: Colors.white),
            ),


           Padding(
              padding: const EdgeInsets.fromLTRB(10,17,10,17),

              child: TextField( //first create text field and then wrap it with padding / widgets whatever
                
                controller: textEditingController, //through this controller we will have access to all the input values

                style: const TextStyle(color: Colors.white , fontSize: 20),
            
                //this is for the decoration of widget
                decoration: const InputDecoration(
                  hintText: "USD Amount" ,
                  hintStyle: TextStyle(color: Colors.white60 , fontSize: 20),
                  prefixIcon: Icon(Icons.monetization_on , color: Colors.green),
                  filled: true,
                  fillColor: Color.fromRGBO(61, 60, 60, 4),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width:1, style: BorderStyle.solid),
                    borderRadius: BorderRadius.all(Radius.elliptical(50, 50))
                  ),
                ),
            
                //this is for making the keyboard only number type
                keyboardType: TextInputType.number,
              ),
            ),


            //TextButton >>> appears like a text
            Padding(
              padding: const EdgeInsets.fromLTRB(10,5,10,5),
              child: TextButton(
                onPressed: () { 
                    result = double.parse(textEditingController.text)*83.12;
                  
                },
                
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white60,        
                  foregroundColor: Colors.black,        
                  minimumSize: const Size(double.infinity , 40),         
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),   
                ),
            
                  
                child: const Text('Convert', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20)),
              ),
            )

          ]    
        ),
      ),
    );
  }
  
}
*/