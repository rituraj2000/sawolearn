import 'package:sawolearn/Models/player.dart';

class PlayerList {
  List<Player> _playerList = [
    Player(
        srlNum: 199,
        height: 1.2,
        country: 'Pakistan',
        age: '35',
        image: 'pl1',
        name: 'Abdul Ali',
        rank: '047',
        status: 'Playing',
        weight: 78),
    Player(
        srlNum: 218,
        height: 0.96,
        country: 'Japan',
        age: '28',
        image: 'pl2',
        name: 'Cho Sang-Woo',
        rank: '047',
        status: 'Playing',
        weight: 78),
    Player(
        srlNum: 001,
        height: 1.2,
        country: 'Japan',
        age: '47',
        image: 'pl3',
        name: 'Oh Il-nam',
        rank: '047',
        status: 'Playing',
        weight: 56),
    Player(
        srlNum: 240,
        height: 1.3,
        country: 'Japan',
        age: '83',
        image: 'pl4',
        name: 'Ji-yeong',
        rank: '047',
        status: 'Playing',
        weight: 65),
  ];

  List<Player> get playerList {
    return [..._playerList];
  }
}
