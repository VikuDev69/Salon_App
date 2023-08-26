import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';

import 'package:salon/components/mobile_feild.dart';
import 'package:salon/screens/otp_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  static final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  final mobilecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        body: SafeArea(
          child: Center(
            child: Form(
              key: formkey,
              child: Column(
                children: [
                  const SizedBox(height: 60),
                  const Padding(
                    padding: EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Hi, Welcome to",
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Beauty Salon",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 60),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 10,
                      bottom: 10,
                      left: 25,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Login with your Mobile number",
                          style: TextStyle(fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      bottom: 0,
                      left: 25,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 80,
                          width: 340,
                          child: MobileTextField(
                              controller: mobilecontroller,
                              validator: (value) {
                                if (GetUtils.isPhoneNumber(value!)) {
                                  return null;
                                }
                                return "Invalid Number";
                              },
                              keyboardType: TextInputType.phone,
                              labeltext: "Phone Number",
                              obscureText: false),
                        )
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 0,
                      bottom: 10,
                      left: 25,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [Text("Enter your 10 digit Mobile Number")],
                    ),
                  ),
                  const SizedBox(height: 40),
                  MaterialButton(
                    elevation: 0,
                    minWidth: 320,
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    onPressed: () {
                      if (formkey.currentState!.validate()) {
                        Get.off(const OTpPage());
                        Get.snackbar("", "",
                            colorText: Colors.white,
                            userInputForm: const Form(
                                child: SizedBox(
                              height: 25,
                              width: 450,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 10),
                                    child: Text(
                                      "OTP has been sent to Your Mobile",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ],
                              ),
                            )),
                            snackPosition: SnackPosition.TOP,
                            maxWidth: 300,
                            padding: EdgeInsets.only(bottom: 20),
                            backgroundColor: Colors.green,
                            snackStyle: SnackStyle.FLOATING,
                            isDismissible: true,
                            dismissDirection: DismissDirection.up,
                            forwardAnimationCurve: Curves.decelerate,
                            reverseAnimationCurve: Curves.fastOutSlowIn,
                            duration: const Duration(milliseconds: 2500));
                      } else {
                        Get.snackbar("", "",
                            colorText: Colors.white,
                            userInputForm: const Form(
                                child: SizedBox(
                              height: 25,
                              width: 450,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 10),
                                    child: Text(
                                      "Invalid Mobile Number",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ],
                              ),
                            )),
                            snackPosition: SnackPosition.TOP,
                            maxWidth: 300,
                            padding: EdgeInsets.only(bottom: 20),
                            backgroundColor: Colors.red,
                            snackStyle: SnackStyle.FLOATING,
                            isDismissible: true,
                            dismissDirection: DismissDirection.up,
                            forwardAnimationCurve: Curves.decelerate,
                            reverseAnimationCurve: Curves.fastOutSlowIn,
                            duration: const Duration(milliseconds: 2000));
                      }
                    },
                    color: Colors.amber.shade400,
                    textColor: Colors.white,
                    child: const Text(
                      "Send OTP",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
