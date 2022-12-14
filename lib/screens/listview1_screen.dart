import 'package:flutter/material.dart';
import 'package:flutter_components/themes/app_theme.dart';

class ListView1Screen extends StatelessWidget {
  final options = const ["Deadpool", "SpiderMan", "Thor"];
  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Tipo 1"),
      ),
      body: ListView(
        children: [
          ...options
              .map((hero) => ListTile(
                    title: Text(hero),
                    trailing: const Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: AppTheme.primaryColor,
                    ),
                  ))
              .toList()
        ],
      ),
    );
  }
}
