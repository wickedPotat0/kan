import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  // age title list
  static Map<String, List<Map<String, String>>> ageGroupDat = {
    '10s': [
      {'title': '학교생활', 'route': '/school'},
      {'title': '친구', 'route': '/friends'},
      {'title': '게임', 'route': '/games'},
      {'title': '학업', 'route': '/study'},
    ],
    '20s': [
      {'title': '연애', 'route': '/love'},
      {'title': '취업', 'route': '/job'},
      {'title': '여행', 'route': '/travel'},
      {'title': '다이어트', 'route': '/diet'},
    ],
    '30s': [
      {'title': '결혼', 'route': '/marriage'},
      {'title': '군대', 'route': '/military'},
      {'title': '반려동물', 'route': '/pets'},
      {'title': '다이어트', 'route': '/diet'},
    ],
    '40s': [
      {'title': '가족', 'route': '/family'},
      {'title': '재테크', 'route': '/finance'},
      {'title': '건강관리', 'route': '/health'},
      {'title': '직장', 'route': '/work'},
    ],
    '50s': [
      {'title': '가족', 'route': '/family'},
      {'title': '재테크', 'route': '/finance'},
      {'title': '건강관리', 'route': '/health'},
      {'title': '직장', 'route': '/work'},
    ],
    '60s': [
      {'title': '가족', 'route': '/family'},
      {'title': '재테크', 'route': '/finance'},
      {'title': '건강관리', 'route': '/health'},
      {'title': '직장', 'route': '/work'},
    ],
    '70s': [
      {'title': '가족', 'route': '/family'},
      {'title': '재테크', 'route': '/finance'},
      {'title': '건강관리', 'route': '/health'},
      {'title': '직장', 'route': '/work'},
    ],
  };

  final String currentAge = '30s';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kan'), centerTitle: true, backgroundColor: Colors.green,
        actions: [  // 상단 왼쪽 items
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/search');
              },
              icon: Icon(Icons.search)
          ),
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/alerm');
              },
              icon: Icon(Icons.notifications)
          ),
        ],
      ),
      drawer: Drawer( // menu : sidebar
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Container(
                height: 100,
                color: Colors.lightGreen,
                padding: const EdgeInsets.only(left: 10, top: 30),
                alignment: Alignment.centerLeft,
                child: Text('$currentAge KAN', style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w800),),
              ),
              ...ageGroupDat[currentAge]!.map((item) {
                return ListTile(
                  title: Text(item['title']!),
                  onTap: () {
                    Navigator.pushNamed(context, '/board',
                      arguments: {'title': item['title'], 'category': item["route"], 'ageGroup': currentAge},
                    );
                  },
                );
              })
            ],
          ),
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: Container(
          width: double.infinity, height: 50, child: Text('kan'),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // label 노출 안함.
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (index) {
          if (index == 0) {
            Navigator.pushNamed(context, '/');
          }
          if (index == 1) {
            Navigator.pushNamed(context, '/message');
          }
          if (index == 2) {
            Navigator.pushNamed(context, '/profile');
          }
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'message'),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'profile'),
        ],
      ),
    );
  }
}
