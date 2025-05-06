import 'package:flutter/material.dart';
import 'package:furniswap/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Furni Swap',
      theme: ThemeData(
          fontFamily: "pop",
          splashColor: Colors.brown.withOpacity(0.1),
          textButtonTheme: TextButtonThemeData(
            style: ButtonStyle(
              overlayColor:
                  WidgetStateProperty.all(Colors.brown.withOpacity(0.1)),
            ),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
              overlayColor:
                  WidgetStateProperty.all(Colors.brown.withOpacity(0.1)),
            ),
          ),
          iconButtonTheme: IconButtonThemeData(
            style: ButtonStyle(
              overlayColor:
                  WidgetStateProperty.all(Colors.brown.withOpacity(0.1)),
            ),
          ),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            splashColor: Colors.brown.withOpacity(0.1),
          ),
          appBarTheme: AppBarTheme(
            surfaceTintColor: Colors.black12,
          )),
      home: SplashScreen(),
    );
  }
}
