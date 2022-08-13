import 'package:flutter/material.dart';

import '../themes/app_theme.dart';

class CustomCard1 extends StatelessWidget {
  const CustomCard1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.photo_library_outlined,
              color: AppTheme.primaryColor,
            ),
            title: Text("Titulo"),
            subtitle: Text(
                "Id labore velit ex quis qui sit culpa aliqua ullamco nulla consectetur eiusmod. Incididunt eu labore sunt nulla fugiat reprehenderit cillum cillum. Deserunt est ut laborum aliqua magna magna ipsum culpa aliqua aliqua dolore. Proident deserunt consequat in commodo enim. Aute amet sint sint duis nulla tempor commodo. Velit eu aliqua id culpa fugiat occaecat amet. Quis mollit commodo anim velit reprehenderit labore sit."),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {}, child: const Text("Cancel")),
                TextButton(onPressed: () {}, child: const Text("Ok")),
              ],
            ),
          )
        ],
      ),
    );
  }
}
