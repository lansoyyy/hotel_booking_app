import 'package:flutter/material.dart';
import 'package:hotel/screens/auth/signup_screen.dart';
import 'package:hotel/screens/home_screen.dart';
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
                height: 100,
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
                        onPressed: () {
                          forgotPassword();
                        },
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
                width: 300,
                height: 55,
                radius: 100,
                label: 'Login',
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const HomeScreen()));
                },
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
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const SignupScreen()));
                    },
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

  forgotPassword() {
    showDialog(
      context: context,
      builder: ((context) {
        final formKey = GlobalKey<FormState>();
        final TextEditingController emailController = TextEditingController();

        return AlertDialog(
          title: TextWidget(
            fontFamily: 'Medium',
            text: 'Forgot Password',
            fontSize: 14,
            color: Colors.black,
          ),
          content: Form(
            key: formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFieldWidget(
                  hintColor: Colors.black,
                  hint: 'Email',
                  textCapitalization: TextCapitalization.none,
                  inputType: TextInputType.emailAddress,
                  label: 'Email',
                  controller: emailController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter an email address';
                    }
                    final emailRegex =
                        RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
                    if (!emailRegex.hasMatch(value)) {
                      return 'Please enter a valid email address';
                    }
                    return null;
                  },
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: (() {
                Navigator.pop(context);
              }),
              child: TextWidget(
                fontFamily: 'Medium',
                text: 'Cancel',
                fontSize: 12,
                color: Colors.black,
              ),
            ),
            TextButton(
              onPressed: (() async {
                // if (formKey.currentState!
                //     .validate()) {
                //   try {
                //     Navigator.pop(context);
                //     await FirebaseAuth.instance
                //         .sendPasswordResetEmail(
                //             email:
                //                 emailController.text);
                //     showToast(
                //         'Password reset link sent to ${emailController.text}');
                //   } catch (e) {
                //     String errorMessage = '';

                //     if (e is FirebaseException) {
                //       switch (e.code) {
                //         case 'invalid-email':
                //           errorMessage =
                //               'The email address is invalid.';
                //           break;
                //         case 'user-not-found':
                //           errorMessage =
                //               'The user associated with the email address is not found.';
                //           break;
                //         default:
                //           errorMessage =
                //               'An error occurred while resetting the password.';
                //       }
                //     } else {
                //       errorMessage =
                //           'An error occurred while resetting the password.';
                //     }

                //     showToast(errorMessage);
                //     Navigator.pop(context);
                //   }
                // }
              }),
              child: TextWidget(
                fontFamily: 'Bold',
                text: 'Continue',
                fontSize: 14,
                color: Colors.black,
              ),
            ),
          ],
        );
      }),
    );
  }
}
