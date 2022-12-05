import 'package:auto_size_text/auto_size_text.dart';
import 'package:diagon_test_ui/screens/home/models/game_tile_model.dart';
import 'package:diagon_test_ui/screens/home/widgets/three_person_images_row.dart';
import 'package:flutter/material.dart';

class GameTile extends StatelessWidget {
  const GameTile({Key? key, required this.gameTile}) : super(key: key);

  final GameTileModel gameTile;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 0.0),
          leading: Image(
            image: AssetImage(gameTile.imagePath),
          ),
          title: AutoSizeText(
            gameTile.name,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w600,
              fontFamily: 'poppins_regular',
            ),
          ),
          subtitle: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const ThreePersonImagesRow(),
              const SizedBox(width: 5,),
              AutoSizeText(
                gameTile.score,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'poppins_regular',
                ),
              ),
            ],
          ),
          trailing: Container(
            margin: const EdgeInsets.only(right: 20),
            alignment: Alignment.center,
            height: 48,
            width: 92,
            decoration: BoxDecoration(
              color: const Color(0xFF00B669),
              borderRadius: BorderRadius.circular(15),
            ),
            child: const AutoSizeText(
              'PLAY',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w700,
                fontFamily: 'poppins_regular',
              ),
            ),
          ),
        ),
        const Divider(
          thickness: 1,
          color: Color(0xFF171B3A),
        ),
      ],
    );
  }
}
