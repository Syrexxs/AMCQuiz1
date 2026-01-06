import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(  
    title: 'Week 1 - All 8 Widgets',
    theme: ThemeData(primarySwatch: Colors.teal),
    home: const HomeScreen(),
  );
  //#1 MaterialApp is the very main screen of the app, where the functionalities works and navigation, without it, the app wont work at all

}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold( 
    //#2 Scaffold  It provides a consistent framework for organizing common UI elements like app bars, navigation drawers, and floating action buttons, saving developers from manually building these layouts from scratch. 
    appBar: AppBar(title: const Text('All Widgets')),
    //#3 AppBar  is a core Material Design widget that provides a toolbar at the top of the app screen, typically used for branding, screen titles, navigation, and actions.
    body: Center(  
      child: Container(  
        padding: const EdgeInsets.all(20),
        child: Column(  
          children: [
            Row(
            //#5 Row - the Row is a layout of widgets used to display children in a horizontal array it is one of the most frequency used widgets for building user interfaces, such as side by side like icons, buttons, or labels.   
              children: [
                const Icon(Icons.star),
                const Text('Flutter'),
                //#4 Text('Flutter') - the Text are the widgets of the most fundamental widget in flutter it is used to display the string like using this('flutter')  
              ],
            ),
          ],
        ),
        //#6 Column is a layout widgets where you organize from top  to bottom
      ),
      //#8 Container is a  versatile widget that acts like a multi-purpose box. Its primary purpose is to combine common painting, positioning, and sizing of a single child widget.
    ),
    //#7 Center  widget is a fundamental layout widget that centers its child both horizontally and vertically within the full extent of the space available to it.
  );

}