import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Teachers Day App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.deepOrange,
          // color: Theme.of(context).primaryColor,
          backwardsCompatibility: true,
        ),
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.orange,
          primaryColorDark: Colors.deepOrange,
          backgroundColor: Colors.transparent,
        ).copyWith(
          secondary: Colors.indigoAccent,
          brightness: Brightness.dark,
        ),
      ),
      routes: {
        MainPage.routeName: (ctx) => const MainPage(),
        PageTwo.routeName: (ctx) => const PageTwo(),
        Credits.routeName: (ctx) => const Credits(),
      },
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  static const routeName = '/page-one';

  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Teachers\' Day App'),
      ),
      // backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(
          10,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                'Welcome to all those who are reading this, this is an app'
                'dedicated to teachers for teachers day. 😁',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Divider(),
              // SizedBox(
              //   height: 15,
              // ),
              const Text(
                'Teachers are a very important part of a each and everyone\'s '
                'lives. They help shape our future. They are the part reason '
                'we are in the position we are in right now. We are extremely '
                'grateful for all that you have done for us and we will be '
                'exceedingly thankful for all that we\'ve done.',
                // textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Divider(),
              Image.network(
                  'https://funkylife.in/wp-content/uploads/2021/08/teachers-day-wishes-9.jpg'),
              ElevatedButton(
                child: const Text('Next Page'),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed(PageTwo.routeName);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PageTwo extends StatefulWidget {
  static const routeName = '/page-two';

  const PageTwo({Key? key}) : super(key: key);

  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Teachers\' day quotes')),
      body: Padding(
        child: SingleChildScrollView(
          child: Column(children: [
            const Text('Some great quotes'),
            const Divider(),
            Image.network('https://images.hindustantimes'
                '.com/rf/image_size_640x362/HT/p2/2020/09/05/Pictures/_3cbf3e58-ef2d-11ea-970b-cd9b3c0381e8.png'),
            const Divider(),
            Image.network('https://st1.latestly'
                '.com/wp-content/uploads/2020/09/04-2020-09-04T104338.329.jpg'),
            const Divider(),
            Image.network(
                'https://cdn2.geckoandfly.com/wp-content/uploads/2019/05/teacher-quotes-11.jpg'),
            const Divider(),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(Credits.routeName);
              },
              child: const Text('Next Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(MainPage.routeName);
              },
              child: const Text('Previous Page'),
            ),
          ]),
        ),
        padding: const EdgeInsets.all(10),
      ),
    );
  }
}

class Credits extends StatefulWidget {
  static const routeName = '/credits';

  const Credits({Key? key}) : super(key: key);

  @override
  _CreditsState createState() => _CreditsState();
}

class _CreditsState extends State<Credits> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Credits'),
        ),
        body: Column(
          children: [
            const Text('Made by: '),
            const SizedBox(height: 1),
            const Text('Jeffrey Gabriel Harris'),
            const SizedBox(height: 1),
            const Text('Derwin Ralph. E'),
            const SizedBox(height: 1),
            const Text('Karthikeyan. S'),
            const SizedBox(height: 1),
            const Text('Rohan Karthik'),
            const SizedBox(height: 20),
            const Divider(),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(MainPage.routeName);
              },
              child: const Text('First Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(PageTwo.routeName);
              },
              child: const Text('Second Page'),
            ),
          ],
        ));
  }
}
