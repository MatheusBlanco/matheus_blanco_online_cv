import 'package:flutter/material.dart';

class AboutMeInfo extends StatelessWidget {
  const AboutMeInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          '\u2022 Engenheiro de Software, apaixonado por usabilidade e criar websites. Estou aprendendo tecnologias de front e backend, e tenho também interesse em aprender tecnologias Mobile.',
          textAlign: TextAlign.justify,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 18,
          ),
        ),
        Text(
          '\u2022 Sou voluntário no Movimento Escoteiro, onde atuo como chefe de jovens de 11 a 15 anos a participarem de atividades e acampamentos.',
          textAlign: TextAlign.justify,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 18,
          ),
        ),
        Text(
          '\u2022 Também possuo conhecimento e experiência com áreas de gestão, administrativa e financeira, por ter atuado como Diretor de Operações na Empresa Júnior de Engenharia de Software da Universidade de Brasília, Orc\'estra Gamificação.',
          textAlign: TextAlign.justify,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
