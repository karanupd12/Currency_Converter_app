import 'package:flutter/material.dart';
import 'package:currency_converter/currency_converter_material_page.dart';       //these will get automatically imorported once we mention classes


void main() {
  runApp(const MyApp()); //runApp method(present in L1 package) is used to run anything
} 

//Types of widgets(1,2 are UI related widget)
// 1. StatelessWidget
// 2. StatefulWidget
// 3. InheritedWidget(not required in this app)

//first we should understand what is state - state refers to any data that will decide how your widgets will look like, rendered, and behave.

//Stateless widget - state is immutable(i.e; state does'nt change)
//statefull widget - state is mutable(i.e; state changes through users actions)

//use const with the constructor to improve performance

//key - key is a class that helps flutter identify and differentiate between widgets, by passing the key to the constructor you explicitely assign a specific key to the specific widget instance 

//here i have inherited stateless widget properties in MyApp class

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CCMaterialPage1(),
      debugShowCheckedModeBanner: false,
    ); 
  }
}

//widget tree - a series a widgets to build an APP i.e; (MaterialApp >> Scaffold >> Centre/column - text/image/any content)

//Types of designs(for making app organised and beautiful-themes, navigation, localisation, etc) (their are multiple but these are 2 main)
// 1. Material design - by google - for using it just import the L1 package and return the 'MaterialApp()' inside the above overridden method
// 2. Cupertino design - by apple - same as above but for ios look, return 'CupertinoApp()'

//Scaffold - scaffold tells the flutter that the programme has used material design , so it provide the programmer all the capabilities to add everything related to a material design(it gives access to headers , footers and all that stuff)


//from 9:22:31
