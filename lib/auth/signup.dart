import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  //var
  static const String routeName = "/Signup";
  SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  //var
  GlobalKey<FormState> formKey = GlobalKey();

  late String username;

  late String mail;

  late String password;

  late String naissance;

  late String address;

  //build
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: formKey,
        child: ListView(
          children: [
            Container(
                width: double.infinity,
                margin: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                child: Image.asset("Assets/minecraft.jpg",
                    width: 460, height: 215)),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: TextFormField(
                onSaved: (newValue) {
                  username = newValue!;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return "username cannot be empty";
                  }
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "Username"),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: TextFormField(
                onSaved: (newValue) {
                  mail = newValue!;
                },
                validator: (value) {
                  RegExp regex = RegExp(
                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
                  if (value!.isEmpty) {
                    return "email cannot be empty";
                  } else if (!regex.hasMatch(value)) {
                    return "Email invalid";
                  }
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "Email"),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: TextFormField(
                onSaved: (newValue) {
                  password = newValue!;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return "password cannot be empty";
                  }
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "Mot de passe"),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: TextFormField(
                onSaved: (newValue) {
                  naissance = newValue!;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return "naissance cannot be empty";
                  }
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Année de naissance"),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 20),
              child: TextFormField(
                onSaved: (newValue) {
                  address = newValue!;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return "address cannot be empty";
                  }
                },
                maxLines: 4,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Adresse de facturation"),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: const Text("S'inscrire"),
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text("Information"),
                            content: Text(
                                " Username = $username \n Email = $mail \n Password = $password \n Naissance = $naissance \n Address = $address"),
                          );
                        },
                      );
                    }
                  },
                ),
                const SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  child: const Text("Annuler"),
                  onPressed: () {},
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
