import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kamoma_mobile/screens/screens.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KAMOMA',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
        primaryColor: Color.fromARGB(255, 247, 247, 247),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          foregroundColor: Colors.black,
        ),
      ),
      home: GetStartedScreen(),
      routes: {
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegisterScreen(),
        '/get-started': (context) => GetStartedScreen(),
        '/home': (context) => HomeScreen(),
      },
    );
  }
}
