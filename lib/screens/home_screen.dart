import 'package:flutter/material.dart';
import 'package:hotel/widgets/text_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(
                    text: 'Where you\nwanna go?',
                    fontSize: 28,
                    fontFamily: 'Bold',
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: Colors.grey[300]!),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.location_on_outlined,
                    color: Colors.grey,
                    size: 18,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  TextWidget(
                    text: 'Nazareth, Cagayan De Oro City',
                    fontSize: 14,
                    fontFamily: 'Medium',
                    color: Colors.grey,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 75,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 7.5, right: 7.5),
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.grey[300]!),
                          ),
                          child: SizedBox(
                            width: 75,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.landscape_outlined,
                                  color: Colors.grey,
                                  size: 28,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                TextWidget(
                                  text: 'Tourist Spots',
                                  fontSize: 10,
                                  color: Colors.grey,
                                  fontFamily: 'Medium',
                                ),
                              ],
                            ),
                          )),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(
                    text: 'Popular Tourist Spots',
                    fontSize: 24,
                    fontFamily: 'Bold',
                  ),
                  TextButton(
                    onPressed: () {},
                    child: TextWidget(
                      fontFamily: 'Bold',
                      text: 'See all',
                      fontSize: 14,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
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
                                padding:
                                    const EdgeInsets.fromLTRB(5, 10, 5, 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
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
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              TextSpan(
                                                text: 'night',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontFamily: 'Regular',
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
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
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextWidget(
                text: 'Hot deals',
                fontSize: 24,
                fontFamily: 'Bold',
              ),
              SizedBox(
                height: 150,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
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
                                      child: Container(
                                        height: 25,
                                        width: 75,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          color: Colors.amber,
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
                                padding:
                                    const EdgeInsets.fromLTRB(5, 10, 5, 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
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
                  },
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
