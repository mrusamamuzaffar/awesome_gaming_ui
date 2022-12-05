import 'package:diagon_test_ui/screens/home/models/daily_challenge_game_model.dart';
import 'package:diagon_test_ui/screens/home/models/game_tile_model.dart';

mixin HomeBehavior {
  List<String> gamesThumbnailPathList = const [
    'assets/images/home/totemia.png',
    'assets/images/home/3d_chess.png',
    'assets/images/home/totemia.png',
    'assets/images/home/3d_chess.png',
  ];

  List<DailyChallengeGameModel> dailyChallengeGameList = [
    DailyChallengeGameModel(imagePath: 'assets/images/home/city_dunk.png', name: 'CITY DUNK', score: '5000'),
    DailyChallengeGameModel(imagePath: 'assets/images/home/8_ball.png', name: '8 BALL', score: '100'),
    DailyChallengeGameModel(imagePath: 'assets/images/home/city_dunk.png', name: 'CITY DUNK', score: '5000'),
    DailyChallengeGameModel(imagePath: 'assets/images/home/8_ball.png', name: '8 BALL', score: '100'),
  ];

  List<GameTileModel> gameTileList = [
    GameTileModel(imagePath: 'assets/images/home/game_tile/city_dunk_game_tile_icon.png', name: 'City Dunk', score: '5,820'),
    GameTileModel(imagePath: 'assets/images/home/game_tile/archery_game_tile_icon.png', name: 'Archery', score: '5,820'),
    GameTileModel(imagePath: 'assets/images/home/game_tile/8_ball_game_tile_icon.png', name: '8 Ball', score: '5,820'),
    GameTileModel(imagePath: 'assets/images/home/game_tile/truck_game_tile_icon.png', name: 'Truck', score: '5,820'),
    GameTileModel(imagePath: 'assets/images/home/game_tile/totemia_game_tile_icon.png', name: 'Totemia', score: '5,820'),
  ];
}