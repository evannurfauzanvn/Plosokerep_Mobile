import 'package:flutter/material.dart';
import 'package:plosokerep_apk/register.dart';
import 'package:plosokerep_apk/resources/btn/btn.dart';
import 'package:plosokerep_apk/resources/fmtx/fmtx.dart';
import 'package:plosokerep_apk/resources/fmtx/sftmtx.dart';

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
                    border: Border.all(width: 2),
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Formtext(
                      controller: _emailcontroller,
                      hintText: "E-mail atau nomor telpon",
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SecureFormtext(
                        controller: _passwordcontroller, hintText: "Password"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Button(
                          text: "Masuk",
                          onpressed: () {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context) {
                              return const Register();
                            }));
                          },
                        ),
                        Button(
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
