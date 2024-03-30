import 'package:flutter/material.dart';
import 'package:portifolio/app/helper/platform.dart';
import 'package:portifolio/app/modulos/home/view/components/card_stacks.dart';
import 'package:portifolio/app/modulos/home/view/components/experiencias/containerBorder.dart';

class Experiencias extends StatefulWidget {
  const Experiencias({super.key});

  @override
  State<Experiencias> createState() => _ExperienciasState();
}

class _ExperienciasState extends State<Experiencias> {
  final listTechItep = [
    'VueJS',
    'Vuetify',
    'JavaScript',
    'Git',
    'NodeJS',
    'AWS',
    'Docker',
  ];

  final listTechMoni = [
    'HTML',
    'CSS',
    'JavaScript',
    'C',
    'C++',
    'PHP',
  ];

  final listTechBv = [
    'HTML',
    'CSS',
    'D3JS',
    'JavaScript',
    'Python',
    'PySpark',
  ];

  bool bv = true;
  bool itep = false;
  bool monitoria = false;
  late List<String> listStacks;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    listStacks = listTechBv;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: 800,
      child: Scrollbar(
        controller: _scrollController,
        thumbVisibility: true,
        trackVisibility: true,
        child: ListView(
            controller: _scrollController,
            shrinkWrap: true,
            padding: const EdgeInsets.all(15),
            children: [
              Container(
                color: const Color.fromARGB(255, 17, 28, 29),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            bv = true;
                            itep = false;
                            monitoria = false;
                            listStacks = listTechBv;
                          });
                        },
                        child: ContainerBorder(
                            isClicked: bv,
                            title:
                                'Projeto de Pesquisa: Análise de dados de navegação digital')),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            bv = false;
                            itep = false;
                            monitoria = true;
                            listStacks = listTechMoni;
                          });
                        },
                        child: ContainerBorder(
                            isClicked: monitoria,
                            title:
                                "Projeto de Ensino: Monitoria de Programação e Banco de Dados")),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            bv = false;
                            itep = true;
                            monitoria = false;
                            listStacks = listTechItep;
                          });
                        },
                        child: ContainerBorder(
                            isClicked: itep,
                            title:
                                "Estágio como Full-Stack na ItepBrasil Consultoria")),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 50.0),
                child: Text(
                  'Atribuições',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  itep
                      ? "Estágio - Desenvolvedora Full Stack\n"
                          "08/2022 - 02/2023"
                      : monitoria
                          ? "Monitora dos alunos do Ensino Médio e da Graduação\n"
                              "Projeto de Ensino do IFSP campus Votuporanga\n"
                              "04/2023 - 07/2023"
                          : "Pesquisadora na área de DataScience, utilizando de técnias estatísticas e machine learning para compreender o comportamento de clientes em plataformas digitais bancárias para que instituições financeiras possam melhor planejar, por exemplo, ações de marketing e CRM\n"
                              "\nProjeto de Pesquisa do IFSP em parceria com o Banco BV Financeira\n"
                              "07/2023 - 02/2024",
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 50.0, bottom: 30),
                child: Text(
                  'Tecnologias utilizadas',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: listStacks.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15,
                    crossAxisCount: isMobile
                        ? 2
                        : isTablet
                            ? 3
                            : 5,
                    childAspectRatio: 1,
                  ),
                  itemBuilder: ((context, index) {
                    return CardStack(
                        caminho: 'assets/images/${listStacks[index]}.png',
                        title: listStacks[index]);
                  })),
            ]),
      ),
    );
  }
}
