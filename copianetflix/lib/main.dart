import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
        icon: Icon(Icons.cases_rounded),
        label: 'Cards',
        activeIcon: Icon(Icons.cases_rounded)),
    BottomNavigationBarItem(
        icon: Icon(Icons.download_for_offline_outlined), label: 'Descargas'),
    BottomNavigationBarItem(
        icon: Icon(Icons.icecream_rounded), label: 'IceCream'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.black87.withOpacity(0.7),
          toolbarTextStyle: TextStyle(),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  size: 30,
                )),
            IconButton(onPressed: () {}, icon: Icon(Icons.person_2)),
          ],
          leading: Container(
            child: Center(
              child: GestureDetector(
                child: Image.asset(
                  width: 20,
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
        body: Center(
            child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 500,
              height: 380,
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
                    SizedBox(
                      height: 70,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 70, bottom: 80),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'N',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 198, 13, 0),
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              ' PELÍCULA',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
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
                    Center(
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                IconButton(
                                  icon: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 25,
                                  ),
                                  onPressed: () {},
                                ),
                                Text(
                                  'Mi lista',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 10),
                                )
                              ],
                            ),
                          ),
                          ElevatedButton.icon(
                            onPressed: () {},
                            label: Text("Reproducir"),
                            icon: Icon(Icons.play_arrow),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.black),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                IconButton(
                                  icon: Icon(
                                    Icons.info_outline_rounded,
                                    color: Colors.white,
                                    size: 25,
                                  ),
                                  onPressed: () {
                                    print("Información");
                                  },
                                ),
                                Text(
                                  'Información',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 10),
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
            Expanded(
              child: MaterialApp(
                debugShowCheckedModeBanner: false,
                home: Scaffold(
                  backgroundColor: Colors.black,
                  body: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text("Mi Lista",
                            style:
                                TextStyle(color: Colors.white, fontSize: 16)),
                      ),
                      CustomerRowList(
                        imgagen1: Image.asset("assets/redsocial.JPG",
                            fit: BoxFit.cover),
                        imgagen2:
                            Image.asset("assets/jobs.JPG", fit: BoxFit.cover),
                        imgagen3: Image.asset("assets/eligeomuere.JPG",
                            fit: BoxFit.cover),
                        imgagen4: Image.asset("assets/redsocial.JPG",
                            fit: BoxFit.cover),
                        imgagen5: Image.asset("assets/redsocial.JPG",
                            fit: BoxFit.cover),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text("Juegos Móviles",
                            style:
                                TextStyle(color: Colors.white, fontSize: 16)),
                      ),
                      CustomerRowList(
                        imgagen1:
                            Image.asset("assets/raji.JPG", fit: BoxFit.cover),
                        imgagen2: Image.asset("assets/fuegoamor.JPG",
                            fit: BoxFit.cover),
                        imgagen3: Image.asset("assets/arrow.JPG",
                            fit: BoxFit.cover),
                        imgagen4: Image.asset("assets/bobesponja.JPG",
                            fit: BoxFit.cover),
                        imgagen5: Image.asset("assets/redsocial.JPG",
                            fit: BoxFit.cover),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        )),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          // enableFeedback: true,
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

class CustomerRowList extends StatelessWidget {
  final Widget imgagen1;
  final Widget imgagen2;
  final Widget imgagen3;
  final Widget imgagen4;
  final Widget imgagen5;

  const CustomerRowList({
    super.key,
    required this.imgagen1,
    required this.imgagen2,
    required this.imgagen3,
    required this.imgagen4,
    required this.imgagen5,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      margin: EdgeInsets.all(5),
      color: Colors.transparent,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: 100,
            height: 50,
            margin: EdgeInsets.all(5),
            color: Colors.transparent,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(5), child: imgagen1),
          ),
          Container(
            width: 100,
            height: 50,
            margin: EdgeInsets.all(5),
            color: Colors.transparent,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: imgagen2,
            ),
          ),
          Container(
            width: 100,
            height: 50,
            margin: EdgeInsets.all(5),
            color: Colors.transparent,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: imgagen3,
            ),
          ),
          Container(
            width: 100,
            height: 50,
            margin: EdgeInsets.all(5),
            color: Colors.transparent,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: imgagen4,
            ),
          ),
          Container(
            width: 100,
            height: 50,
            margin: EdgeInsets.all(5),
            color: Colors.transparent,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(5), child: imgagen5),
          )
        ],
      ),
    );
  }
}
