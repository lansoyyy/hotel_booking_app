import 'package:flutter/material.dart';
import 'package:hotel/screens/pages/business_page.dart';

import '../text_widget.dart';

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 7.5, right: 7.5),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const BusinessPage()));
        },
        child: Card(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Stack(
            children: [
              Hero(
                tag: 'Image',
                child: Container(
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(
                        image: AssetImage(
                          'assets/images/sample.jpg',
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              Container(
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: const LinearGradient(
                      colors: [
                        Colors.transparent,
                        Colors.black38,
                        Colors.black,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.5, 0.8, 1]),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Expanded(
                        child: SizedBox(),
                      ),
                      TextWidget(
                        text: 'White Island',
                        fontSize: 15,
                        color: Colors.white,
                        fontFamily: 'Bold',
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on_outlined,
                            color: Colors.white70,
                            size: 16,
                          ),
                          const SizedBox(
                            width: 2.5,
                          ),
                          TextWidget(
                            text: 'Camiguin',
                            fontSize: 12,
                            color: Colors.white70,
                            fontFamily: 'Bold',
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: 'P488/',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Bold',
                                    color: Colors.white,
                                  ),
                                ),
                                TextSpan(
                                  text: 'night',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Regular',
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Expanded(
                            child: SizedBox(),
                          ),
                          const Icon(
                            Icons.star_rounded,
                            color: Colors.orange,
                            size: 18,
                          ),
                          TextWidget(
                            text: '4.5',
                            fontSize: 12,
                            color: Colors.white70,
                            fontFamily: 'Bold',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
