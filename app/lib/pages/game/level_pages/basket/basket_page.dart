import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_case/domain/models/game/level.dart';
import 'package:test_case/pages/game/components/browser_overlay.dart';
import 'package:test_case/pages/game/components/red_alert_button.dart';
import 'package:test_case/pages/game/domain/item.dart';
import 'package:test_case/pages/game/domain/shop_page_configuration.dart';
import 'package:test_case/pages/game/level_pages/payment/payment_page.dart';
import 'package:test_case/router/app_router.dart';

const List<Item> _items = [
  Item(
    name: 'Испанская пицца',
    totalPriceCents: 1299,
    uid: '1',
    imageProvider: 'https://flutter'
        '.dev/docs/cookbook/img-files/effects/split-check/Food1.jpg',
  ),
  Item(
    name: 'Овощное наслаждение',
    totalPriceCents: 799,
    uid: '2',
    imageProvider: 'https://flutter'
        '.dev/docs/cookbook/img-files/effects/split-check/Food2.jpg',
  ),
  Item(
    name: 'Курица с пармезаном',
    totalPriceCents: 1499,
    uid: '3',
    imageProvider: 'https://flutter'
        '.dev/docs/cookbook/img-files/effects/split-check/Food3.jpg',
  ),
];

class BasketPage extends StatefulWidget {
  const BasketPage({
    super.key,
    this.level,
    this.config,
  });

  final Level? level;
  final ShopPageConfiguration? config;

  @override
  State<BasketPage> createState() => _BasketPageState();
}

class _BasketPageState extends State<BasketPage> {
  Stream counter = Stream.periodic(
    const Duration(seconds: 1),
    (computationCount) {

    },
  );
  Timer? timer;

  @override
  void initState() {
    super.initState();
    timer = Timer(
      const Duration(seconds: 1),
      () {
        counter--;
        if (counter == 0) {}
      },
    );
    if (widget.config?.youAppWillBeDestroyed == true) {
      showDialog(
        context: context,
        builder: (context) {
          return SizedBox(
            height: 300,
            width: 400,
            child: Column(
              children: [
                Text('ВАШ ТЕЛЕФОН ВЗОРВЕТСЯ ЧЕРЕЗ $counter'),
                const Text(
                    'ЧТОБЫ ОСТАНОВИТЬ ВЗРЫВ ПЕРЕВЕДИТЕ СКАЧАЙТЕ АНТИВИРУС ПО ССЫЛКЕ'),
                InkWell(
                  child: const Text(
                    'https://4ntI-b0mbA.t04no.neVry.com',
                    style: TextStyle(color: Colors.blue),
                  ),
                  onTap: () {
                    lose(context, widget.level);
                  },
                )
              ],
            ),
          );
        },
      );
    }
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

  @override
  Widget build(BuildContext context) {
    return BrowserOverlay(
      url: widget.config?.url ?? 'https://forks_and_dishes.ru/pay',
      secure: widget.config?.HTTPsecure ?? true,
      body: Scaffold(
        floatingActionButton: RedAlertButton(
          level: widget.level,
        ),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: SizedBox(
                  height: 80,
                  child: Image.asset(
                    'assets/images/draw_svg20210813-6735-ymh2xo.svg.png',
                  ),
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              sliver: SliverList.separated(
                itemCount: _items.length,
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 12,
                  );
                },
                itemBuilder: (context, index) {
                  final item = _items[index];
                  return MenuListItem(
                    name: item.name,
                    price: item.formattedTotalItemPrice,
                    photoProvider: NetworkImage(
                      item.imageProvider,
                    ),
                  );
                },
              ),
            ),
            if (widget.config?.fakeAds == true)
              Image.asset('assets/images/casion.png'),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 50,
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 235,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'К оплате',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                          Text(
                            _items
                                .map((i) => i.totalPriceCents)
                                .reduce((a, b) => a + b)
                                .toStringAsFixed(2),
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                        ],
                      ),
                      if (widget.config?.fakeButton == true)
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: SizedBox(
                              child: Image.asset('assets/images/oplata.png')),
                        ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 16.0,
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size.fromHeight(60),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            backgroundColor:
                                const Color.fromARGB(255, 253, 99, 38),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(
                              PageRouteBuilder(
                                pageBuilder: (context, _, __) => PaymentPage(
                                  level: widget.level,
                                  config: widget.config,
                                ),
                              ),
                            );
                          },
                          child: const Center(
                            child: Text(
                              'Оплатить',
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MenuListItem extends StatelessWidget {
  const MenuListItem({
    super.key,
    this.name = '',
    this.price = '',
    required this.photoProvider,
    this.isDepressed = false,
    this.onAdd,
  });

  final VoidCallback? onAdd;
  final String name;
  final String price;
  final ImageProvider photoProvider;
  final bool isDepressed;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 12,
      borderRadius: BorderRadius.circular(20),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: SizedBox(
                width: 120,
                height: 120,
                child: Center(
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 100),
                    curve: Curves.easeInOut,
                    height: isDepressed ? 115 : 120,
                    width: isDepressed ? 115 : 120,
                    child: Image(
                      image: photoProvider,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontSize: 18,
                        ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    price,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
