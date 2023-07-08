import 'package:flutter/material.dart';

import '../../widgets/text_widget.dart';

class HistoryTab extends StatelessWidget {
  const HistoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextWidget(
              text: 'History',
              fontSize: 24,
              color: Colors.grey,
              fontFamily: 'Bold',
            ),
            Container(
              height: 35,
              width: 80,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                  color: Colors.grey[200]!,
                ),
              ),
              child: TextButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.clear,
                  size: 16,
                  color: Colors.grey,
                ),
                label: TextWidget(
                  text: 'Clear',
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          width: double.infinity,
          height: 125,
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(25),
            border: Border.all(
              color: Colors.grey,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextWidget(
                text: 'Total Bookings',
                fontSize: 16,
                color: Colors.grey,
                fontFamily: 'Medium',
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.book,
                    size: 38,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  TextWidget(
                    text: '75 Bookings',
                    fontSize: 32,
                    color: Colors.black,
                    fontFamily: 'Bold',
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                height: 20,
                decoration: const BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(7.5),
                    bottomRight: Radius.circular(7.5),
                  ),
                ),
                child: Center(
                  child: TextWidget(
                    text: 'Lastest booking: June 12, 2023',
                    fontSize: 12,
                    color: Colors.white,
                    fontFamily: 'Regular',
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextWidget(
              text: 'History',
              fontSize: 20,
              color: Colors.black,
              fontFamily: 'Bold',
            ),
            TextWidget(
              text: '12 Results',
              fontSize: 14,
              color: Colors.grey,
              fontFamily: 'Medium',
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: SizedBox(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Container(
                    height: 110,
                    width: 75,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextWidget(
                                text: 'March 22, 2023',
                                fontSize: 14,
                                fontFamily: 'Bold',
                              ),
                              TextWidget(
                                text: '4:30AM',
                                fontSize: 12,
                                fontFamily: 'Medium',
                                color: Colors.grey,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextWidget(
                                    text: 'White Island',
                                    fontSize: 18,
                                    fontFamily: 'Bold',
                                  ),
                                  TextWidget(
                                    text: 'Camiguin Island',
                                    fontSize: 12,
                                    fontFamily: 'Medium',
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                              RichText(
                                text: const TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'P488/',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: 'Bold',
                                        color: Colors.black,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'night',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'Regular',
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
