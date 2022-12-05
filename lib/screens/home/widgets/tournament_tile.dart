import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class TournamentTile extends StatelessWidget {
  const TournamentTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children:  [
          Container(
            height: 224,
            width: MediaQuery.of(context).size.width - 20,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/home/tournament_list_item_game_image.png',
                ),
              ),
            ),
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                margin: const EdgeInsets.only(top: 20, right: 20),
                height: 34,
                width: 57,
                decoration: BoxDecoration(
                    color: const Color(0xFF0E2D5B),
                    borderRadius: BorderRadius.circular(17)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Image(
                      height: 19,
                      width: 19,
                      image: AssetImage(
                        'assets/images/home/app_bar/trailing_section/coin.png',
                      ),
                    ),
                    SizedBox(width: 3,),
                    AutoSizeText(
                      '10',
                      minFontSize: 9,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'poppins_regular',
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 94,
            width: MediaQuery.of(context).size.width - 20,
            decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/home/tournament_list_item_bottom_rectangle.png',
                  ),
                )
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Image(
                    height: 58,
                    width: 58,
                    image: AssetImage(
                      'assets/images/home/table_tennis.png',
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Icon(Icons.timer_outlined, color: Colors.white, size: 22),
                          SizedBox(width: 3,),
                          AutoSizeText(
                            '1m 25s',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'poppins_regular',
                            ),
                          ),
                        ],
                      ),
                      const AutoSizeText(
                        'Ends in 24hrs',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'poppins_regular',
                        ),
                      ),
                    ],
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
