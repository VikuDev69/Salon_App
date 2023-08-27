import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon/screens/login_page.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 50),
              Container(
                height: 150,
                width: 150,
                decoration: ShapeDecoration(
                    shadows: <BoxShadow>[
                      BoxShadow(
                          color: Colors.grey.shade300,
                          offset: Offset.zero,
                          blurRadius: 30,
                          spreadRadius: 10,
                          blurStyle: BlurStyle.normal)
                    ],
                    shape: const CircleBorder(
                        side: BorderSide(color: Colors.white, width: 4)),
                    color: Colors.amber),
                child: const CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 70,
                  backgroundImage: NetworkImage(
                      "https://thumbs.dreamstime.com/b/handsome-man-black-suit-white-shirt-posing-studio-attractive-guy-fashion-hairstyle-confident-man-short-beard-125019349.jpg"),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(12),
                child: const Text(
                  "Mukesh Gupta",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                color: Colors.transparent,
                margin: const EdgeInsets.only(left: 10, right: 10),
                padding: const EdgeInsets.all(0),
                height: 380,
                width: double.infinity,
                child: Column(
                  children: [
                    const Divider(
                      height: 1,
                      thickness: 0.5,
                      color: Colors.black,
                    ),
                    ListTile(
                      onTap: () {},
                      leading: const Icon(
                        Icons.person,
                        size: 24,
                      ),
                      title: const Text("Profile"),
                      trailing: const Icon(Icons.arrow_forward_ios_sharp),
                    ),
                    const Divider(
                      height: 1,
                      thickness: 0.5,
                      color: Colors.black,
                    ),
                    ListTile(
                      onTap: () {},
                      leading: const Icon(
                        Icons.location_on_outlined,
                        size: 24,
                      ),
                      title: const Text("Address"),
                      trailing: const Icon(Icons.arrow_forward_ios_sharp),
                    ),
                    const Divider(
                      height: 1,
                      thickness: 0.5,
                      color: Colors.black,
                    ),
                    ListTile(
                      onTap: () {},
                      leading: const Icon(
                        Icons.wallet_sharp,
                        size: 24,
                      ),
                      title: const Text("Payment Method"),
                      trailing: const Icon(Icons.arrow_forward_ios_sharp),
                    ),
                    const Divider(
                      height: 1,
                      thickness: 0.5,
                      color: Colors.black,
                    ),
                    ListTile(
                      onTap: () {},
                      leading: const Icon(
                        Icons.help_outline,
                        size: 24,
                      ),
                      title: const Text("Help"),
                      trailing: const Icon(Icons.arrow_forward_ios_sharp),
                    ),
                    const Divider(
                      height: 1,
                      thickness: 0.5,
                      color: Colors.black,
                    ),
                    ListTile(
                      onTap: () {},
                      leading: const Icon(
                        Icons.settings,
                        size: 24,
                      ),
                      title: const Text("Settings"),
                      trailing: const Icon(Icons.arrow_forward_ios_sharp),
                    ),
                    const Divider(
                      height: 1,
                      thickness: 0.5,
                      color: Colors.black,
                    ),
                    ListTile(
                      onTap: () {
                        Get.off(const LoginPage());
                      },
                      leading: const Icon(
                        Icons.lock_open_rounded,
                        size: 24,
                      ),
                      title: const Text("Log Out"),
                      trailing: const Icon(Icons.arrow_forward_ios_sharp),
                    ),
                    const Divider(
                      height: 1,
                      thickness: 0.5,
                      color: Colors.black,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
