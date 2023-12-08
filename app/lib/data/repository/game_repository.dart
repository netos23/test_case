import 'package:test_case/domain/models/game/level.dart';
import 'package:test_case/pages/game/components/red_button_variant.dart';
import 'package:test_case/pages/game/domain/shop_page_configuration.dart';
import 'package:test_case/pages/game/story_telling_utils.dart';
import 'package:test_case/router/app_router.dart';

import '../../domain/models/game/level_map.dart';

class GameRepository {
  List<LevelMap> levels = [
    LevelMap(
      title: 'Путешествие в магазин!',
      levels: [
        Level(
          numeric: 1,
          helloMessage: [
            Message(
              message:
                  'Ой-ой я совсем забыл, завтра же день рождения у моей любимой бабушки. На сайте kP4cUВbI3_цWetы.com.n3_0bm4n можно заказать суперский обед. Поможешь мне?',
              character: 'naiv',
            ),
          ],
          byeMessage: [
            Message(
                message: 'Что бы я без тебя то делал...', character: 'naiv'),
            Message(
                message:
                    'Надо признать, что отсутствие шифрования - первый признак опасного сайта',
                character: 'secure'),
            Message(
                message:
                    'Не стоит оставаться в нем надолго, а уж тем более указывать свои платежные данные',
                character: 'secure'),
            Message(
                message:
                    'Опять Наивчик вляпывается в какие-то ситуаций. Чтобы мы без тебя делали. Спасибо тебе',
                character: 'secure'),
          ],
          wrongMessage: [
            Message(
                message:
                    'Неееееет, Наивчик снова попался в руки мошенников. Хорошо, что в этом городе у меня есть возможность вернуть время назад. Давайте я верну все вспять, а вы попробуете снова',
                character: 'secure'),
          ],
          variant: [
            RedButtonVariant(message: 'Еда некрасивая'),
            RedButtonVariant(message: 'Еда просроченая'),
            RedButtonVariant(
                message: 'Незащищенный сайт выглядит странно', isTrue: true),
            RedButtonVariant(message: 'Я не хочу покупать еду!!'),
          ],
          levelPageBuilder: (level) => ShopGameRoute(
            level: level,
            config: ShopPageConfiguration(
              HTTPsecure: false,
              paymentUrl: 'http://forks_and_dishes.ru/pay',
              url: 'http://forks_and_dishes.ru',
            ),
          ),
        ),
        Level(
          numeric: 2,
          helloMessage: [
            Message(
              message:
                  'Спасибо за то, что спас меня в прошлый раз! Но больше такого не повторится! Я нашел надежный магазин, пошли со мной!',
              character: 'naiv',
            ),
          ],
          byeMessage: [
            Message(
                message: 'Да он же нормально выглядел...', character: 'naiv'),
            Message(
                message:
                    'Мошенники часто делают подделки на популярные сайты. Обычно это заметно по очень странной поисковой строке.',
                character: 'secure'),
            Message(
                message: 'И ты опять спас Наивчика. Спасибо тебе',
                character: 'secure'),
          ],
          wrongMessage: [
            Message(
                message:
                    'Неееееет, Наивчик снова попался в руки мошенников. Хорошо, что в этом городе у меня есть возможность вернуть время назад. Давайте я верну все вспять, а вы попробуете снова',
                character: 'secure'),
          ],
          variant: [
            RedButtonVariant(message: 'Еда некрасивая'),
            RedButtonVariant(
                message: 'Какая-то очень странная ссылка у это сайта...',
                isTrue: true),
            RedButtonVariant(message: 'Еда просроченая'),
            RedButtonVariant(message: 'Я не хочу покупать еду!!'),
          ],
          levelPageBuilder: (level) => ShopGameRoute(
            level: level,
            config: ShopPageConfiguration(
              url: 'https://f0rKKs_4nd_Dishes.zimbabve',
              paymentUrl: 'https://f0rKKs_4nd_Dishes.zimbabve/p4ym3nt',
            ),
          ),
        ),
        Level(
          numeric: 3,
          helloMessage: [
            Message(
              message:
                  'Ну нормальный же сайт был... Ну ладно, в этот раз все будет точно хорошо!',
              character: 'naiv',
            ),
          ],
          byeMessage: [
            Message(message: 'Это уже несмешно', character: 'naiv'),
            Message(
                message:
                    'Иногда мошенники настолько изощрены, что до последнего непонятно, что это фишинговый сайт.',
                character: 'secure'),
            Message(
                message:
                    'При оплате в интернете стоит внимательно смотреть на каком сайте вы оплачиваете. А еще лучше, если у вас включен безопасный режим.',
                character: 'secure'),
            Message(message: 'Эх, Наивчик, Наивчик...', character: 'secure'),
          ],
          wrongMessage: [
            Message(
                message:
                    'Неееееет, Наивчик снова попался в руки мошенников. Хорошо, что в этом городе у меня есть возможность вернуть время назад. Давайте я верну все вспять, а вы попробуете снова',
                character: 'secure'),
          ],
          variant: [
            RedButtonVariant(message: 'Еда некрасивая'),
            RedButtonVariant(message: 'Еда просроченая'),
            RedButtonVariant(message: 'Я не хочу покупать еду!!'),
            RedButtonVariant(
                message: 'А это точно безопасно оплачивать на этом сайте?',
                isTrue: true),
          ],
          levelPageBuilder: (level) => ShopGameRoute(
            level: level,
            config: ShopPageConfiguration(
              paymentUrl: 'https://f0rKKs_4nd_Dishes.zimbabve/p4ym3nt',
            ),
          ),
        ),
        Level(
          numeric: 4,
          helloMessage: [
            Message(
              message:
                  'Нуууу нееееет. Вот это ТОЧНО БЕЗОПАСНЫЙ. Пойдем за мной.',
              character: 'naiv',
            ),
          ],
          byeMessage: [
            Message(message: '...', character: 'naiv'),
            Message(
                message:
                    'Даже на популярных сайтах и форума встречается такая уловка. Обычно она маскируется под рекламу и очень коварна.',
                character: 'secure'),
            Message(
                message:
                    'А Наивчику стоит очередной раз пройти курс информационный безопасности. Ничему не учится...',
                character: 'secure'),
          ],
          wrongMessage: [
            Message(
                message:
                    'Неееееет, Наивчик снова попался в руки мошенников. Хорошо, что в этом городе у меня есть возможность вернуть время назад. Давайте я верну все вспять, а вы попробуете снова',
                character: 'secure'),
          ],
          variant: [
            RedButtonVariant(message: 'Еда некрасивая'),
            RedButtonVariant(
                message: 'Вряд ли сайт с двойной кнопкой может быть безопасен.',
                isTrue: true),
            RedButtonVariant(message: 'Еда просроченая'),
            RedButtonVariant(message: 'Я не хочу покупать еду!!'),
          ],
          levelPageBuilder: (level) => ShopGameRoute(
            level: level,
            config: ShopPageConfiguration(
              fakeButton: true,
            ),
          ),
        ),
        Level(
          numeric: 5,
          helloMessage: [
            Message(
              message: 'Ладно, давайте попробуем следующий',
              character: 'naiv',
            ),
          ],
          byeMessage: [
            Message(message: '...', character: 'naiv'),
            Message(
                message:
                    'Не советую переходить по странным рекламам и ссылкам, это может привести к потери данных.',
                character: 'secure'),
          ],
          wrongMessage: [
            Message(
                message:
                    'Неееееет, Наивчик снова попался в руки мошенников. Хорошо, что в этом городе у меня есть возможность вернуть время назад. Давайте я верну все вспять, а вы попробуете снова',
                character: 'secure'),
          ],
          variant: [
            RedButtonVariant(
                message: 'Странный сайт со странной рекламой.', isTrue: true),
            RedButtonVariant(message: 'Еда некрасивая'),
            RedButtonVariant(message: 'Еда просроченая'),
            RedButtonVariant(message: 'Я не хочу покупать еду!!'),
          ],
          levelPageBuilder: (level) => ShopGameRoute(
            level: level,
            config: ShopPageConfiguration(
              fakeAds: true,
            ),
          ),
        ),
        Level(
          numeric: 6,
          helloMessage: [
            Message(
              message: 'Я ТОЧНО НАЙДУ НОРМАЛЬНЫЙ МАГАЗИН.',
              character: 'naiv',
            ),
          ],
          byeMessage: [
            Message(message: 'да ну...', character: 'naiv'),
            Message(
                message:
                    'Не стоит скачивать приложения с сомнительных источников',
                character: 'secure'),
          ],
          wrongMessage: [
            Message(
                message:
                    'Неееееет, Наивчик снова попался в руки мошенников. Хорошо, что в этом городе у меня есть возможность вернуть время назад. Давайте я верну все вспять, а вы попробуете снова',
                character: 'secure'),
          ],
          variant: [
            RedButtonVariant(message: 'Еда некрасивая'),
            RedButtonVariant(message: 'Еда просроченая'),
            RedButtonVariant(message: 'Я не хочу покупать еду!!'),
            RedButtonVariant(
                message:
                    'Не стоит скачивать приложения с сомнительных источников',
                isTrue: true),
          ],
          levelPageBuilder: (level) => ShopGameRoute(
            level: level,
            config: ShopPageConfiguration(
              fakeMobileApp: true,
            ),
          ),
        ),
        Level(
          numeric: 7,
          helloMessage: [
            Message(
              message: 'Я устал',
              character: 'naiv',
            ),
          ],
          byeMessage: [
            Message(
                message:
                    'Оплата на сторонних источниках - практически всегда ошибка',
                character: 'secure'),
          ],
          wrongMessage: [
            Message(
                message:
                    'Неееееет, Наивчик снова попался в руки мошенников. Хорошо, что в этом городе у меня есть возможность вернуть время назад. Давайте я верну все вспять, а вы попробуете снова',
                character: 'secure'),
          ],
          variant: [
            RedButtonVariant(message: 'Еда некрасивая'),
            RedButtonVariant(message: 'Еда просроченая'),
            RedButtonVariant(message: 'Я не хочу покупать еду!!'),
            RedButtonVariant(
                message: 'Для оплаты лучше всегда оставаться в приложении.',
                isTrue: true),
          ],
          levelPageBuilder: (level) => ShopGameRoute(
            level: level,
            config: ShopPageConfiguration(
              outsitePayment: true,
            ),
          ),
        ),
        Level(
          numeric: 8,
          helloMessage: [
            Message(
              message:
                  'Нуууу нееееет. Вот это ТОЧНО БЕЗОПАСНЫЙ. Пойдем за мной.',
              character: 'naiv',
            ),
          ],
          byeMessage: [
            Message(message: 'Признаться, это было пугающе', character: 'naiv'),
            Message(
                message:
                    'Обычно, такие окна расчитаны на неожиданность и расстеряность пользователей.',
                character: 'secure'),
            Message(
                message:
                    'Не стоит поддаваться паники, надо просто закрыть окно и покинуть сайт.',
                character: 'secure'),
          ],
          wrongMessage: [
            Message(
                message:
                    'Неееееет, Наивчик снова попался в руки мошенников. Хорошо, что в этом городе у меня есть возможность вернуть время назад. Давайте я верну все вспять, а вы попробуете снова',
                character: 'secure'),
          ],
          variant: [
            RedButtonVariant(message: 'Еда некрасивая'),
            RedButtonVariant(message: 'Еда просроченая'),
            RedButtonVariant(message: 'Я не хочу покупать еду!!'),
            RedButtonVariant(
                message: 'Подобное вряд ли встречается на безопасных сайтах.',
                isTrue: true),
          ],
          levelPageBuilder: (level) => ShopGameRoute(
            level: level,
            config: ShopPageConfiguration(
              youAppWillBeDestroyed: true,
            ),
          ),
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
            message:
                'Недавно случилось пару неприятных инцендентов, а я уже старый шериф, потоэтому могу тебя попросить об одной услуге?',
            character: 'secure'),
        Message(
            message:
                'Если видишь что-то подозрительное, сразу жми на красную кнопку и докладывай! Удачного тебе путешествия!',
            character: 'secure'),
        Message(
          message: 'Вы идете вместе с Наивчиком до того дерева.',
        ),
      ],
      currLevel: 0,
    ),
    LevelMap(currLevel: 0, title: 'Общение с незнакомцами'),
    LevelMap(
      currLevel: 0,
      title: 'Пока закрыто!',
    ),
  ];
}
