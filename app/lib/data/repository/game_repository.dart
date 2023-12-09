import 'package:auto_route/auto_route.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rxdart/rxdart.dart';
import 'package:test_case/domain/models/game/level.dart';
import 'package:test_case/internal/app_components.dart';
import 'package:test_case/pages/game/chat/domain/entity/chat_action.dart';
import 'package:test_case/pages/game/chat/domain/entity/chat_message.dart';
import 'package:test_case/pages/game/chat/domain/entity/chat_message_link.dart';
import 'package:test_case/pages/game/chat/domain/entity/chat_user.dart';
import 'package:test_case/pages/game/chat/domain/entity/response_variant.dart';
import 'package:test_case/pages/game/chat/pages/chat_page/chat_interceptor.dart';
import 'package:test_case/pages/game/components/red_button_variant.dart';
import 'package:test_case/pages/game/domain/chat_page_configuration.dart';
import 'package:test_case/pages/game/domain/shop_page_configuration.dart';
import 'package:test_case/pages/game/story_telling_utils.dart';
import 'package:test_case/router/app_router.dart';

import '../../domain/models/game/level_map.dart';

class GameRepository {
  BehaviorSubject<Set<int>> passedGame = BehaviorSubject.seeded({});

  List<LevelMap> levels = [
    LevelMap(
      title: 'Путешествие в магазин!',
      image: 'assets/images/forest.png',
      levels: [
        Level(
          id: 1,
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
          id: 2,
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
          id: 3,
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
          id: 4,
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
          id: 5,
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
          id: 6,
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
          id: 7,
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
          id: 8,
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
    LevelMap(
        currLevel: 0,
        title: 'Пообщаемся?',
        image: 'assets/images/city.png',
        helloMessage: [
          Message(
              message:
                  'Смотри что мне подарили! Я слышал, люди называют это телефоном.',
              character: 'naiv'),
          Message(
              message:
                  'Я уже скачал НикитоГрамм. В нем так много интересных людей, с которыми можно пообщаться!',
              character: 'naiv'),
          Message(
              message: 'А это уже опасно. Можешь последить за ним?',
              character: 'secure'),
        ],
        levels: [
          tgLevel,
          tgLevel.copyWith(id: 10, numeric: 2),
          tgLevel.copyWith(id: 11, numeric: 3),
          tgLevel.copyWith(id: 12, numeric: 4),
          tgLevel.copyWith(id: 13, numeric: 5),
          tgLevel.copyWith(id: 14, numeric: 6),
          tgLevel.copyWith(id: 15, numeric: 7),
          tgLevel.copyWith(id: 16, numeric: 8),
        ]),
    LevelMap(
      currLevel: 0,
      title: 'Пока закрыто!',
    ),
  ];
}

final tgLevel = Level(
  numeric: 1,
  id: 9,
  helloMessage: [
    Message(
      message: 'ХНЫК-ХНЫК-ХНЫК',
      character: 'naiv',
    ),
  ],
  loseVariant: {3, 6, 4},
  winVariant: {5},
  wrongMessage: [
    Message(
      message:
          'Как хорошо, что в вашем городе есть такой шериф, как я, который может вернуть время вспять.',
      character: 'secure',
    ),
  ],
  byeMessage: [
    Message(
      message:
          'хнык. Спасибо, что помог мне. хнык. Этот НикитоГрамм не такую уж и добрый',
      character: 'naiv',
    ),
    Message(
      message:
          'Не стоит доверять незнакомым людям в интернете, которые предлагают легкую работу и большие деньги.',
      character: 'secure',
    ),
    Message(
      message: 'это может привести к большим проблема',
      character: 'secure',
    ),
  ],
  levelPageBuilder: (level) => ChatAppRoute(
    level: level,
    config: ChatPageConfiguration(
      chatInterceptor: Level1Interceptor(),
      actions: [
        ChatAction.message(
          message: ChatMessage(
            user: user,
            message: 'Привет как деда?',
            dateTime: DateTime.fromMillisecondsSinceEpoch(
              millisecondsSinceEpoch2,
            ),
          ),
          duration: Duration.zero,
        ),
        ChatAction.message(
          message: ChatMessage(
            user: user,
            message: 'Я максим из википелии. Как насчет поработать?',
            dateTime: DateTime.fromMillisecondsSinceEpoch(
              millisecondsSinceEpoch2 + 2000,
            ),
          ),
          duration: const Duration(seconds: 1),
        ),
        ChatAction.message(
          message: ChatMessage(
            user: myUser,
            message: 'Привет',
            dateTime: DateTime.fromMillisecondsSinceEpoch(
              millisecondsSinceEpoch2 + 3000,
            ),
          ),
          duration: const Duration(seconds: 1),
        ),
        ChatAction.responce(
          message: ChatMessage(
            user: myUser,
            message: '',
            dateTime: DateTime.fromMillisecondsSinceEpoch(
              millisecondsSinceEpoch2 + 2000,
            ),
          ),
          variants: [
            ResponseVariant(
              id: 1,
              message: 'А почему ты интерисуешься?',
              actions: [
                ChatAction.message(
                  message: ChatMessage(
                    user: user,
                    message: 'Ищу людей на работу',
                    dateTime: DateTime.fromMillisecondsSinceEpoch(
                      millisecondsSinceEpoch2 + 1000,
                    ),
                  ),
                  duration: Duration.zero,
                ),
                ChatAction.responce(
                    message: ChatMessage(
                      user: myUser,
                      message: '',
                      dateTime: DateTime.fromMillisecondsSinceEpoch(
                        millisecondsSinceEpoch2 + 1000,
                      ),
                    ),
                    variants: [
                      ResponseVariant(
                          id: 4, message: 'Ладно, я хочу', actions: []),
                      ResponseVariant(
                          id: 5, message: 'До свидания', actions: []),
                    ])
              ],
            ),
            ResponseVariant(
              id: 2,
              message: 'Мне кажется, что вы мошшенник?',
              actions: [
                ChatAction.message(
                  message: ChatMessage(
                    user: user,
                    message: 'Нет',
                    dateTime: DateTime.fromMillisecondsSinceEpoch(
                      millisecondsSinceEpoch2,
                    ),
                  ),
                  duration: Duration.zero,
                ),
                ChatAction.message(
                  message: ChatMessage(
                    user: user,
                    message: 'Просто ищу работников. зп от 200к - согласен?',
                    dateTime: DateTime.fromMillisecondsSinceEpoch(
                      millisecondsSinceEpoch2 + 1000,
                    ),
                  ),
                  duration: const Duration(seconds: 1),
                ),
                ChatAction.responce(
                    message: ChatMessage(
                      user: myUser,
                      message: '',
                      dateTime: DateTime.fromMillisecondsSinceEpoch(
                        millisecondsSinceEpoch2 + 2000,
                      ),
                    ),
                    variants: [
                      ResponseVariant(
                          id: 6, message: 'Я согласен!', actions: []),
                      ResponseVariant(
                          id: 5, message: 'До свидания', actions: []),
                    ])
              ],
            ),
            ResponseVariant(
              id: 3,
              message: 'Да',
              actions: [
                ChatAction.message(
                  message: ChatMessage(
                    user: user,
                    message: 'Привет как дела?',
                    dateTime: DateTime.fromMillisecondsSinceEpoch(
                      millisecondsSinceEpoch2,
                    ),
                  ),
                  duration: Duration.zero,
                ),
                ChatAction.message(
                  message: ChatMessage(
                    user: user,
                    message: 'Я максим из википелии. Как насчет поработать?',
                    dateTime: DateTime.fromMillisecondsSinceEpoch(
                      millisecondsSinceEpoch2 + 1000,
                    ),
                  ),
                  duration: const Duration(seconds: 1),
                ),
              ],
            ),
          ],
        )
      ],
      chatUser: user,
      myUser: myUser,
    ),
  ),
);

const user = ChatUser(
  name: 'Pavel',
  surname: 'Durov',
  avatar:
      'https://rgnp.ru/wp-content/uploads/4/0/c/40cdefa8a89fac40f9e6e6afd5ed25fc.jpeg',
);

const myUser = ChatUser(
  name: 'Nikita',
  surname: 'Morozov',
  avatar:
      'https://rgnp.ru/wp-content/uploads/4/0/c/40cdefa8a89fac40f9e6e6afd5ed25fc.jpeg',
);
var millisecondsSinceEpoch2 = DateTime.now().millisecondsSinceEpoch;

final class Level1Interceptor implements ChatInterceptor {
  @override
  Future<bool> onLink(ChatAction action, String url) async {
    return true;
  }

  @override
  Future<bool> onMessage(ChatAction action) async {
    return false;
  }

  @override
  Future<bool> onVariant(BuildContext context, ChatAction action,
      ResponseVariant variant, Level? level) async {
    if (level?.winVariant?.contains(variant.id) == true) {
      win(context, level);
      return true;
    }
    if (level?.loseVariant?.contains(variant.id) == true) {
      lose(context, level);
      return true;
    }
    return false;
  }
}

Future<void> win(BuildContext context, Level? level) async {
  context.router.popUntilRouteWithName(
    ChapterFinRoute.name,
  );
  context.router.push(
    TellingRoute(
      messages: level?.byeMessage ?? [],
    ),
  );

  AppComponents().gameRepository.passedGame.value = {
    ...AppComponents().gameRepository.passedGame.value,
    level?.id ?? 0
  };
}

Future<void> lose(BuildContext context, Level? level) async {
  context.router.popUntilRouteWithName(
    ChapterFinRoute.name,
  );
  context.router.push(
    TellingRoute(
      messages: level?.wrongMessage ?? [],
    ),
  );
}
