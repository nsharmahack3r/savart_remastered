import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:savart_remaster/src/app_wrapper.dart';
import 'package:savart_remaster/src/global/widgets/branding.dart';
import 'package:savart_remaster/src/global/widgets/primary_button.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  static const route = "/login";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              const SavartBranding(),
              const SizedBox(height: 20,),
              const Text(
                "Your first step towards financial independence",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 50,),
              const Text(
                "Please enter your mobile number",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  // fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 20,),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                decoration: BoxDecoration(
                  color: Colors.grey.shade800,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                  ),
                  style: const TextStyle(
                    color: Colors.white,
                
                  ),
                  keyboardType: TextInputType.phone,
                ),
              ),
              const Spacer(),
              PrimaryButton(text: 'Continue', ontap: (){
                context.pushReplacement(ApplicationWrapper.route);
              },)
            ],
          ),
        ),
      ),
    );
  }
}
