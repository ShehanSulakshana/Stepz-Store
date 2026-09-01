import 'package:flutter/material.dart';
import 

;
import 'features/home/presentation/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Lato',
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 222, 205, 47),
          primary: const Color.fromARGB(255, 222, 205, 47),
        ),
        textTheme: TextTheme(
          bodyLarge: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          titleMedium: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          bodySmall: TextStyle(fontWeight: FontWeight.w300, fontSize: 15),
        ),
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          prefixIconColor: Color.fromRGBO(119, 119, 119, 1),
        ),
      ),
      home: const Text("Home Page"),
    );
    // return ChangeNotifierProvider(
    //   create: (context) => ,
    //   child: MaterialApp(
    //     title: 'Flutter Demo',
    //     theme: ThemeData(
    //       fontFamily: 'Lato',
    //       colorScheme: ColorScheme.fromSeed(
    //         seedColor: const Color.fromARGB(255, 222, 205, 47),
    //         primary: const Color.fromARGB(255, 222, 205, 47),
    //       ),
    //       textTheme: TextTheme(
    //         bodyLarge: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    //         titleMedium: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
    //         bodySmall: TextStyle(fontWeight: FontWeight.w300, fontSize: 15),
    //       ),
    //       inputDecorationTheme: InputDecorationTheme(
    //         hintStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
    //         prefixIconColor: Color.fromRGBO(119, 119, 119, 1),
    //       ),
    //     ),
    //     home: const HomePage(),
    //   ),
    // );
  }
}
