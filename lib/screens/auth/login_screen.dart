import 'package:flutter/material.dart';
import 'package:hotel/widgets/button_widget.dart';
import 'package:hotel/widgets/text_widget.dart';

import '../../widgets/textfield_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 150,
              ),
              TextWidget(
                fw: FontWeight.w900,
                text: 'LOGO HERE',
                fontSize: 32,
                fontFamily: 'Bold',
              ),
              const SizedBox(
                height: 50,
              ),
              TextWidget(
                color: Colors.black,
                text: 'Login Now',
                fontSize: 24,
                fontFamily: 'Medium',
              ),
              const SizedBox(
                height: 5,
              ),
              TextWidget(
                color: Colors.grey,
                text: 'Please enter the details below to continue.',
                fontSize: 12,
                fontFamily: 'Regular',
              ),
              const SizedBox(
                height: 20,
              ),
              TextFieldWidget(
                label: 'Email',
                borderColor: Colors.grey,
                controller: emailController,
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  TextFieldWidget(
                    showEye: true,
                    isObscure: true,
                    label: 'Password',
                    borderColor: Colors.grey,
                    controller: passwordController,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: TextButton(
                        onPressed: () {},
                        child: TextWidget(
                          color: Colors.orange,
                          text: 'Forgot Password?',
                          fontSize: 12,
                          fontFamily: 'Medium',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              ButtonWidget(
                height: 55,
                radius: 100,
                label: 'Login',
                onPressed: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextWidget(
                    color: Colors.grey,
                    text: "Doesn't have an Account?",
                    fontSize: 12,
                    fontFamily: 'Medium',
                  ),
                  TextButton(
                    onPressed: () {},
                    child: TextWidget(
                      color: Colors.orange,
                      text: 'Signup Here',
                      fontSize: 12,
                      fontFamily: 'Medium',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
