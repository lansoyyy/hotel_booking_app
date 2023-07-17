import 'package:flutter/material.dart';
import 'package:hotel/screens/auth/login_screen.dart';
import 'package:hotel/widgets/text_widget.dart';

import '../../widgets/button_widget.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextWidget(
                text: 'Profile',
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
                    Icons.edit_outlined,
                    size: 16,
                    color: Colors.grey,
                  ),
                  label: TextWidget(
                    text: 'Edit',
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
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
                  size: 75,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextWidget(
          text: 'John Doe',
          fontSize: 24,
          fontFamily: 'Bold',
        ),
        const SizedBox(
          height: 5,
        ),
        TextWidget(
          text: 'doe@gmail.com',
          fontSize: 12,
          fontFamily: 'Regular',
          color: Colors.grey,
        ),
        const SizedBox(
          height: 30,
        ),
        Expanded(
            child: Container(
          decoration: BoxDecoration(
            color: Colors.grey[200]!,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                TextWidget(
                  text: 'My Information',
                  fontSize: 18,
                  fontFamily: 'Bold',
                  color: Colors.black,
                ),
                const SizedBox(
                  height: 20,
                ),
                ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(
                        text: 'Email',
                        fontSize: 16,
                        color: Colors.black,
                      ),
                      TextWidget(
                        text: 'doe@gmail.com',
                        fontSize: 11,
                        color: Colors.grey,
                        fontFamily: 'Regular',
                      ),
                    ],
                  ),
                  trailing: const Icon(
                    Icons.email_outlined,
                    color: Colors.black,
                  ),
                ),
                const Divider(),
                ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(
                        text: 'Contact Number',
                        fontSize: 16,
                        color: Colors.black,
                      ),
                      TextWidget(
                        text: '09090104355',
                        fontSize: 11,
                        color: Colors.grey,
                        fontFamily: 'Regular',
                      ),
                    ],
                  ),
                  trailing: const Icon(
                    Icons.phone_in_talk_outlined,
                    color: Colors.black,
                  ),
                ),
                const Divider(),
                ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(
                        text: 'My Location',
                        fontSize: 16,
                        color: Colors.black,
                      ),
                      TextWidget(
                        text: 'Nazareth, Cagayan De Oro City',
                        fontSize: 12,
                        color: Colors.grey,
                        fontFamily: 'Regular',
                      ),
                    ],
                  ),
                  trailing: const Icon(
                    Icons.location_on_outlined,
                    color: Colors.black,
                  ),
                ),
                const Divider(),
                ListTile(
                  onTap: () {
                    logoutDialog(context);
                  },
                  title: TextWidget(
                    text: 'Logout',
                    fontSize: 16,
                    color: Colors.black,
                  ),
                  trailing: const Icon(
                    Icons.logout,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        )),
      ],
    );
  }

  logoutDialog(context) {
    showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.warning_amber_rounded,
                    color: Colors.red,
                    size: 125,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextWidget(
                        color: Colors.red,
                        text: 'Wait a minute!',
                        fontSize: 28,
                        fontFamily: 'Bold',
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      TextWidget(
                        text: 'Are you sure you want',
                        fontSize: 15,
                        fontFamily: 'Medium',
                      ),
                      TextWidget(
                        text: 'to logout?',
                        fontSize: 15,
                        fontFamily: 'Medium',
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  MaterialButton(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          color: Colors.red,
                        ),
                        borderRadius: BorderRadius.circular(5)),
                    minWidth: 225,
                    height: 50,
                    color: Colors.transparent,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: TextWidget(
                        text: 'Cancel', fontSize: 18, color: Colors.red),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ButtonWidget(
                      color: Colors.red,
                      width: 225,
                      label: 'Yes',
                      onPressed: () async {
                        // await FirebaseAuth.instance
                        //     .signOut();
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                      }),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          );
        });
  }
}
