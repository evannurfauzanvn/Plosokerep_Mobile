import 'package:flutter/material.dart';
import 'package:plosokerep_apk/main_page.dart';
import 'package:plosokerep_apk/register.dart';
import 'package:plosokerep_apk/resources/btn/btn.dart';
import 'package:plosokerep_apk/resources/btn/btnsr.dart';
import 'package:plosokerep_apk/resources/clr.dart';
import 'package:plosokerep_apk/resources/frmfld/brdfrmfld.dart';
import 'package:plosokerep_apk/resources/frmfld/scrfrmfld.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<StatefulWidget> createState() => _Login();
}

class _Login extends State<Login> {
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 200),
          child: Column(
            children: [
              SizedBox(width: 90, child: Image.asset("image/logo.png")),
              Container(
                margin: const EdgeInsets.only(top: 20),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    BorderFormField(
                      label: "E-mail / no.telp",
                      controller: _emailcontroller,
                      hintText: "E-mail atau nomor telpon",
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SecureFormField(
                        label: "Password",
                        controller: _passwordcontroller,
                        hintText: "Password"),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Button(
                          text: "Masuk",
                          onpressed: () {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context) {
                              return const HomePage();
                            }));
                          },
                        ),
                        ButtonSilver(
                          text: "Daftar",
                          onpressed: () => Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) {
                            return const Register();
                          })),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
