import 'package:flutter/material.dart';
import 'package:myapp/screens/add.dart';
import 'package:myapp/screens/home.dart';
import 'package:myapp/screens/list.dart';
import 'package:myapp/screens/setting.dart';
import 'package:myapp/screens/login.dart';

void main() {
  runApp(MyApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: LoginScreen(),
//     );
//   }
// }

class MyApp extends StatefulWidget {
  static void resetApp(BuildContext context) {
    final _MyAppState? state = context.findAncestorStateOfType<_MyAppState>();
    state?.resetApp();
  }

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Key _appKey = UniqueKey();

  void resetApp() {
    setState(() {
      _appKey = UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      key: _appKey,
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage();

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
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
              return const Home();
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
              return const Add();
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
          title: const Text("Page Add"),
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
              return const List();
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
              return const Setting();
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