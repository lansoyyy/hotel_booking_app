import 'package:flutter/material.dart';
import 'package:hotel/widgets/button_widget.dart';
import 'package:hotel/widgets/text_widget.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/background.jpg',
              ),
              fit: BoxFit.cover),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 30),
              child: SafeArea(
                child: TextWidget(
                  text: 'Logo here',
                  fontSize: 12,
                ),
              ),
            ),
            const Expanded(child: SizedBox()),
            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.85),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  TextWidget(
                    fw: FontWeight.w900,
                    text: 'Are You',
                    fontSize: 26,
                    color: Colors.black,
                    fontFamily: 'Bold',
                  ),
                  TextWidget(
                    fw: FontWeight.w900,
                    text: 'Ready To Unwind?',
                    fontSize: 28,
                    color: Colors.black,
                    fontFamily: 'Bold',
                  ),
                  const Expanded(
                    child: SizedBox(
                      height: 50,
                    ),
                  ),
                  ButtonWidget(
                    radius: 15,
                    label: 'Get Started',
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
