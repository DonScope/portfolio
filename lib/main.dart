import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/Controller/MainAppProvider.dart';
import 'package:portfolio/View/Homepage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ 
       ChangeNotifierProvider(create: (context) => Mainappprovider(),)
      ],
      child: ScreenUtilInit(
        designSize: const Size(1440, 1024),
        minTextAdapt: true,
        child: MaterialApp(
            title: 'Portifolio',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
              useMaterial3: true,
            ),
            debugShowCheckedModeBanner: false,
            home: const Homepage()),
      ),
    );
  }
}
