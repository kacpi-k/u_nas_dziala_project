import 'package:flutter/material.dart';
import 'package:u_nas_dziala_project/constants/routes.dart';
import 'package:u_nas_dziala_project/views/co_zalatwic/co_zalatwic_dokumenty.dart';
import 'package:u_nas_dziala_project/views/co_zalatwic/co_zalatwic_nieruchomosc.dart';
import 'package:u_nas_dziala_project/views/co_zalatwic/co_zalatwic_pojazdy.dart';
import 'package:u_nas_dziala_project/views/home_page.dart';
import 'package:u_nas_dziala_project/views/zalatwic_sprawe.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFe7151e)),
        useMaterial3: true,
        fontFamily: 'Poppins',
      ),
      home: const HomePage(),
      routes: {
        zalatwicSpraweRoute: (context) => const ZalatwiadnieSprawy(),
        coZalatwicPojazdy: (context) => const Pojazdy(),
        coZalatwicDokumenty: (context) => const Dokumenty(),
        coZalatwicNieruchomosci: (context) => const Nieruchomosci(),
      },
    );
  }
}
