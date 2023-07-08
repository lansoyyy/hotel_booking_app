import 'package:flutter/material.dart';
import 'package:hotel/widgets/text_widget.dart';

class MessagesTab extends StatefulWidget {
  const MessagesTab({super.key});

  @override
  State<MessagesTab> createState() => _MessagesTabState();
}

class _MessagesTabState extends State<MessagesTab> {
  final searchController = TextEditingController();

  String namedSearch = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.grey[400],
          onPressed: () {},
          child: const Icon(
            Icons.border_color_rounded,
            color: Colors.white,
          )),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          TextWidget(
            text: 'Messages',
            fontSize: 24,
            color: Colors.grey,
            fontFamily: 'Bold',
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 350,
                height: 45,
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
                      hintText: 'Search'),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: SizedBox(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: SizedBox(
                      height: 60,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Center(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.grey[200]!,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: CircleAvatar(
                                  minRadius: 50,
                                  maxRadius: 50,
                                  backgroundColor: Colors.grey[100],
                                  child: const Icon(
                                    Icons.person_outline_sharp,
                                    color: Colors.grey,
                                    size: 38,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextWidget(
                                text: 'John Doe',
                                fontSize: 18,
                                color: Colors.black,
                                fontFamily: 'Bold',
                              ),
                              TextWidget(
                                text: 'Sample message here...',
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
                          TextWidget(
                            text: '4:30PM',
                            fontSize: 12,
                            color: Colors.black,
                            fontFamily: 'Medium',
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
