import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
import 'package:furniswap/data/api_services/api_sevice.dart';
import 'package:furniswap/data/repository/auth_RepoImpl.dart';
import 'package:furniswap/presentation/manager/signup/sign_up_cubit.dart';
import 'package:furniswap/presentation/screens/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final dio = Dio();
  final apiService = ApiService(dio);
  final authRepo = AuthRepoImpl(apiService);

  runApp(MyApp(authRepo: authRepo));
}

class MyApp extends StatelessWidget {
  final AuthRepoImpl authRepo;
  const MyApp({super.key, required this.authRepo});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => SignUpCubit(authRepo)),
      ],
      child: MaterialApp(
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
          ),
        ),
        home: SplashScreen(),
      ),
    );
  }
}
