import 'package:auto_size_text/auto_size_text.dart';
import 'package:diagon_test_ui/screens/home/home_behavior.dart';
import 'package:diagon_test_ui/screens/home/widgets/app_bar.dart';
import 'package:diagon_test_ui/screens/home/widgets/game_tile.dart';
import 'package:diagon_test_ui/screens/home/widgets/three_person_images_row.dart';
import 'package:diagon_test_ui/screens/home/widgets/tournament_tile.dart';
import 'package:flutter/material.dart';
import '../../colors.dart';

class Home extends StatelessWidget with HomeBehavior {
  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(DiagonColors.homeScreenBackgroundColor),
      extendBodyBehindAppBar: true,
      appBar: appBar(),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            const Image(
              image: AssetImage('assets/images/home/top_background_blur.png'),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: ((kToolbarHeight) + MediaQuery.of(context).viewPadding.top),),
                // header image of 8 ball pool
                const Padding(
                  padding: EdgeInsets.only(left: 9, right: 9, top: 20),
                  child: Image(
                    image: AssetImage('assets/images/home/header_image.png'),
                  ),
                ),
                // 'Top Games' text section
                const Padding(
                  padding: EdgeInsets.only(left: 19),
                  child: SizedBox(
                    height: 60,
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: AutoSizeText(
                        'Top Games',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w800,
                          fontFamily: 'inter_regular',
                        ),
                      ),
                    ),
                  ),
                ),
                // Listview of games thumbnail
                SizedBox(
                  height: 165,
                  child: Center(
                    child: ListView.builder(
                      padding: const EdgeInsets.only(left: 18),
                      itemCount: gamesThumbnailPathList.length,
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Image(
                          height: 142,
                          width: 142,
                          image: AssetImage(
                              gamesThumbnailPathList[index],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                // 'Daily Challenge' text section
                const Padding(
                  padding: EdgeInsets.only(left: 19),
                  child: SizedBox(
                    height: 45,
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: AutoSizeText(
                        'Daily Challenge',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w800,
                          fontFamily: 'poppins_regular',
                        ),
                      ),
                    ),
                  ),
                ),
                // daily challenges section
                SizedBox(
                  height: 250,
                  child: Stack(
                    children: [
                      ListView.builder(
                        padding: const EdgeInsets.only(left: 18, top: 20),
                        itemCount: dailyChallengeGameList.length,
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image(
                                height: 143,
                                width: 143,
                                image: AssetImage(
                                  dailyChallengeGameList[index].imagePath,
                                ),
                              ),
                              const SizedBox(height: 10,),
                              AutoSizeText(
                                dailyChallengeGameList[index].name,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'poppins_regular',
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const ThreePersonImagesRow(),
                                  const SizedBox(width: 3,),
                                  AutoSizeText(
                                    dailyChallengeGameList[index].score,
                                    minFontSize: 9,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'poppins_regular',
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 84,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/home/daily_challenges_menu_bar.png',
                            ),
                          )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                Image(
                                  height: 22,
                                  width: 22,
                                  image: AssetImage(
                                    'assets/images/home/games_icon.png',
                                  ),
                                ),
                                SizedBox(height: 2,),
                                AutoSizeText(
                                  'Games',
                                  minFontSize: 6,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 8,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'inter_regular',
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                Image(
                                  height: 22,
                                  width: 22,
                                  image: AssetImage(
                                    'assets/images/home/tournaments_icon.png',
                                  ),
                                ),
                                SizedBox(height: 2,),
                                AutoSizeText(
                                  'Tournaments',
                                  minFontSize: 6,
                                  style: TextStyle(
                                    color: Color(0xFF2C2E43),
                                    fontSize: 8,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'inter_regular',
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                Image(
                                  height: 22,
                                  width: 22,
                                  image: AssetImage(
                                    'assets/images/home/leader_board_icon.png',
                                  ),
                                ),
                                SizedBox(height: 2,),
                                AutoSizeText(
                                  'Leaderboard',
                                  minFontSize: 6,
                                  style: TextStyle(
                                    color: Color(0xFF2C2E43),
                                    fontSize: 8,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'inter_regular',
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                Image(
                                  height: 22,
                                  width: 22,
                                  image: AssetImage(
                                    'assets/images/home/wallet_icon.png',
                                  ),
                                ),
                                SizedBox(height: 2,),
                                AutoSizeText(
                                  'Transactions',
                                  minFontSize: 6,
                                  style: TextStyle(
                                    color: Color(0xFF2C2E43),
                                    fontSize: 8,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'inter_regular',
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // 'Tournaments' text section
                const Padding(
                  padding: EdgeInsets.only(left: 19),
                  child: SizedBox(
                    height: 45,
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: AutoSizeText(
                        'Tournaments',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'poppins_regular',
                        ),
                      ),
                    ),
                  ),
                ),
                // Listview of Tournaments
                SizedBox(
                  height: 360,
                  child: ListView.builder(
                    padding: const EdgeInsets.only(left: 18),
                    itemCount: 4,
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => const TournamentTile(),
                  ),
                ),
                // 'All Games' text section
                const Padding(
                  padding: EdgeInsets.only(left: 19),
                  child: SizedBox(
                    height: 45,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: AutoSizeText(
                        'All Games',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w800,
                          fontFamily: 'poppins_regular',
                        ),
                      ),
                    ),
                  ),
                ),
                // Listview of all games
                ListView.builder(
                  shrinkWrap: true,
                  padding: const EdgeInsets.only(left: 18),
                  itemCount: gameTileList.length,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => GameTile(gameTile: gameTileList[index]),
                ),
                // see more section
                SizedBox(
                  height: 60,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Image(
                          height: 23,
                          width: 23,
                          image: AssetImage('assets/images/home/arrow_right.png'),
                        ),
                        SizedBox(width: 10,),
                        AutoSizeText(
                          'See More',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'inter_regular',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // 'Earn Tokens' text section
                const Padding(
                  padding: EdgeInsets.only(left: 19),
                  child: SizedBox(
                    height: 45,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: AutoSizeText(
                        'Earn Tokens',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'poppins_regular',
                        ),
                      ),
                    ),
                  ),
                ),
                // Listview of earn tokens
                SizedBox(
                  height: 223,
                  child: ListView.builder(
                    padding: const EdgeInsets.only(left: 18, top: 18),
                    itemCount: 4,
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => const Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Image(
                        image: AssetImage(
                          'assets/images/home/token_image.png',
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 50,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}