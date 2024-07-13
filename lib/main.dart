import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/cubit/home_cubit/cubit.dart';
import 'core/network/remote/dio_helper.dart';
import 'core/utils/routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DioHelper.init();

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
          create: (context) => BooklyCubit()..FetchAllBooks()..FetchBookDetails(),
          lazy: true,
        ),
      ],
      child: MaterialApp.router(debugShowCheckedModeBanner: false,
        routerConfig: AppRoutes.router,
        title: 'Flutter Demo',
        theme: ThemeData.dark(useMaterial3: true),

      ),
    );
  }

}
