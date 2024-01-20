import 'package:flutter/material.dart';
import 'package:test_bionic_app/pages/home_page.dart';
import 'package:test_bionic_app/theme.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isRemember = false;
  @override
  Widget build(BuildContext context) {
    Widget header() => Container(
        width: MediaQuery.sizeOf(context).width,
        height: 150,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/bg_page_1.png'))));

    Widget textEditing(String hintText, {bool? secureText}) => Container(
          height: 50,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          margin: const EdgeInsets.only(
              left: defaultMargin, right: defaultMargin, bottom: defaultMargin),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: greyColor)),
          child: Center(
            child: TextFormField(
                obscureText: secureText ?? false,
                decoration: InputDecoration.collapsed(
                  hintText: hintText,
                )),
          ),
        );

    Widget rememberAndForgotPassword() => Row(children: [
          Expanded(
              child: CheckboxListTile(
            value: isRemember,
            controlAffinity: ListTileControlAffinity.leading,
            visualDensity: VisualDensity.compact,
            onChanged: (val) {
              isRemember = val ?? false;
              setState(() {});
            },
            title: const Text(
              'Remember',
              style: TextStyle(fontSize: 13),
            ),
          )),
          Expanded(
            child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Lorem Impsum ?',
                  style: TextStyle(fontSize: 13),
                )),
          )
        ]);

    Widget ctaButtonSignIn() => Container(
        margin: const EdgeInsets.only(top: 30, bottom: 70),
        width: MediaQuery.sizeOf(context).width * 0.5,
        height: 45,
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const HomePage()));
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: primaryColor, foregroundColor: whiteColor),
            child: const Text('Sign Up', style: TextStyle(fontWeight: bold))));

    return Scaffold(
      body: Column(
        children: [
          header(),
          Expanded(
              child: SingleChildScrollView(
            child: Column(children: [
              const Text('Lorem ipsum ',
                  style: TextStyle(fontWeight: bold, fontSize: 16)),
              const SizedBox(height: 30),
              textEditing('Name'),
              textEditing('E-mail'),
              textEditing('Password', secureText: true),
              rememberAndForgotPassword(),
              ctaButtonSignIn(),
              Column(children: [
                const Text('Any have an account ?',
                    style: TextStyle(color: greyColor)),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Sign In',
                      style: TextStyle(fontSize: 13),
                    ))
              ])
            ]),
          ))
        ],
      ),
    );
  }
}
