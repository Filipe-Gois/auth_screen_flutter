import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tela_login_desafio_flutterando/screens/login_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          titleLarge: GoogleFonts.workSans(fontSize: 30),
          bodyLarge: GoogleFonts.workSans(fontSize: 22),
          bodyMedium: GoogleFonts.workSans(fontSize: 20),
          bodySmall: GoogleFonts.workSans(fontSize: 16),
        ),
      ),
      initialRoute: "/login",
      routes: {
        "/login": (context) => const LoginPage(),
      },
    );
  }
}
