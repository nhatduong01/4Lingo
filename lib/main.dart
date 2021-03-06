import 'package:ForLingo/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:ForLingo/home/components/data/week.dart';
import 'package:ForLingo/home/components/data/month.dart';
import 'package:ForLingo/home/components/data/year.dart';
import 'package:ForLingo/db/database_creator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DatabaseCreator().initDB();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.blue),
        //home: HomeScreen(),
        debugShowCheckedModeBanner: false,
        initialRoute: '/', routes: {
      '/': (context) => HomeScreen(),
      '/week': (context) => WeekData(),
      '/month': (context) => MonthData(),
      '/year': (context) => YearData(),
    }
    );
  }
}
