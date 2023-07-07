import 'package:flutter/material.dart';
import 'package:hotel/screens/home_screen.dart';
import 'package:hotel/widgets/cards/secondary_card.dart';
import 'package:hotel/widgets/text_widget.dart';

class AllBusinessPage extends StatefulWidget {
  const AllBusinessPage({super.key});

  @override
  State<AllBusinessPage> createState() => _AllBusinessPageState();
}

class _AllBusinessPageState extends State<AllBusinessPage> {
  final searchController = TextEditingController();

  String namedSearch = '';

  int selectedIndex = 0;

  String selected = 'Beach';

  List filters = [
    {'name': 'Beach', 'icon': Icons.beach_access_outlined},
    {'name': 'Restaurants', 'icon': Icons.restaurant_menu_outlined},
    {'name': 'Hotels', 'icon': Icons.hotel_outlined},
    {'name': 'Spa & Massage', 'icon': Icons.spa_outlined},
    {'name': 'Tourist Spots', 'icon': Icons.landscape_outlined},
    {'name': 'Resorts', 'icon': Icons.cottage_outlined},
    {'name': 'Boarding House', 'icon': Icons.home_outlined},
    {'name': 'Cafes', 'icon': Icons.local_cafe_outlined},
    {'name': 'Bars', 'icon': Icons.local_bar_outlined},
    {'name': 'Gyms', 'icon': Icons.fitness_center_outlined},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: Colors.grey,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: TextWidget(
                      text: 'Back',
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const HomeScreen()));
                },
                child: TextWidget(
                  text: 'Home',
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Center(
              child: Container(
                width: double.infinity,
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
                  style: const TextStyle(
                      fontFamily: 'Regular', color: Colors.grey),
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
                      hintText: 'Search Location'),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: SizedBox(
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
                          color: selectedIndex == index
                              ? Colors.white
                              : Colors.grey,
                          size: 20,
                        ),
                        label: TextWidget(
                          text: filters[index]['name'],
                          fontSize: 9,
                          color: selectedIndex == index
                              ? Colors.white
                              : Colors.grey,
                          fontFamily: 'Medium',
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: SizedBox(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return SecondaryCard(inFav: true, index: index);
                  },
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
