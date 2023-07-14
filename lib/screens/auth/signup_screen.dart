import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../widgets/button_widget.dart';
import '../../widgets/text_widget.dart';
import '../../widgets/textfield_widget.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final firstnameController = TextEditingController();

  final lastnameController = TextEditingController();

  final mobilenumberController = TextEditingController();

  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  bool check1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_new_rounded,
                      size: 18,
                    ),
                  ),
                  TextWidget(text: 'Sign Up to Get Started!', fontSize: 15),
                  const SizedBox(
                    width: 50,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(
                      text: 'ACCOUNT INFORMATION',
                      fontSize: 18,
                      fontFamily: 'Bold',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: TextFieldWidget(
                          label: 'First Name',
                          textCapitalization: TextCapitalization.words,
                          width: 350,
                          hint: 'Enter first name...',
                          controller: firstnameController),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: TextFieldWidget(
                          label: 'Last Name',
                          textCapitalization: TextCapitalization.words,
                          width: 350,
                          hint: 'Enter last name...',
                          controller: lastnameController),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: TextFieldWidget(
                          label: 'Mobile Number',
                          inputType: TextInputType.number,
                          width: 350,
                          hint: 'Enter mobile number...',
                          controller: mobilenumberController),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: TextFieldWidget(
                          label: 'Email',
                          inputType: TextInputType.emailAddress,
                          width: 350,
                          hint: 'Enter email...',
                          controller: emailController),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: TextFieldWidget(
                          showEye: true,
                          isObscure: true,
                          label: 'Password',
                          width: 350,
                          hint: 'Enter password...',
                          controller: passwordController),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Checkbox(
                          activeColor: primary,
                          value: check1,
                          onChanged: (value) {
                            setState(() {
                              check1 = !check1;
                            });
                          },
                        ),
                        SizedBox(
                          width: 300,
                          child: RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: 'I have read and agree with',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Regular',
                                    color: Colors.black,
                                  ),
                                ),
                                TextSpan(
                                  text: ' Terms of Service, Privacy Notice,',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Bold',
                                    color: primary,
                                  ),
                                ),
                                TextSpan(
                                  text: ' and',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Regualr',
                                    color: Colors.black,
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      ' Personal Data Collection and Disclosure Policy.',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Bold',
                                    color: primary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: ButtonWidget(
                        width: 350,
                        label: 'Signup',
                        onPressed: () {},
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
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
