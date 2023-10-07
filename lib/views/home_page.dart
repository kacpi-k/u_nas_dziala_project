import 'package:flutter/material.dart';
import 'package:u_nas_dziala_project/constants/colors.dart';

final test = 1;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Center(
          child: Text(
            'Mobilny Informator',
            textAlign: TextAlign.center,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
          )
        ],
      ),
      body: Column(
        children: [
          Align(
            alignment: Alignment.center,
            child: Image.asset('icons/herb_icon.png'),
          ),
          const Text('Urząd Miasta Płock'),
          const SizedBox(
            height: 100,
          ),
          Row(
            children: [
              Container(
                width: 100,
                height: 100,
                margin: const EdgeInsets.only(left: 57),
                decoration: BoxDecoration(
                  color: greyCustomColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Image.asset('icons/sprawa_button_icon.png'),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                margin: const EdgeInsets.only(left: 45),
                decoration: BoxDecoration(
                  color: greyCustomColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Image.asset('icons/pomoc_button_icon.png'),
                ),
              ),
            ],
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              Container(
                margin: const EdgeInsets.only(top: 10, left: 40),
                child: const Text(
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                  ),
                  'Chcę załatwić\n sprawę',
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 0, left: 65),
                child: const Text(
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                  ),
                  'Pomoc',
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: 100,
                height: 100,
                margin: const EdgeInsets.only(left: 57, top: 100),
                decoration: BoxDecoration(
                  color: greyCustomColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Image.asset('icons/kontakt_button_icon.png'),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                margin: const EdgeInsets.only(left: 45, top: 100),
                decoration: BoxDecoration(
                  color: greyCustomColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Image.asset('icons/informacje_button_icon.png'),
                ),
              ),
            ],
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              Container(
                margin: const EdgeInsets.only(top: 10, left: 60),
                child: const Text(
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                  ),
                  'Kontakt',
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10, left: 80),
                child: const Text(
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                  ),
                  'Informacje',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
