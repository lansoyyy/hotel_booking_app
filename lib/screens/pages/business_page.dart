import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hotel/widgets/text_widget.dart';

import '../../widgets/button_widget.dart';

class BusinessPage extends StatefulWidget {
  const BusinessPage({super.key});

  @override
  State<BusinessPage> createState() => _BusinessPageState();
}

class _BusinessPageState extends State<BusinessPage> {
  bool readMore = false;
  List offers = [
    {'name': '2 Bed', 'icon': Icons.hotel_outlined},
    {'name': 'Dinner', 'icon': Icons.dinner_dining_outlined},
    {'name': 'Beachfront Villa', 'icon': Icons.house_outlined},
    {'name': 'Spa Package', 'icon': Icons.spa_outlined},
    {'name': 'Happy Hour', 'icon': Icons.local_bar_outlined},
    {'name': 'Fitness Classes', 'icon': Icons.fitness_center_outlined}
  ];

  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  @override
  Widget build(BuildContext context) {
    const CameraPosition kGooglePlex = CameraPosition(
      target: LatLng(37.42796133580664, -122.085749655962),
      zoom: 14.4746,
    );
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            tag: 'Image',
            child: Container(
              height: 250,
              decoration: const BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                  image: AssetImage('assets/images/sample2.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[100]!.withOpacity(0.5),
                            shape: BoxShape.circle,
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      const Expanded(child: SizedBox()),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[100]!.withOpacity(0.5),
                          shape: BoxShape.circle,
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.share,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[100]!.withOpacity(0.5),
                          shape: BoxShape.circle,
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.favorite_border,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 555,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidget(
                          text: 'White Island',
                          fontSize: 32,
                          color: Colors.black,
                          fontFamily: 'Bold',
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on_outlined,
                              color: Colors.grey,
                              size: 16,
                            ),
                            const SizedBox(
                              width: 2.5,
                            ),
                            TextWidget(
                              text: 'Camiguin',
                              fontSize: 12,
                              color: Colors.grey,
                              fontFamily: 'Bold',
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.star_rounded,
                              color: Colors.orange,
                              size: 24,
                            ),
                            TextWidget(
                              text: '4.5',
                              fontSize: 14,
                              color: Colors.black,
                              fontFamily: 'Medium',
                            ),
                            const Expanded(
                              child: SizedBox(),
                            ),
                            RichText(
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'P488/',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontFamily: 'Bold',
                                      color: Colors.black,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'night',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'Regular',
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Divider(),
                        const SizedBox(
                          height: 10,
                        ),
                        TextWidget(
                          maxlines: readMore ? 5 : null,
                          overflow: readMore ? TextOverflow.ellipsis : null,
                          text:
                              'Sint laboris minim est et in sit eiusmod. Velit pariatur amet incididunt occaecat veniam est enim nisi occaecat nostrud non. Est laboris deserunt elit ullamco sit magna dolore tempor pariatur duis tempor dolore.',
                          fontSize: 12,
                          fontFamily: 'Regular',
                          color: Colors.grey,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        GestureDetector(
                          onTap: () {
                            if (readMore) {
                              setState(() {
                                readMore = false;
                              });
                            } else {
                              setState(() {
                                readMore = true;
                              });
                            }
                          },
                          child: TextWidget(
                            text: readMore ? 'Read more' : 'Read less',
                            fontSize: 12,
                            fontFamily: 'Bold',
                            color: Colors.blue,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextWidget(
                          text: 'What we offer',
                          fontSize: 24,
                          color: Colors.black,
                          fontFamily: 'Bold',
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 75,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: offers
                                .length, // Replace 'itemCount' with the total number of items in your list
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(
                                    left: 7.5, right: 7.5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    border:
                                        Border.all(color: Colors.grey[300]!),
                                    color: Colors.transparent,
                                  ),
                                  child: SizedBox(
                                    width: 75,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          offers[index]['icon'],
                                          color: Colors.grey,
                                          size: 28,
                                        ),
                                        const SizedBox(height: 5),
                                        TextWidget(
                                          text: offers[index]['name'],
                                          fontSize: 9,
                                          color: Colors.grey,
                                          fontFamily: 'Medium',
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextWidget(
                          text: 'Location',
                          fontSize: 18,
                          color: Colors.black,
                          fontFamily: 'Bold',
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        // Map
                        SizedBox(
                          height: 150,
                          child: GoogleMap(
                            mapType: MapType.hybrid,
                            initialCameraPosition: kGooglePlex,
                            onMapCreated: (GoogleMapController controller) {
                              _controller.complete(controller);
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        TextWidget(
                          maxlines: readMore ? 5 : null,
                          overflow: readMore ? TextOverflow.ellipsis : null,
                          text:
                              'Sint laboris minim est et in sit eiusmod. Velit pariatur amet incididunt occaecat veniam est enim nisi occaecat nostrud non.',
                          fontSize: 12,
                          fontFamily: 'Regular',
                          color: Colors.grey,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextWidget(
                          text: 'Posted by',
                          fontSize: 18,
                          color: Colors.black,
                          fontFamily: 'Bold',
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: const DecorationImage(
                                    image: AssetImage(
                                      'assets/images/sample.jpg',
                                    ),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                TextWidget(
                                  text: 'Camiguin Island Tourism',
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontFamily: 'Bold',
                                ),
                                TextWidget(
                                  text: 'Mimbajao, Camiguin Island',
                                  fontSize: 12,
                                  color: Colors.grey,
                                  fontFamily: 'Medium',
                                ),
                              ],
                            ),
                            const Expanded(
                              child: SizedBox(
                                width: 10,
                              ),
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(2.0),
                                child: Icon(
                                  Icons.mail_outline,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Divider(),
                        const SizedBox(
                          height: 10,
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: ButtonWidget(
                            radius: 10,
                            height: 55,
                            label: 'Book Now',
                            onPressed: () {},
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
