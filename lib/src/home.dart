import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var listaMobi = [
      'lib/assets/logo.png',
      'lib/assets/06.jpg',
      'lib/assets/06.jpg',
      'lib/assets/06.jpg',
      'lib/assets/06.jpg',
      'lib/assets/06.jpg',
      'lib/assets/06.jpg',
      'lib/assets/06.jpg',
      'lib/assets/06.jpg',
      'lib/assets/06.jpg',
      'lib/assets/06.jpg',
      'lib/assets/06.jpg',
      'lib/assets/06.jpg',
      'lib/assets/06.jpg',
      'lib/assets/06.jpg',
    ];
    var lista = [
      'lib/assets/06.jpg',
      'lib/assets/06.jpg',
      'lib/assets/06.jpg',
      'lib/assets/06.jpg',
      'lib/assets/06.jpg',
      'lib/assets/06.jpg',
      'lib/assets/06.jpg',
      'lib/assets/logo.png',
      'lib/assets/06.jpg',
      'lib/assets/06.jpg',
      'lib/assets/06.jpg',
      'lib/assets/06.jpg',
      'lib/assets/06.jpg',
      'lib/assets/06.jpg',
      'lib/assets/06.jpg',
    ];
    var listaTablet = [
      'lib/assets/06.jpg',
      'lib/assets/logo.png',
      'lib/assets/06.jpg',
      'lib/assets/06.jpg',
      'lib/assets/06.jpg',
      'lib/assets/06.jpg',
      'lib/assets/06.jpg',
      'lib/assets/06.jpg',
      'lib/assets/06.jpg',
      'lib/assets/06.jpg',
      'lib/assets/06.jpg',
      'lib/assets/06.jpg',
      'lib/assets/06.jpg',
      'lib/assets/06.jpg',
      'lib/assets/06.jpg',
    ];
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50.0),
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 380) {
              return AppBar(
                  backgroundColor: const Color.fromARGB(241, 255, 255, 255),
                  title: Row(
                    children: [
                      Image.asset(
                        'lib/assets/logoT.png',
                        height: 40,
                      ),
                      const SizedBox(width: 12),
                      const Text(
                        'Patinhas do Bem',
                        style: TextStyle(
                          color: Color.fromARGB(242, 46, 152, 223),
                        ),
                      )
                    ],
                  ),
                  actions: [
                    IconButton(
                      icon: const Icon(
                        Icons.menu,
                        color: Color.fromARGB(242, 46, 152, 223),
                      ),
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                    ),
                  ]);
            } else {
              return AppBar(
                backgroundColor: const Color.fromARGB(241, 255, 255, 255),
                title: Row(
                  children: [
                    Image.asset(
                      'lib/assets/logoT.png',
                      height: 40,
                    ),
                    const SizedBox(width: 12),
                    const Text(
                      'Patinhas do Bem',
                      style: TextStyle(
                        color: Color.fromARGB(242, 46, 152, 223),
                      ),
                    )
                  ],
                ),
                actions: [
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Instagram',
                          style: TextStyle(
                            color: Color.fromARGB(242, 46, 152, 223),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Doe aqui',
                          style: TextStyle(
                            color: Color.fromARGB(242, 46, 152, 223),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              );
            }
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 600) {
              return GridView.count(
                crossAxisCount: 1,
                children: List.generate(15, (index) {
                  return Center(
                    child: Image.asset(listaMobi[index]),
                  );
                }),
              );
            } else if (constraints.maxWidth < 1000) {
              return GridView.count(
                crossAxisCount: 2,
                children: List.generate(15, (index) {
                  return Center(
                    child: Image.asset(listaMobi[index]),
                  );
                }),
              );
            } else if (constraints.maxWidth < 1426) {
              return GridView.count(
                crossAxisCount: 3,
                children: List.generate(15, (index) {
                  return Center(
                    child: Image.asset(listaTablet[index]),
                  );
                }),
              );
            } else {
              return Center(
                child: Container(
                  color: Colors.red,
                  width: 1425,
                  child: GridView.count(
                    crossAxisCount: 5,
                    children: List.generate(15, (index) {
                      return Center(
                        child: Padding(
                          padding: const EdgeInsets.all(2),
                          child: Image.asset(lista[index]),
                        ),
                      );
                    }),
                  ),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
