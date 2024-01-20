import 'package:flutter/material.dart';
import 'package:test_bionic_app/pages/sign_up_page.dart';
import 'package:test_bionic_app/theme.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/bg_start_page.png'))),
            child: Column(
              children: [
                Expanded(
                    child: ListView(
                  children: [
                    Container(
                        margin: const EdgeInsets.only(top: defaultMargin * 3),
                        child: const Text('EDUCATION',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: whiteColor,
                                fontSize: fontLarge,
                                fontWeight: bold))),
                    Container(
                        width: 220,
                        height: 230,
                        margin: const EdgeInsets.only(bottom: defaultMargin),
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/images/ic_logo.png')))),
                    const Text(
                        'lorem ipsum dolor sit amet,\nconsectetur adipiscing elit.',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: whiteColor, fontSize: 14)),
                    Container(
                        margin: const EdgeInsets.only(top: defaultMargin * 3),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                  width: MediaQuery.sizeOf(context).width * 0.5,
                                  height: 45,
                                  child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (_) =>
                                                    const SignUpPage()));
                                      },
                                      child: const Text('START',
                                          style: TextStyle(
                                              fontWeight: bold,
                                              color: primaryColor))))
                            ])),
                  ],
                )),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: defaultMargin),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (int i = 0; i < 3; i++)
                          Container(
                              height: 15,
                              width: 15,
                              margin: const EdgeInsets.only(right: 15),
                              decoration: const BoxDecoration(
                                  color: whiteColor, shape: BoxShape.circle))
                      ]),
                )
              ],
            )));
  }
}
