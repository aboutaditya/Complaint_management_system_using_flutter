import 'package:flutter/material.dart';
import 'package:vit_management/pages/carpenter.dart';
import 'package:vit_management/pages/cleaner.dart';
import 'package:vit_management/pages/electrician.dart';
import 'package:vit_management/pages/other.dart';
import 'package:vit_management/pages/plumber.dart';
import 'drawer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Complaint System"),
        centerTitle: true,
      ),
      body: GridView.count(
        shrinkWrap: true,

        padding: EdgeInsets.all(0),
        addAutomaticKeepAlives: false,
        addRepaintBoundaries: false,
        addSemanticIndexes: false,
        // padding: EdgeInsets.all(0),
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        children: [
          Expanded(
            child: Column(
              // BoxConstraints(maxHeight: 200),
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Electrician()),
                    );
                  },
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.resolveWith<double>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.disabled)) {
                          return 0;
                        }
                        return 0;
                      },
                    ),
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed))
                          return Colors.white;
                        return Colors.white;
                      },
                    ),
                  ),
                  child: Image.asset(
                    "images/electrician.jpg",
                    height: 170,
                  ),
                ),
                Text("Electrician"),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const carpenter()),
                    );
                  },
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.resolveWith<double>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.disabled)) {
                          return 0;
                        }
                        return 0;
                      },
                    ),
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed))
                          return Colors.white;
                        return Colors.white;
                      },
                    ),
                  ),
                  child: Image.asset(
                    "images/carpenter.jpg",
                    height: 170,
                  ),
                ),
                Text("Carpenter")
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const cleaner()),
                    );
                  },
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.resolveWith<double>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.disabled)) {
                          return 0;
                        }
                        return 0;
                      },
                    ),
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed))
                          return Colors.white;
                        return Colors.white;
                      },
                    ),
                  ),
                  child: Image.asset(
                    "images/cleaner.jpg",
                    height: 170,
                  ),
                ),
                Text("Cleaner")
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const plumber()),
                    );
                  },
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.resolveWith<double>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.disabled)) {
                          return 0;
                        }
                        return 0;
                      },
                    ),
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed))
                          return Colors.white;
                        return Colors.white;
                      },
                    ),
                  ),
                  child: Image.asset(
                    "images/plumber.jpg",
                    height: 170,
                  ),
                ),
                Text("Plumber")
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const other()),
                    );
                  },
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.resolveWith<double>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.disabled)) {
                          return 0;
                        }
                        return 0;
                      },
                    ),
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed))
                          return Colors.white;
                        return Colors.white;
                      },
                    ),
                  ),
                  child: Image.asset(
                    "images/others.jpg",
                    height: 170,
                  ),
                ),
                Text("Others")
              ],
            ),
          ),
        ],
      ),
      drawer: drawer(),
    );
  }
}