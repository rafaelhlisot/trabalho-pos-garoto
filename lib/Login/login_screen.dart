import 'package:flutter/material.dart';
import 'package:imake/components/build_text_field.dart';
import 'package:imake/components/custom_app_bar.dart';
import 'package:imake/components/widgets.dart';
import 'package:imake/routes/pages.dart';
import 'package:imake/utils/color_palette.dart';
import 'package:imake/utils/font_sizes.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController senha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'login',
        showBackArrow: false,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildText(
            'E-mail',
            kBlackColor,
            textMedium,
            FontWeight.bold,
            TextAlign.center,
            TextOverflow.clip,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 50),
            child: BuildTextField(
                hint: "E-mail",
                controller: email,
                inputType: TextInputType.emailAddress,
                fillColor: kWhiteColor,
                onChange: (value) {}),
          ),
          const SizedBox(height: 20),
          buildText('Senha', kBlackColor, textMedium, FontWeight.bold,
              TextAlign.start, TextOverflow.clip),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 50),
            child: BuildTextField(
                hint: "Senha",
                controller: senha,
                inputType: TextInputType.visiblePassword,
                fillColor: kWhiteColor,
                onChange: (value) {}),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: screenSize.width * 0.5,
            height: screenSize.height * 0.05,
            child: MaterialButton(
              onPressed: () {
                if (email.text != "" && senha.text != "") {
                  Navigator.pushNamed(context, Pages.home);
                }
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
                side: const BorderSide(
                  color: Colors.blueAccent,
                  width: 2,
                ),
              ),
              child: const Text('Entrar'),
            ),
          ),
        ],
      ),
    );
  }
}
