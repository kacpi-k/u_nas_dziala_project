import 'package:flutter/material.dart';
import 'package:u_nas_dziala_project/constants/routes.dart';
import 'package:u_nas_dziala_project/views/Pomoc/kontakt.dart';
import 'package:u_nas_dziala_project/views/Pomoc/nie_moge_znal.dart';
import 'package:u_nas_dziala_project/views/Pomoc/pomoc_g%C5%82%C3%B3wna.dart';
import 'package:u_nas_dziala_project/views/bilet/bilet_aktywny.dart';
import 'package:u_nas_dziala_project/views/bilet/bilet_przed.dart';
import 'package:u_nas_dziala_project/views/co_zalatwic/co_zalatwic_dokumenty.dart';
import 'package:u_nas_dziala_project/views/co_zalatwic/co_zalatwic_nieruchomosc.dart';
import 'package:u_nas_dziala_project/views/co_zalatwic/co_zalatwic_pojazdy.dart';
import 'package:u_nas_dziala_project/views/do_pobrania/download_nieruchomosci.dart';
import 'package:u_nas_dziala_project/views/do_pobrania/dowod_download.dart';
import 'package:u_nas_dziala_project/views/do_pobrania/nabycie_pojazdu.dart';
import 'package:u_nas_dziala_project/views/dowod_osobisty/dokumentacja_dowod.dart';
import 'package:u_nas_dziala_project/views/dowod_osobisty/dowod_waznosc.dart';
import 'package:u_nas_dziala_project/views/dowod_osobisty/dowod_zguba.dart';
import 'package:u_nas_dziala_project/views/dowod_osobisty/uzupelnienie_dowod.dart';
import 'package:u_nas_dziala_project/views/dowod_osobisty/wyrobienie_dowodu.dart';
import 'package:u_nas_dziala_project/views/home_page.dart';
import 'package:u_nas_dziala_project/views/nieruchomo%C5%9Bci/nieruchomosci_czy_posiadasz.dart';
import 'package:u_nas_dziala_project/views/nieruchomo%C5%9Bci/nieruchomosci_info.dart';
import 'package:u_nas_dziala_project/views/nieruchomo%C5%9Bci/podatek_nieruchomosc.dart';
import 'package:u_nas_dziala_project/views/pojazd/brak_dokument.dart';
import 'package:u_nas_dziala_project/views/pojazd/brak_dowodu.dart';
import 'package:u_nas_dziala_project/views/pojazd/brak_karty.dart';
import 'package:u_nas_dziala_project/views/pojazd/nabycie_pojazdu.dart';
import 'package:u_nas_dziala_project/views/pojazd/posiadasz_dokumentacje.dart';
import 'package:u_nas_dziala_project/views/pojazd/rejestracja_pojazd.dart';
import 'package:u_nas_dziala_project/views/pojazd/zbycie_pojazdu.dart';
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
        dowodZguba: (context) => const DowodZguba(),
        dowodWaznosc: (context) => const DowodWaznosc(),
        dowodWyrob: (context) => const WyrobienieDowodu(),
        homePage: (context) => const HomePage(),
        nieruchomoscKupno: (context) => const PodatekNieruchomosc(),
        nieruchomoscCzyPosiadasz: (context) => const NieruchomoscCzyPosiadasz(),
        nieruchomoscInfo: (context) => const NieruchomoscInfo(),
        rejestracjaPojazdu: (context) => const RejestracjaPojazdu(),
        nabyciePojazdu: (context) => const NabyciePojazdu(),
        zbyciePojazdu: (context) => const ZbyciePojazdu(),
        dokumentyPojazd: (context) => const CzyPosiadaszDokPojazd(),
        biletPrzed: (context) => const BiletPrzed(),
        biletAktywny: (context) => QueuePage(),
        kontakt: (context) => const Kontakt(),
        pomoc: (context) => const PomocGlowna(),
        rejestracjaPojazd: (context) => const RejestracjaPojazdu(),
        brakDokumentuPojazd: (context) => const BrakDokumPojazd(),
        brakDowoduPojazd: (context) => const BrakDowoduPojazd(),
        uzupelnienieDowod: (context) => const UzupelnienieDowod(),
        dowodDokumentacja: (context) => const DowodDokumentacja(),
        brakKartyPojazdu: (context) => const BrakKartyPojazd(),
        wyrobienieDowodu: (context) => const WyrobienieDowodu(),
        dowodDownload: (context) => const DowodDownload(),
        nieruchomosciDownload: (context) => const NieruchomosciDownload(),
        pojazdDownload: (context) => const NabyciePojazduDownload(),
        nieMogeZnalezcSprawy: (context) => const PomocNieMogeZnal(),
      },
    );
  }
}
