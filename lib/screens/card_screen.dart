import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card Screen"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCard1(),
          CustomCard2(
            imageUrl: 'https://rickandmortyapi.com/api/character/avatar/1.jpeg',
            imageDesc: 'Hola soy Rick',
          ),
          CustomCard2(
            imageUrl: 'https://rickandmortyapi.com/api/character/avatar/2.jpeg',
            imageDesc: 'Hola soy Morty',
          ),
        ],
      ),
    );
  }
}
