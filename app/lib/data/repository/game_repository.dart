import 'package:test_case/domain/models/game/level.dart';
import 'package:test_case/pages/game/components/red_button_variant.dart';
import 'package:test_case/pages/game/story_telling_utils.dart';
import 'package:test_case/router/app_router.dart';

import '../../domain/models/game/level_map.dart';

class GameRepository {
  List<LevelMap> levels = [
    LevelMap(
      title: 'Финансовая грамотность',
      levels: [
        Level(
          numeric: 1,
          helloMessage: [
            Message(
              message:
                  'Ой-ой я совсем забыл, завтра же день рождения у моей любимой бабушки. На сайте kP4cUВbI3_цWetы.com.n3_0bm4n можно заказать суперский букет. Поможешь мне?',
              character: 'naiv',
            ),
          ],
          byeMessage: [
            Message(
                message:
                    'Что бы я без тебя то делал... Конечно придется покупать цветы по-старинке, но хотя бы будет на что',
                character: 'naiv'),
            Message(
                message: 'Эх, чтобы мы без тебя делали. Спасибо тебе',
                character: 'secure'),
          ],
          wrongMessage: [
            Message(
                message:
                    'Неееееет. Хорошо, что в этом городе у меня есть возможность вернуть время назад. Давайте я верну все вспять, а вы попробуете снова',
                character: 'secure'),
          ],
          variant: [
            RedButtonVariant(message: 'Цветы некрасивые'),
            RedButtonVariant(message: 'Цветы просрочены'),
            RedButtonVariant(
                message: 'Не стоит указывать свою карту!', isTrue: true),
            RedButtonVariant(message: 'Я не хочу покупать цветы'),
          ],
          levelPageBuilder: (level) => FinTest1Route(level: level),
        ),
        Level(
          numeric: 2,
          levelPageBuilder: (level) => FinTest1Route(level: level),
        ),
        Level(
          numeric: 3,
          levelPageBuilder: (level) => FinTest1Route(level: level),
        ),
        Level(
          numeric: 4,
          levelPageBuilder: (level) => FinTest1Route(level: level),
        ),
        Level(
          numeric: 5,
          levelPageBuilder: (level) => FinTest1Route(level: level),
        ),
        Level(
          numeric: 6,
          levelPageBuilder: (level) => FinTest1Route(level: level),
        ),
      ],
      helloMessage: [
        Message(
            message:
                'Привет! Меня зовут Наивчик! Я слышал, что в нашей Киберляндии новый житель! Я так рад встречать новых друзей! Пройдешься со мной до того дерева?',
            character: 'naiv'),
        Message(
            message:
                'Добро пожаловать! У нас самый безопасный город, но будь осторожен, мошенники не дремлют!',
            character: 'secure'),
        Message(
          message: 'Вы идете вместе с Наивчиком до того дерева.',
        ),
      ],
      currLevel: 0,
    )
  ];
}
