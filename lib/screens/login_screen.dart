import 'package:e_commerce_app/styles/app_styles.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Align(
                alignment: Alignment.topLeft,
                child: Icon(Icons.arrow_back_ios_new_rounded, size: 30),
              ),

              const SizedBox(height: 30),

              const Align(
                alignment: Alignment.topLeft,
                child: Text("Login", style: AppStyles.headlineText1,),
              ),

              const SizedBox(height: 70),

              //form section
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 25),
                        labelText: "Email",
                        hintText: "example@gmail.com",
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        filled: true,
                        fillColor: AppStyles.textFormFieldColor
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 7),
                    TextFormField(
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 25),
                        labelText: "Password",
                        hintText: "Password",
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        filled: true,
                        fillColor: AppStyles.textFormFieldColor
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("Forgot your password?", style: TextStyle(fontSize: 20),),
                        SizedBox(width: 5,),
                        Icon(Icons.arrow_forward, color: Colors.red, size: 23,)
                      ]
                    ),
                    const SizedBox(height: 30),
                    ],
                  )
              ),

              //google and facebook login
              Container(
                child: Column(
                  children: [

                  ],
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}