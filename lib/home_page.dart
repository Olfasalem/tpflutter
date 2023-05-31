import 'package:flutter/material.dart';
import 'package:testolfasalem/mydrawer.dart';

class Home_Page extends StatefulWidget {
  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  var pays = [
    {
      'Capitale': 'Tunis',
      'Population': '12 Millions',
      'langue': 'Arabe',
      'Flag': 'assets/images/tn.png',
    },
    {
      'Capitale': 'Rabat',
      'Population': '38 Millions',
      'langue': 'Arabe',
      'Flag': 'assets/images/ma.png',
    },
    {
      'Capitale': 'Washington',
      'Population': '332 Millions',
      'langue': 'Anglais',
      'Flag': 'assets/images/us.png',
    },
    {
      'Capitale': 'Paris',
      'Population': '68 Millions',
      'langue': 'Francais',
      'Flag': 'assets/images/fr.png',
    },
    {
      'Capitale': 'Brasilia',
      'Population': '214 Millions',
      'langue': 'Portuguese',
      'Flag': 'assets/images/br.png',
    },
  ];
  var index = 0;

  void ChangeIndex(int newIndex) {
    setState(() {
      index = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text('Atlas Monde'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/');
            },
            icon: Icon(Icons.arrow_back),
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    "Cliquez sur un pays",
                    style: TextStyle(
                      fontSize: 100,
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontFamily: "myfont",
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    ChangeIndex(0);
                  },  style: ElevatedButton.styleFrom(
                    
                    fixedSize: Size(100, 20),
                    
                  ),
                  child: const Text('Tunisie'),
                ),
                ElevatedButton(
                  onPressed: () {
                    ChangeIndex(1);
                  },  style: ElevatedButton.styleFrom(
                    
                    fixedSize: Size(100, 20),
                    
                  ),
                  child: const Text('Maroc'),
                ),
                ElevatedButton(
                  onPressed: () {
                    ChangeIndex(2);
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(100, 20),
                  ),
                  child: const Text('USA'),
                ),
                ElevatedButton(
                  onPressed: () {
                    ChangeIndex(3);
                  },  style: ElevatedButton.styleFrom(
                    
                    fixedSize: Size(100, 20),
                    
                  ),
                  child: const Text('France'),
                ),
                ElevatedButton(
                  onPressed: () {
                    ChangeIndex(4);
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(100, 20),
                  ),
                  child: const Text('Brazil'),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Capitale :' + pays[index]['Capitale'].toString(),
                  style: TextStyle(
                    fontSize: 26,
                    letterSpacing: 2,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Population: " + pays[index]['Population'].toString(),
                  style: TextStyle(
                    fontSize: 26,
                    letterSpacing: 2,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Langue: " + pays[index]['langue'].toString(),
                  style: TextStyle(
                    fontSize: 26,
                    letterSpacing: 2,
                    color: Colors.orangeAccent,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  pays[index]['Flag'].toString(),
                  height: 250,
                  width: 300,
                  fit: BoxFit.fitWidth,
                )
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/');
        },
        child: Icon(Icons.cloud),
      ),
    );
  }
}
