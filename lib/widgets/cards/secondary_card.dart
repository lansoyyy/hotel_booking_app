import 'package:flutter/material.dart';

import '../text_widget.dart';

class SecondaryCard extends StatelessWidget {
  const SecondaryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 7.5, right: 7.5),
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Stack(
          children: [
            Container(
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: const DecorationImage(
                    image: AssetImage(
                      'assets/images/sample2.jpg',
                    ),
                    fit: BoxFit.cover),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 25,
                            width: 75,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.orange,
                            ),
                            child: Center(
                              child: TextWidget(
                                fontFamily: 'Bold',
                                text: '25% OFF',
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                            size: 24,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: const LinearGradient(
                    colors: [
                      Colors.transparent,
                      Colors.black54,
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
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextWidget(
                          text: 'White Island',
                          fontSize: 15,
                          color: Colors.white,
                          fontFamily: 'Bold',
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
                    const SizedBox(
                      height: 2,
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
                        const Expanded(
                          child: SizedBox(),
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
                          ],
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
    );
  }
}