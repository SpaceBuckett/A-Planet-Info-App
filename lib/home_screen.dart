import 'package:flutter/material.dart';
import 'package:planetinfoapp/info_page.dart';
import 'planet_card.dart';
import 'constants.dart';

class MySliverAppBar extends StatefulWidget {
  const MySliverAppBar({Key? key}) : super(key: key);

  @override
  _MySliverAppBarState createState() => _MySliverAppBarState();
}

class _MySliverAppBarState extends State<MySliverAppBar> {
  bool _pinned = true;
  bool _snap = false;
  bool _floating = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: Colors.blueGrey,
              pinned: _pinned,
              snap: _snap,
              floating: _floating,
              expandedHeight: kSliverAppBarHeight,
              flexibleSpace: const FlexibleSpaceBar(
                title: Text('Galaxy Scrappers'),
                centerTitle: true,
                background: Image(
                  image: AssetImage('images/look.jpg'),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  GestureDetector(
                    onTap: () {
                      planetNumber = 0;
                      setState(
                        () {
                          Navigator.pushNamed(context, 'planetDetailPage');
                        },
                      );
                    },
                    child: PlanetCard(
                      planetImagePath: 'images/mercury.png',
                      planetName: 'Mercury',
                      planetNickName: 'Speedy Messenger',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      planetNumber = 1;
                      setState(
                        () {
                          Navigator.pushNamed(context, 'planetDetailPage');
                        },
                      );
                    },
                    child: PlanetCard(
                      planetImagePath: 'images/venus.png',
                      planetName: 'Venus',
                      planetNickName: 'The Morning Star',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      planetNumber = 2;
                      setState(
                        () {
                          Navigator.pushNamed(context, 'planetDetailPage');
                        },
                      );
                    },
                    child: PlanetCard(
                      planetImagePath: 'images/earth.png',
                      planetName: 'Earth',
                      planetNickName: 'Blue Planet',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      planetNumber = 3;
                      setState(
                        () {
                          Navigator.pushNamed(context, 'planetDetailPage');
                        },
                      );
                    },
                    child: PlanetCard(
                      planetImagePath: 'images/mars.png',
                      planetName: 'Mars',
                      planetNickName: 'The Red Planet',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      planetNumber = 4;
                      setState(
                        () {
                          Navigator.pushNamed(context, 'planetDetailPage');
                        },
                      );
                    },
                    child: PlanetCard(
                      planetImagePath: 'images/jupiter.png',
                      planetName: 'Jupiter',
                      planetNickName: 'The Gas Giant',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      planetNumber = 5;
                      setState(
                        () {
                          Navigator.pushNamed(context, 'planetDetailPage');
                        },
                      );
                    },
                    child: PlanetCard(
                      planetImagePath: 'images/saturn.png',
                      planetName: 'Saturn',
                      planetNickName: 'The Ringed Planet',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      planetNumber = 6;
                      setState(
                        () {
                          Navigator.pushNamed(context, 'planetDetailPage');
                        },
                      );
                    },
                    child: PlanetCard(
                      planetImagePath: 'images/uranus.png',
                      planetName: 'Uranus',
                      planetNickName: 'The Bulls-Eye Planet',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      planetNumber = 7;
                      setState(
                        () {
                          Navigator.pushNamed(context, 'planetDetailPage');
                        },
                      );
                    },
                    child: PlanetCard(
                      planetImagePath: 'images/neptune.png',
                      planetName: 'Neptune',
                      planetNickName: 'The Windy Planet',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
