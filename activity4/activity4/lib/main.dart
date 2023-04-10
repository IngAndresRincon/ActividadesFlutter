import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final int _selectedIndex = 0;

  final List<DropdownMenuItem> ddlCategoria = [
    DropdownMenuItem(child: Text("Categoría"), value: "0"),
    DropdownMenuItem(child: Text("Anime"), value: "1"),
    DropdownMenuItem(child: Text("Accion"), value: "2"),
    DropdownMenuItem(child: Text("Terror"), value: "3"),
  ];

  final List<BottomNavigationBarItem> _ItemBottomNavigator = [
    BottomNavigationBarItem(
        icon: Icon(Icons.home_outlined),
        label: 'Inicio',
        activeIcon: Icon(Icons.home)),
    BottomNavigationBarItem(
        icon: Icon(Icons.videogame_asset_outlined),
        label: 'Juegos',
        activeIcon: Icon(Icons.videogame_asset)),
    BottomNavigationBarItem(
        icon: Icon(Icons.download_for_offline_outlined), label: 'Descargas'),
    // BottomNavigationBarItem(icon: Icon(Icons.card_giftcard), label: 'Home4'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 10,
          backgroundColor: Colors.black87.withOpacity(0.7),
          toolbarTextStyle: TextStyle(),
          title:
              Align(alignment: Alignment.topRight, child: Icon(Icons.search)),
          leading: Container(
            margin: EdgeInsets.only(left: 20, top: 0),
            child: Center(
              child: GestureDetector(
                child: Image.asset(
                  "assets/Netflixlogo.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          bottom: TabBar(
            tabs: [
              Tab(
                  child: Text(
                "Series",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              )),
              Tab(
                  child: Text(
                "Películas",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              )),
              Tab(
                  child: DropdownButton(
                value: ddlCategoria[_selectedIndex].value,
                dropdownColor: Colors.black38,
                focusColor: Colors.black38,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                items: ddlCategoria,
                onChanged: (value) {},
              )),
            ],
          ),
        ),
        body: Container(
            height: double.infinity,
            width: double.infinity,
            // decoration: BoxDecoration(
            //   image: DecorationImage(
            //     image: AssetImage('assets/background5.jpg'),
            //     fit: BoxFit.cover,
            //   ),
            // ),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      width: 400,
                      height: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/background2.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.all(100),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'N',
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 198, 13, 0),
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      ' PELÍCULA',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            // Container(
                            //   width: double.infinity,
                            //   child: Text(
                            //     'MISTERIO',
                            //     textAlign: TextAlign.center,
                            //     style: TextStyle(
                            //         color: Colors.blueGrey,
                            //         fontSize: 40,
                            //         fontWeight: FontWeight.bold),
                            //   ),
                            // ),
                            // Container(
                            //   width: double.infinity,
                            //   child: Text(
                            //     'A LA VISTA',
                            //     textAlign: TextAlign.center,
                            //     style: TextStyle(
                            //         color: Colors.blueGrey,
                            //         fontSize: 40,
                            //         fontWeight: FontWeight.bold),
                            //   ),
                            // ),
                            // SizedBox(
                            //   height: 160,
                            // ),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.symmetric(
                                        horizontal: 0, vertical: 10),
                                    height: 25,
                                    width: 25,
                                    decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 198, 13, 0),
                                        borderRadius: BorderRadius.circular(1)),
                                    child: Center(
                                      child: Text(
                                        "TOP 10",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 9),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    " N.° 1 en películas hoy",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Center(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Icon(
                                          Icons.add,
                                          color: Colors.white,
                                          size: 25,
                                        ),
                                        Text(
                                          'Mi lista',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10),
                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: () => print('Pelicula'),
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 0, vertical: 3),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: Center(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.play_arrow,
                                                color: Colors.black,
                                                size: 30,
                                              ),
                                              Text(
                                                "Reproducir",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Icon(
                                          Icons.info_outline_rounded,
                                          color: Colors.white,
                                          size: 25,
                                        ),
                                        Text(
                                          'Información',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 600,
                      height: 200,
                      decoration: BoxDecoration(color: Colors.black),
                      child: Center(
                          child: Column(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: Text('Mi lista',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18)),
                          ),
                          Center(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 0),
                                    height: 140,
                                    color: Colors.transparent,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(5),
                                      child: Image.asset("assets/redsocial.JPG",
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 0),
                                    height: 140,
                                    color: Colors.transparent,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(5),
                                      child: Image.asset("assets/jobs.JPG",
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 0),
                                    height: 140,
                                    color: Colors.transparent,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(5),
                                      child: Image.asset(
                                          "assets/eligeomuere.JPG",
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.only(
                                left: 10, top: 5, bottom: 2, right: 10),
                            child: Text('Juegos móviles',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18)),
                          ),
                          Center(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    alignment: AlignmentDirectional.topCenter,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 0),
                                    height: 125,
                                    color: Colors.transparent,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(17),
                                      child: Image.asset("assets/raji.JPG",
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    alignment: AlignmentDirectional.topCenter,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 0),
                                    height: 125,
                                    color: Colors.transparent,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(17),
                                      child: Image.asset("assets/fuegoamor.JPG",
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    alignment: AlignmentDirectional.topCenter,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 0),
                                    height: 125,
                                    color: Colors.transparent,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(17),
                                      child: Image.asset(
                                          "assets/bobesponja.JPG",
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Center(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    alignment: AlignmentDirectional.topCenter,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 0),
                                    color: Colors.transparent,
                                    child: Text(
                                      "Raji: An Ancient Epic",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    alignment: AlignmentDirectional.topCenter,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 0),
                                    color: Colors.transparent,
                                    child: Text(
                                      "Jugando con fuego: Amor y d...",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    alignment: AlignmentDirectional.topCenter,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 0),
                                    color: Colors.transparent,
                                    child: Text(
                                      "Bob Esponja: A cocinar",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                    ),
                  ),
                ],
              ),
            )),
        bottomNavigationBar: BottomNavigationBar(
          enableFeedback: true,
          elevation: 10,
          backgroundColor: Color(0xff121212),
          currentIndex: 0,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          items: _ItemBottomNavigator,
        ),
      ),
    );
  }
}
