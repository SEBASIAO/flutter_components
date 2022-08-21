import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Inputs y Forms"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [
                TextFormField(
                  autofocus: false,
                  initialValue: "",
                  textCapitalization: TextCapitalization.words,
                  onChanged: (value) {
                    print(value);
                  },
                  validator: (value) {
                    if (value == null) return "asd";
                    return value.isEmpty ? "No debe estar vacio" : null;
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: const InputDecoration(
                      hintText: "User name",
                      labelText: "Name",
                      helperText: "Solo letras",
                      suffixIcon: Icon(Icons.group_outlined),
                      icon: Icon(Icons.assignment_turned_in),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            topLeft: Radius.circular(10)),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red))),
                ),
              ],
            ),
          ),
        ));
  }
}
