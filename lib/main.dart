import 'package:flutter/material.dart';
// import 'package:first_app/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: _MyHomePage(),
    );
  }
}

class _MyHomePage extends StatefulWidget {
  const _MyHomePage();

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<_MyHomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Page1",
                
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.dashboard),
                label: "Page2",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.fact_check),
                label: "Page3",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "Page4",
              ),
            ],
            currentIndex: _selectedIndex,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            unselectedLabelStyle:const TextStyle(color: Colors.grey),
            iconSize: 40,
            unselectedItemColor: Colors.grey,
            selectedItemColor: Colors.amber[800],
            onTap: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            }),
        body: SafeArea(
          top: false,
          child: IndexedStack(
            index: _selectedIndex,
            children: const <Widget>[
              _Page1Navigator(),
              _Page2Navigator(),
              _Page3Navigator(),
              _Page4Navigator(),
            ],
          ),
        ),
      ),
    );
  }
}

//---------------- Page 1 -----------------------------------//
class _Page1Navigator extends StatefulWidget {
  const _Page1Navigator();

  @override
  _Page1NavigatorState createState() => _Page1NavigatorState();
}

GlobalKey<NavigatorState> _page1NavigatorKey = GlobalKey<NavigatorState>();

class _Page1NavigatorState extends State<_Page1Navigator> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: _page1NavigatorKey,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            settings: settings,
            builder: (BuildContext context) {
              if (settings.name == "/Page1List2") {
                return const Page1List2();
              }
              return const Page1List1();
            });
      },
    );
  }
}

class Page1List1 extends StatelessWidget {
  const Page1List1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        AppBar(
          title: const Text("Page1 List1"),
        ),
        TextButton(
          child: const Text("Go to Page1 List2"),
          onPressed: () => Navigator.pushNamed(context, '/Page1List2'),
        ),
      ],
    );
  }
}

class Page1List2 extends StatelessWidget {
  const Page1List2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        AppBar(
          title: const Text("Page1 List2"),
        )
      ],
    );
  }
}


//------------------ Page 2 -------------------------------//
class _Page2Navigator extends StatefulWidget {
  const _Page2Navigator();

  @override
  _Page2NavigatorState createState() => _Page2NavigatorState();
}

GlobalKey<NavigatorState> _page2NavigatorKey = GlobalKey<NavigatorState>();

class _Page2NavigatorState extends State<_Page2Navigator> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: _page2NavigatorKey,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            settings: settings,
            builder: (BuildContext context) {
              return const Page2List1();
            });
      },
    );
  }
}

class Page2List1 extends StatelessWidget {
  const Page2List1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        AppBar(
          title: const Text("Page 2"),
        ),
      ],
    );
  }
}


//------------------------- Page 3 ---------------------------//
class _Page3Navigator extends StatefulWidget {
  const _Page3Navigator();

  @override
  _Page3NavigatorState createState() => _Page3NavigatorState();
}

GlobalKey<NavigatorState> _page3NavigatorKey = GlobalKey<NavigatorState>();

class _Page3NavigatorState extends State<_Page3Navigator> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: _page3NavigatorKey,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            settings: settings,
            builder: (BuildContext context) {
              return const Page3List1();
            });
      },
    );
  }
}

class Page3List1 extends StatelessWidget {
  const Page3List1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        AppBar(
          title: const Text("Page 3"),
        ),
      ],
    );
  }
}


//--------------------------- Page 4 -------------------------//
class _Page4Navigator extends StatefulWidget {
  const _Page4Navigator();

  @override
  _Page4NavigatorState createState() => _Page4NavigatorState();
}

GlobalKey<NavigatorState> _page4NavigatorKey = GlobalKey<NavigatorState>();

class _Page4NavigatorState extends State<_Page4Navigator> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: _page4NavigatorKey,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            settings: settings,
            builder: (BuildContext context) {
              return const Page4List1();
            });
      },
    );
  }
}

class Page4List1 extends StatelessWidget {
  const Page4List1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        AppBar(
          title: const Text("Page 4"),
        ),
      ],
    );
  }
}