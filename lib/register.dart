import 'package:flutter/material.dart';
import 'package:plosokerep_apk/login.dart';
import 'package:plosokerep_apk/main_page.dart';
import 'package:plosokerep_apk/resources/btn/btn.dart';
import 'package:plosokerep_apk/resources/btn/btnsr.dart';
import 'package:plosokerep_apk/resources/fmtx/fmtx.dart';
import 'package:plosokerep_apk/resources/fmtx/sftmtx.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<StatefulWidget> createState() => _Register();
}

class _Register extends State<Register> {
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _phonecontroller = TextEditingController();
  final TextEditingController _frontnamecontroller = TextEditingController();
  final TextEditingController _lastnamecontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  final TextEditingController _confirmpasswordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 150,left: 16,right: 16),
          child: Column(
            children: [
              SizedBox(width: 80, child: Image.asset("image/logo.png")),
              Container(
                margin: const EdgeInsets.only(top: 20),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(width: 2,color: Colors.black),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Column(
                  children: [
                    Formtext(controller: _emailcontroller, hintText: "E-mail"),
                    const SizedBox(height: 10,),
                    Formtext(controller: _phonecontroller, hintText: "Nomor telpon"),
                    const SizedBox(height: 10,),
                    Formtext(controller: _frontnamecontroller, hintText: "Nama depan"),
                    const SizedBox(height: 10,),
                    Formtext(controller: _lastnamecontroller, hintText: "Nama belakang (opsional)"),
                    const SizedBox(height: 10,),
                    SecureFormtext(controller: _passwordcontroller, hintText: "Password"),
                    const SizedBox(height: 10,),
                    SecureFormtext(controller: _confirmpasswordcontroller, hintText: "Confirm password"),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Button(
                          text: "Daftar",
                          onpressed: () {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context) {
                              return const HomePage();
                            }));
                          },
                        ),
                        ButtonSilver(
                          text: "Masuk",
                          onpressed: () => Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) {
                            return const Login();
                          })),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
