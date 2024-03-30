import 'package:flutter/material.dart';
import 'package:portifolio/app/modulos/home/view/components/experiencias/containerBorder.dart';

class Historico extends StatefulWidget {
  const Historico({super.key});

  @override
  State<Historico> createState() => _HistoricoState();
}

class _HistoricoState extends State<Historico> {
  bool facul = true;
  bool medio = false;
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
                          facul = true;
                          medio = false;
                        });
                      },
                      child: ContainerBorder(
                          isClicked: facul,
                          title:
                              "Bacharelado em Sistemas de Informações (2022 - 2025)")),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          facul = false;
                          medio = true;
                        });
                      },
                      child: ContainerBorder(
                          isClicked: medio,
                          title:
                              "Ensino Médio integrado ao Técnico em Informática (2017 - 2019)"))
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
            medio
                ? "(2019) Apresentação WICM: Workshop de Iniciações Científicas e Monografias\n\n"
                    "(2019) TCC: O uso da Análise Comportamental e de tecnologias para verificar a existência de ansiedade no perfil dos alunos do Integrado IFSP"
                : "(2023) Projeto de Ensino: Monitoria de Programação, Banco de Dados e Redes\n\n"
                    "(2023 - 2024) Projeto de Pesquisa: Análise de Dados de Bases de Navegação Digital",
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ]),
    );
  }
}
