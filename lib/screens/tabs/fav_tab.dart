import 'package:flutter/material.dart';
import 'package:hotel/widgets/cards/secondary_card.dart';

import '../../widgets/text_widget.dart';

class FavTab extends StatefulWidget {
  const FavTab({super.key});

  @override
  State<FavTab> createState() => _FavTabState();
}

class _FavTabState extends State<FavTab> {
  final searchController = TextEditingController();

  String namedSearch = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 250,
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
            TextButton(
              onPressed: () {},
              child: TextWidget(
                fontFamily: 'Bold',
                text: 'View more',
                fontSize: 12,
                color: Colors.orange,
              ),
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
