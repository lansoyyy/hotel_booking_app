import 'package:flutter/material.dart';

import '../../widgets/cards/main_card.dart';
import '../../widgets/cards/secondary_card.dart';
import '../../widgets/text_widget.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  int selectedIndex = 0;

  String selected = 'Beach';

  List filters = [
    {'name': 'Beach', 'icon': Icons.beach_access_outlined},
    {'name': 'Restaurants', 'icon': Icons.restaurant_menu_outlined},
    {'name': 'Hotels', 'icon': Icons.hotel_outlined},
    {'name': 'Tourist Spots', 'icon': Icons.landscape_outlined},
    {'name': 'Resorts', 'icon': Icons.beach_access_outlined},
    {'name': 'Museums', 'icon': Icons.museum_outlined},
    {'name': 'Boarding House', 'icon': Icons.home_outlined},
    {'name': 'Cafes', 'icon': Icons.local_cafe_outlined},
    {'name': 'Bars', 'icon': Icons.local_bar_outlined},
    {'name': 'Gyms', 'icon': Icons.fitness_center_outlined},
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
              itemCount: filters
                  .length, // Replace 'itemCount' with the total number of items in your list
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 7.5, right: 7.5),
                  child: GestureDetector(
                    onTap: () {
                      // Update the selected index when an item is clicked
                      setState(() {
                        selectedIndex = index;
                        selected = filters[index]['name'];
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.grey[300]!),
                        color: selectedIndex == index
                            ? Colors.orange.withOpacity(0.75)
                            : Colors.transparent,
                      ),
                      child: SizedBox(
                        width: 75,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              filters[index]['icon'],
                              color: selectedIndex == index
                                  ? Colors.white
                                  : Colors.grey,
                              size: 28,
                            ),
                            const SizedBox(height: 5),
                            TextWidget(
                              text: filters[index]['name'],
                              fontSize: 9,
                              color: selectedIndex == index
                                  ? Colors.white
                                  : Colors.grey,
                              fontFamily: 'Medium',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
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
                text: 'Popular $selected',
                fontSize: 24,
                fontFamily: 'Bold',
              ),
              TextButton(
                onPressed: () {},
                child: TextWidget(
                  fontFamily: 'Bold',
                  text: 'See all',
                  fontSize: 14,
                  color: Colors.orange,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const MainCard();
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
                return const SecondaryCard();
              },
            ),
          ),
        ],
      ),
    );
  }
}
