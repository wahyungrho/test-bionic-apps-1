import 'package:flutter/material.dart';
import 'package:test_bionic_app/theme.dart';

class HomePage2 extends StatelessWidget {
  final String title;
  const HomePage2({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    Widget header() => Container(
        width: MediaQuery.sizeOf(context).width,
        height: 150,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/bg_page_2.png'))));

    Widget cardContent(int i) => Container(
          width: MediaQuery.sizeOf(context).width * 0.5 - defaultMargin - 10,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 0.5, color: orangColor1)),
          child: Column(
            children: [
              const ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text('Lorem Ipsum'),
                subtitle: Text('Lorem Ipsum'),
              ),
              Row(
                children: [
                  const Expanded(child: SizedBox()),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: primaryColor),
                    child: Center(
                      child: Text(
                        '${i + 1}',
                        style: const TextStyle(color: whiteColor),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        );

    return Scaffold(
      body: Column(
        children: [
          header(),
          Expanded(
              child: SingleChildScrollView(
                  child: Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: defaultMargin),
                      child: Column(children: [
                        Text(title,
                            style: const TextStyle(
                                fontWeight: bold, fontSize: 16)),
                        const SizedBox(height: 30),
                        Wrap(spacing: 10, runSpacing: 8, children: [
                          for (int i = 0; i < 8; i++) cardContent(i)
                        ])
                      ]))))
        ],
      ),
    );
  }
}
