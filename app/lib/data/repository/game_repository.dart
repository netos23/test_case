import 'package:test_case/domain/models/game/level.dart';
import 'package:test_case/pages/game/level_pages/fin_test_1.dart';
import 'package:test_case/router/app_router.dart';

import '../../domain/models/game/level_map.dart';

class GameRepository {
  List<LevelMap> levels = [
    LevelMap(
      title: 'Финансовая грамотность',
      levels: [
        Level(
          numeric: 1,
          helloMessage:
              'Ой-ой я совсем забыл, завтра же день рождения у моей любимой бабушки. Я слышал на сайте kP4cUВbI3_цWetы.com можно заказать суперский букет. Поможешь мне?',
          byeMessage:
              'Что бы я без тебя то делал... Конечно придется покупать цветы по-старинке, но хотя бы будет на что',
          levelPage:  const FinTest1Route(),
        ),
        Level(numeric: 2, levelPage: FinTest1Route()),
        Level(numeric: 3, levelPage: FinTest1Route()),
        Level(numeric: 4, levelPage: FinTest1Route()),
        Level(numeric: 5, levelPage: FinTest1Route()),
        Level(numeric: 6, levelPage: FinTest1Route()),
      ],
      helloMessage:
          "Привет! Я слышал в нашей КиберЛяндии новый житель, я всегда рад новым знакомым, не против пройтись до того дерева?",
      currLevel: 0,
    )
  ];
}
