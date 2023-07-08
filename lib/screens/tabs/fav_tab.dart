import 'package:flutter/material.dart';
import 'package:hotel/widgets/cards/secondary_card.dart';

import '../../widgets/text_widget.dart';
import '../pages/all_business_page.dart';

class FavTab extends StatefulWidget {
  const FavTab({super.key});

  @override
  State<FavTab> createState() => _FavTabState();
}

class _FavTabState extends State<FavTab> {
  final searchController = TextEditingController();

  String selected = 'Beach & Resorts';

  List filters = [
    {'name': 'Beach & Resorts', 'icon': Icons.beach_access_outlined},
    {'name': 'Dining', 'icon': Icons.restaurant_menu_outlined},
    {'name': 'Hotels', 'icon': Icons.hotel_outlined},
    {'name': 'Spa & Massage', 'icon': Icons.spa_outlined},
    {'name': 'Tourist Spots', 'icon': Icons.landscape_outlined},
    {'name': 'Boarding House', 'icon': Icons.home_outlined},
    {'name': 'Cafes', 'icon': Icons.local_cafe_outlined},
    {'name': 'Bars', 'icon': Icons.local_bar_outlined},
    {'name': 'Gyms', 'icon': Icons.fitness_center_outlined},
  ];

  int selectedIndex = 0;

  String namedSearch = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 300,
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextFormField(
                controller: searchController,
                onChanged: (value) {
                  setState(() {
                    namedSearch = value;
                  });
                },
                textCapitalization: TextCapitalization.words,
                style:
                    const TextStyle(fontFamily: 'Regular', color: Colors.grey),
                decoration: InputDecoration(
                    hintStyle: const TextStyle(
                        fontFamily: 'Regular', color: Colors.grey),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    suffixIcon: namedSearch != ''
                        ? IconButton(
                            onPressed: () {
                              setState(() {
                                namedSearch = '';
                              });
                              searchController.clear();
                            },
                            icon: const Icon(
                              Icons.close,
                            ),
                          )
                        : const SizedBox(),
                    border: InputBorder.none,
                    hintText: 'Search'),
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const AllBusinessPage()));
              },
              icon: const Icon(
                Icons.visibility_outlined,
                color: Colors.grey,
              ),
            ),
          ],
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
                  child: Chip(
                    backgroundColor: selectedIndex == index
                        ? Colors.orange.withOpacity(0.75)
                        : Colors.grey[300],
                    avatar: Icon(
                      filters[index]['icon'],
                      color:
                          selectedIndex == index ? Colors.white : Colors.grey,
                      size: 20,
                    ),
                    label: TextWidget(
                      text: filters[index]['name'],
                      fontSize: 9,
                      color:
                          selectedIndex == index ? Colors.white : Colors.grey,
                      fontFamily: 'Medium',
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        Expanded(
          child: SizedBox(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return SecondaryCard(
                  index: index,
                  inFav: true,
                  height: 125,
                  width: double.infinity,
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
