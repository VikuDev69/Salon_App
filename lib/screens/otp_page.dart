import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:salon/components/otp_feild.dart';
import 'package:salon/screens/home.dart';

class OTpPage extends StatefulWidget {
  const OTpPage({super.key});

  @override
  State<OTpPage> createState() => _OTpPagePageState();
}

class _OTpPagePageState extends State<OTpPage> {
  static final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  final _otpcontroller1 = TextEditingController();
  final _otpcontroller2 = TextEditingController();
  final _otpcontroller3 = TextEditingController();
  final _otpcontroller4 = TextEditingController();
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Enter your OTP",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      bottom: 0,
                      left: 25,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(
                            top: 5,
                            left: 8,
                            right: 5,
                          ),
                          height: 70,
                          width: 60,
                          decoration: ShapeDecoration(
                              color: const Color.fromARGB(255, 222, 228, 233),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12))),
                          child: OTpFeild(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Not Empty";
                                }
                              },
                              controller: _otpcontroller1,
                              keyboardType: TextInputType.phone,
                              obscureText: false),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          padding: const EdgeInsets.only(
                            top: 5,
                            left: 8,
                            right: 5,
                          ),
                          height: 70,
                          width: 60,
                          decoration: ShapeDecoration(
                              color: const Color.fromARGB(255, 222, 228, 233),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12))),
                          child: OTpFeild(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Not Empty";
                                }
                              },
                              controller: _otpcontroller2,
                              keyboardType: TextInputType.phone,
                              obscureText: false),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          padding: const EdgeInsets.only(
                            top: 5,
                            left: 8,
                            right: 5,
                          ),
                          height: 70,
                          width: 60,
                          decoration: ShapeDecoration(
                              color: const Color.fromRGBO(222, 228, 233, 1),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12))),
                          child: OTpFeild(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Not Empty";
                                }
                              },
                              controller: _otpcontroller3,
                              keyboardType: TextInputType.phone,
                              obscureText: false),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          padding: const EdgeInsets.only(
                            top: 5,
                            left: 8,
                            right: 5,
                          ),
                          height: 70,
                          width: 60,
                          decoration: ShapeDecoration(
                              color: const Color.fromARGB(255, 222, 228, 233),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12))),
                          child: OTpFeild(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Not Empty";
                                }
                              },
                              controller: _otpcontroller4,
                              keyboardType: TextInputType.phone,
                              obscureText: false),
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ),
                  const SizedBox(height: 80),
                  MaterialButton(
                    elevation: 0,
                    minWidth: 320,
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    onPressed: () {
                      if (formkey.currentState!.validate()) {
                        Get.off(HomePage());
                      } else {
                        Get.snackbar("", "",
                            colorText: Colors.white,
                            userInputForm: const Form(
                                child: SizedBox(
                              height: 25,
                              width: 250,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 10),
                                    child: Text(
                                      "Invalid  OTP",
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
                            padding: const EdgeInsets.only(bottom: 20),
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
                      "Verify OTP",
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
