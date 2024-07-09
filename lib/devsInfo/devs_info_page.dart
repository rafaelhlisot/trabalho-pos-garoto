import 'package:flutter/material.dart';
import 'package:imake/components/custom_app_bar.dart';
import 'package:nb_utils/nb_utils.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          title: 'Informações',
        ),
        body: Container(
          child: Center(
            child: Text(
                'Me chamo Rafael Henrique Lisot, sou Formado em Ciência da Computação e '
                    'pós-graduando em Desenvolvimento web e mobile ambas pela UNOESC'
            ),
          ),
          margin: const EdgeInsets.all(50),
        ));
  }
}
