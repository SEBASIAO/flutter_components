import 'package:flutter/material.dart';
import 'package:flutter_components/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    final Map<String, String> formValues = {
      "first_name": "Sebastian",
      "last_name": "Garcia",
      "email": "sebastiangarcia792@gmail.com",
      "password": "asdasd",
      "role": "admin",
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text("Inputs y Forms"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Form(
              key: myFormKey,
              onChanged: () {},
              child: Column(
                children: [
                  CustomInputField(
                    formProperty: "first_name",
                    formValues: formValues,
                    labelText: "Nombre",
                    hintText: "Nombre del usuario",
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomInputField(
                    formProperty: "last_name",
                    formValues: formValues,
                    labelText: "Apellido",
                    hintText: "Apellido del usuario",
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomInputField(
                    formProperty: "email",
                    formValues: formValues,
                    labelText: "Email",
                    hintText: "Email del usuario",
                    keyBoardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomInputField(
                    formProperty: "password",
                    formValues: formValues,
                    labelText: "Contraseña",
                    hintText: "Contraseña del usuario",
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  DropdownButtonFormField<String>(
                    value: "Admin",
                    items: const [
                      DropdownMenuItem(
                        value: "Admin",
                        child: Text("Admin"),
                      ),
                      DropdownMenuItem(
                        value: "User",
                        child: Text("User"),
                      ),
                      DropdownMenuItem(
                        value: "God",
                        child: Text("God"),
                      ),
                    ],
                    onChanged: (value) {
                      formValues["role"] = value ?? "Admin";
                    },
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (!myFormKey.currentState!.validate()) {
                        print("Formulario invalido");
                        return;
                      }
                      FocusManager.instance.primaryFocus?.unfocus();
                      print(formValues);
                    },
                    child: const SizedBox(
                        width: double.infinity,
                        child: Center(child: Text("Guardar"))),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
