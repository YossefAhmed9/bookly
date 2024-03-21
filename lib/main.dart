import 'package:bookly/constants.dart';
import 'package:bookly/features/presentation/HomePage/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'core/cubit/cubit.dart';
import 'features/presentation/Splash/splash_screen.dart';
import 'features/presentation/styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => BooklyCubit(),
          lazy: true,
        )
      ],
      child: MaterialApp(color: mainColor,
        darkTheme: ThemeData(textTheme: GoogleFonts.montserratTextTheme(),
            useMaterial3: true),
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home: const HomePage(),
      ),
    );
  }
}
