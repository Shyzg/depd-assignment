import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: 'Flutter Demo',
      theme: CupertinoThemeData(
        primaryColor: CupertinoColors.activeBlue,
        primaryContrastingColor: CupertinoColors.white,
        scaffoldBackgroundColor: CupertinoColors.activeGreen,
      ),
      home: MyHomePage(title: 'Mission 1'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool favorite = true;
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return CupertinoPageScaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: CupertinoColors.white,
      navigationBar: CupertinoNavigationBar(
        middle: const Text('Mission 1'),
        previousPageTitle: 'Home',
        leading: const Icon(
          CupertinoIcons.back,
          color: CupertinoColors.activeBlue,
          size: 28,
        ),
        trailing: CupertinoButton(
          padding: const EdgeInsets.all(0),
          onPressed: () => setState(() {
            favorite = !favorite;
          }),
          child: Icon(
            CupertinoIcons.heart_fill,
            color: favorite
                ? CupertinoColors.activeBlue
                : CupertinoColors.systemRed,
            size: 28,
          ),
        ),
        automaticallyImplyMiddle: false,
        automaticallyImplyLeading: false,
      ),
      child: SafeArea(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              Flexible(
                flex: 2,
                child: Image.asset(
                  'assets/images/ClashofClans.webp',
                  fit: BoxFit.cover,
                ),
              ),
              Flexible(
                flex: 1,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Flexible(
                        child: Image.asset(
                          'assets/images/ClashofClansIcon.webp',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Flexible(
                        child: Image.asset(
                          'assets/images/ClashRoyaleIcon.webp',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Flexible(
                        child: Image.asset(
                          'assets/images/BrawlStarsIcon.webp',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Flexible(
                        child: Image.asset(
                          'assets/images/HayDayIcon.webp',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ]),
              ),
              const Text(
                'Clash of Clans',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const Flexible(
                flex: 3,
                child: Text(
                  'Clash of Clans is a 2012 free-to-play mobile strategy video game developed and published by Finnish game developer Supercell. The game was released for iOS platforms on August 2, 2012, and on Google Play for Android on October 7, 2013. The game is set in a fantasy-themed persistent world where the player is a chief of a village. Clash of Clans tasks players to build their own village using the resources gained from attacking other player\'s villages with troops; earning rewards, buying them with medals or by producing them at their own village. The main resources are gold, elixir and dark elixir. Players can conjoin to create clans, groups of up to fifty people, who can then participate in Clan Wars together, donate and receive troops, and chat with each other. Clash of Clans was released to generally positive reviews from critics. Four spin-off games in the same universe of Clash of Clans were developed by Supercell. The first, Clash Royale, was released in 2016.[5] The other three, Clash Quest, Clash Minis, and Clash Heroes, were announced in April 2021. Clash Quest development was discontinued on 17 August 2022.',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
