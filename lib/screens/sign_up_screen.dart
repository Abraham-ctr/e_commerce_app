import 'package:e_commerce_app/styles/app_styles.dart';
import 'package:e_commerce_app/styles/media.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  final _formKey = GlobalKey<FormState>();

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
                child: Text("Sign up", style: AppStyles.headlineText1,)
              ),
              const SizedBox(height: 70),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                      textCapitalization: TextCapitalization.sentences,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 25),
                        labelText: "Name",
                        hintText: "Mr. Muffin",
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        filled: true,
                        fillColor: AppStyles.textFormFieldColor
                      ),
                    ),
                  const SizedBox(height: 7,),
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
                  const SizedBox(height: 7,),
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
                  const SizedBox(height: 15,),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Already have an account?", style: TextStyle(fontSize: 20),),
                      SizedBox(width: 5,),
                      Icon(Icons.arrow_forward, color: Colors.red, size: 23,)
                    ]
                  ),
          
                  const SizedBox(height: 30,),
          
                  Container(
                    width: 400,
                    decoration: const BoxDecoration(
                      // color: Colors.green,
                    ),
                    child: FloatingActionButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                      backgroundColor: Colors.red,
                      child: const Text("SIGN UP", style: TextStyle(color: Colors.white, fontSize: 20),)
                    ),
                  )
                ]
                )
              ),
          
            const SizedBox(height: 100),
            Container(
              color: Colors.green,
              child: Column(
                children: [
                  const Align( alignment: Alignment.center, child: Center(child: Text("Or sign up with social account", style: TextStyle(fontSize: 20)))),
                  
                  const SizedBox(height: 20,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //images go here
                      Container(
                        width: 100,
                        height: 80,
                        decoration: const BoxDecoration(
                          // color: Colors.red,
                          image: DecorationImage(image: AssetImage(AppMedia.google))
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        width: 100,
                        height: 80,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          // image: DecorationImage(image: AssetImage(AppMedia.facebook))
                        ),
                      ),
                      
                    ]
                  )
                ]
              )
            )
          ],),
        ),
      ),
    );
  }
}
