import 'package:flutter/material.dart';
import 'package:test_bionic_app/pages/home_page_2.dart';
import 'package:test_bionic_app/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() => Container(
        width: MediaQuery.sizeOf(context).width,
        height: 150,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/bg_page_1.png'))));
    return Scaffold(
      body: Column(children: [
        header(),
        Expanded(
            child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
            child: Column(children: [
              const SizedBox(height: defaultMargin),
              Container(
                width: MediaQuery.sizeOf(context).width,
                decoration: const BoxDecoration(
                    color: orangColor1,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(10))),
                child: const ListTile(
                  title: Text(
                    'Lorem Ipsum',
                    style: TextStyle(color: whiteColor),
                  ),
                  subtitle: Text(
                    'dolor should be',
                    style: TextStyle(color: whiteColor),
                  ),
                  leading: Icon(Icons.person, color: whiteColor),
                ),
              ),
              for (int i = 0; i < 6; i++)
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => HomePage2(title: 'This is data $i'))),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width,
                    padding:
                        const EdgeInsets.symmetric(vertical: defaultMargin),
                    color: primaryColor.withOpacity(0.9),
                    child: Center(
                        child: Text(
                      'this is the data $i',
                      style: const TextStyle(color: whiteColor),
                    )),
                  ),
                )
            ]),
          ),
        ))
      ]),
    );
  }
}
