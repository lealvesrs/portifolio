import 'package:flutter/material.dart';

import '../../../../helper/my_color.dart';

class Historico extends StatefulWidget {
  const Historico({super.key});

  @override
  State<Historico> createState() => _HistoricoState();
}

class _HistoricoState extends State<Historico> {
  var exp = 1;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: 800,
      child: ListView(shrinkWrap: true, padding: EdgeInsets.zero, children: [
        Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Container(
              color: const Color.fromARGB(255, 17, 28, 29),
              child: ListView(
                shrinkWrap: true,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        exp = 1;
                      });
                    },
                    child: Container(
                        decoration: BoxDecoration(
                            border: Border(
                                left: BorderSide(
                                    color: exp == 1
                                        ? MyColor.ciano
                                        : MyColor.background,
                                    width: 4))),
                        child: const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                              'Ensino Médio integrado ao Técnico em Informática',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        )),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        exp = 2;
                      });
                    },
                    child: Container(
                        decoration: BoxDecoration(
                            border: Border(
                                left: BorderSide(
                                    color: exp == 2
                                        ? MyColor.ciano
                                        : MyColor.background,
                                    width: 4))),
                        child: const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            'Bacharelado em Sistemas de Informações',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                  )
                ],
              ),
            )),
        const Padding(
          padding: EdgeInsets.only(top: 50.0, left: 15),
          child: Text(
            'Eventos e Projetos Acadêmicos',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 15),
          child: Text(
            exp == 1
                ? "(2019) Apresentação WICM: Workshop de Iniciações Científicas e Monografias\n\n"
                    "(2019) TCC: O uso da Análise Comportamental e de tecnologias para verificar a existência de ansiedade no perfil dos alunos do Integrado IFSP"
                : "(2023) Projeto de Ensino: Monitoria de Programação, Banco de Dados e Redes\n\n"
                    "(2023) Roadsec 2023",
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ]),
    );
  }
}
