import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      showSemanticsDebugger: false,
      debugShowCheckedModeBanner: false,
      theme: const CupertinoThemeData(
        brightness: Brightness.light,
        primaryColor: Color.fromARGB(255, 208, 200, 200),
      ),
      home: CupertinoPageScaffold(
        child: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            items: const [
              BottomNavigationBarItem(
                label: 'Today',
                icon: Icon(CupertinoIcons.today),
              ),
              BottomNavigationBarItem(
                label: 'Games',
                icon: Icon(CupertinoIcons.game_controller),
              ),
              BottomNavigationBarItem(
                label: 'Apps',
                icon: Icon(CupertinoIcons.folder),
              ),
              BottomNavigationBarItem(
                label: 'Arcade',
                icon: Icon(CupertinoIcons.game_controller_solid),
              ),
              BottomNavigationBarItem(
                label: 'Search',
                icon: Icon(CupertinoIcons.search),
              ),
            ],
          ),
          tabBuilder: (context, index) => CupertinoTabView(
            builder: (context) => pages[index],
          ),
        ),
      ),
    );
  }
}

final List<Widget> pages = [
  const PageOne(),
  const PageTwo(),
  const PageThree(),
  const PageFour(),
  const PageFive(),
];

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 248, 246, 246),
      child: ListView(
        children: [
          const Row(
            children: <Widget>[
              Stack(
                children: [
                  Positioned(
                    child: Text("TODAY February 2", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ],
          ),

        //para las imagenes y textos.
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
              color: const Color.fromARGB(255, 38, 38, 38),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(12.0),
                          topRight: Radius.circular(12.0),
                        ),
                        child: Image.network(
                          'https://pbs.twimg.com/media/EV7498rXsAY1VZ-.jpg',
                          width: double.infinity,
                          height: 300.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'PARK JIMIN',
                              style: TextStyle(fontSize: 18.0, color: Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'BTS',
                              style: TextStyle(fontSize: 16.0, color: Color.fromARGB(255, 209, 207, 207)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  
                  Positioned(
                    bottom: 8.0,
                    right: 8.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const SizedBox(height: 8.0),
                        Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 58, 58, 58), 
                            borderRadius: BorderRadius.circular(8.0), 
                          ),
                          child: const TextButton(
                            onPressed: null, 
                            child: Text('Get', style: TextStyle(color: Colors.white)),
                          ),
                        ),
                        const Text(
                          'Talking',
                          style: TextStyle(fontSize: 8.0, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              color: const Color.fromARGB(255, 38, 38, 38),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(12.0),
                            topRight: Radius.circular(12.0),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(12.0),
                            topRight: Radius.circular(12.0),
                          ),
                          child: Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZ0nuv1orgvNMGu6GsclkxsYWpFCz299SYwA&usqp=CAU',
                            width: double.infinity,
                            height: 400.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Más sobre:',
                              style: TextStyle(fontSize: 18.0, color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Park Jimin of BTS',
                              style: TextStyle(fontSize: 16.0, color: Colors.white,),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Positioned(
                    bottom: 8.0,
                    right: 8.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(height: 8.0),
                        TextButton(
                          onPressed: null,
                          child: Icon(CupertinoIcons.cloud_download, color: CupertinoColors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text("Página 2");
  }
}

class PageThree extends StatelessWidget {
  const PageThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Pagina 3'),
    );
  }
}

class PageFour extends StatelessWidget {
  const PageFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Pagina 4'),
    );
  }
}

class PageFive extends StatelessWidget {
  const PageFive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      color: Colors.grey[100], 
      child: ListView(
        children: [
          Stack(
            alignment: Alignment.centerRight,
            children: [
              CupertinoSearchTextField(
                placeholder: 'Search',
                placeholderStyle: const TextStyle(color: Colors.grey),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                onSubmitted: (String value) {
                  print('Searched for: $value');
                },
              ),
              const Positioned(
                right: 8.0,
                child: Icon(
                  CupertinoIcons.mic,
                  color: Colors.grey,
                ),
              ),
            ],
          ),

          CupertinoListSection(
            header: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Favorites',
                  style: TextStyle(fontSize: 20.0, color: Colors.black),
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: Color.fromARGB(255, 3, 69, 139),
                ),
              ],
            ),
            children: const <Widget>[
              CupertinoListTile(
                title: Text('iCloudDrive'),
                leading: Icon(
                  CupertinoIcons.cloud,
                  color: Color.fromARGB(255, 133, 9, 158),
                ),
                trailing: CupertinoListTileChevron(),
              ),
              CupertinoListTile(
                title: Text('Recently Deleted'),
                leading: Icon(
                  CupertinoIcons.delete,
                  color: Color.fromARGB(255, 133, 9, 158),
                ),
                trailing: CupertinoListTileChevron(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
