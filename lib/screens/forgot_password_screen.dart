import 'package:e_commerce_app/styles/app_styles.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Align(
                alignment: Alignment.topLeft,
                child: Icon(Icons.arrow_back_ios_new_rounded, size: 30),
              ),

              const SizedBox(height: 30),

              const Align(
                alignment: Alignment.topLeft,
                child: Text("Forgot password", style: AppStyles.headlineText1,),
              ),

              const SizedBox(height: 70),

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
                        fillColor: AppStyles.textFormFieldColor,
                        errorText: "Not a valid email address. Should be your @email.com"
                      ),
                      keyboardType: TextInputType.emailAddress,
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
