
import 'package:empty_feature_folder/features/home/presentation/bloc/home_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';

import 'config/routes/app_routes.dart';
import 'config/routes/name_routes.dart';
import 'config/theme/theme.dart';
import 'features/home/presentation/bloc/home_bloc.dart';
import 'features/main/presentation/bloc/main_bloc.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkMode = true;
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<MainBloc>(create: (BuildContext context) => MainBloc()),
        BlocProvider<HomeBloc>(create: (BuildContext context) => HomeBloc()..add(const GetMoviesEvent())),
      ],
      child:  KeyboardDismisser(
        child: MaterialApp(
          themeMode: ThemeMode.dark,
          darkTheme: ThemeData(
            brightness: Brightness.dark,

          ),
          initialRoute: RouteName.mainPage,
          onGenerateRoute: AppRoutes.generateRoute,
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}
