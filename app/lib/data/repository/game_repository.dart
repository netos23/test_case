import 'package:test_case/domain/models/game/level.dart';
import 'package:test_case/pages/game/level_pages/fin_test_1.dart';

import '../../domain/models/game/level_map.dart';

class GameRepository {
  List<LevelMap> levels = [
    LevelMap(
      title: 'Финансовая граммотность',
      levels: [
        Level(
          helloMessage:
              'Ой-ой я совсем забыл, завтра же день рождения у моей любимой бабушки. Я слышал на сайте kP4cUВbI3_цWetы.com можно заказать суперский букет. Поможешь мне?',
          byeMessage:
              'Что бы я без тебя то делал... Конечно придется покупать цветы по-старинке, но хотя бы будет на что',
          levelPage: const FinTest1PageWidget(),
        ),
        Level(),
        Level(),
        Level(),
        Level(),
        Level(),
      ],
      helloMessage:
          "Привет! Я слышал в нашей КиберЛяндии новый житель, я всегда рад новым знакомым, не против пройтись до того дерева?",
      currLevel: 0,
    )
  ];



}
