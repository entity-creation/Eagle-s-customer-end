import 'package:eagles_customer_end/application/bloc/navBloc/bloc/navigation_bloc.dart';
import 'package:eagles_customer_end/application/navigation/routes.dart';
import 'package:eagles_customer_end/presentation/homeScreen.dart';
import 'package:eagles_customer_end/presentation/jobsScreen.dart';
import 'package:eagles_customer_end/presentation/landingPage.dart';
import 'package:eagles_customer_end/presentation/loginPage.dart';
import 'package:eagles_customer_end/presentation/makePost.dart';
import 'package:eagles_customer_end/presentation/signupPage.dart';
import 'package:eagles_customer_end/presentation/welcomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NavigationBloc()..add(changeIndex(newIndex: 0)),
        )
      ],
      child: MaterialApp(
        title: "Eagle",
        debugShowCheckedModeBanner: false,
        initialRoute: "/",
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
    );
  }
}
