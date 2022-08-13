import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final options = const ["Deadpool", "SpiderMan", "Thor", "Iron Man"];
  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Tipo 2"),
        elevation: 10,
        backgroundColor: Colors.redAccent,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          title: Text(options[index]),
          trailing: const Icon(
            Icons.arrow_forward_ios_outlined,
            color: Colors.redAccent,
          ),
          onTap: () {
            final hero = options[index];
            print(hero);
          },
        ),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: options.length,
      ),
    );
  }
}
