import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:test_case/pages/game/components/browser_overlay.dart';
import 'package:test_case/pages/game/components/red_alert_button.dart';
import 'package:test_case/pages/game/domain/shop_page_configuration.dart';
import 'package:test_case/router/app_router.dart';

import '../../../../domain/models/game/level.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({
    super.key,
    this.level,
    this.config,
  });

  final Level? level;
  final ShopPageConfiguration? config;

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  final cardNumController = MaskedTextController(
    mask: '0000 0000 0000 0000',
  );
  final cardDateController = MaskedTextController(
    mask: '00/00',
  );
  final cvvController = MaskedTextController(
    mask: '000',
  );
  final nameController = TextEditingController();
  final cvvFocus = FocusNode();

  @override
  void initState() {
    super.initState();
    if (widget.config?.fakeMobileApp == true) {
      showDialog(
        context: context,
        builder: (context) {
          return SizedBox(
            height: 300,
            width: 400,
            child: Column(
              children: [
                const Text('Только исклюзивное предложение'),
                const Text(
                    'Вы можете платить намного меньше, просто скачав наше приложение с этого сайта!'),
                InkWell(
                  child: const Text(
                    'https://n3_0bmAn.cstf.ctf.vs.com/',
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

  @override
  Widget build(BuildContext context) {
    return BrowserOverlay(
      url: widget.config?.paymentUrl ?? 'https://forks_and_dishes.ru/pay',
      onPop: () => Navigator.of(context).pop(),
      body: Scaffold(
        floatingActionButton: RedAlertButton(
          level: widget.level,
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          children: [
            ListenableBuilder(
                listenable: Listenable.merge([
                  cardNumController,
                  cardDateController,
                  cvvController,
                  nameController,
                  cvvFocus,
                ]),
                builder: (context, _) {
                  return CreditCardWidget(
                    bankName: 'Sovet Bank',
                    backgroundNetworkImage:
                        'https://avatars.mds.yandex.net/i?id=cfad06e05135f7557d3fa817f3b8316233f5c741-10636447-images-thumbs&n=13',
                    glassmorphismConfig: Glassmorphism.defaultConfig(),
                    cardNumber: cardNumController.text,
                    expiryDate: cardDateController.text,
                    cardHolderName: nameController.text,
                    cvvCode: cvvController.text,
                    showBackView: cvvFocus.hasFocus,
                    onCreditCardWidgetChange: (CreditCardBrand) {},
                  );
                }),
            SizedBox(
              height: 50,
              child: TextField(
                controller: cardNumController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(16),
                    ),
                  ),
                  hintText: 'Номер карты',
                ),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 50,
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: cardDateController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(16),
                          ),
                        ),
                        hintText: 'Действительно до',
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      controller: cvvController,
                      focusNode: cvvFocus,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(16),
                          ),
                        ),
                        hintText: 'CVV/CVC',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 50,
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(16),
                    ),
                  ),
                  hintText: 'Держатель карты',
                ),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: const Size.fromHeight(60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                backgroundColor: const Color.fromARGB(255, 253, 99, 38),
              ),
              onPressed: () {
                if (widget.config?.outsitePayment == true) {
                  Future(() => showDialog(
                        context: context,
                        builder: (context) {
                          return Dialog(
                              child: SizedBox(
                            height: 154,
                            width: 400,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  const Text('Только для Вас!'),
                                  const Text(
                                      'Вы можете заплатить на 20% меньше при переводе по СБП! Только до 10 декабря!'),
                                  const Text(
                                    'Для оплаты переведите 2500 рублей на номер +7 (800) 555-35-35',
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      lose(context, widget.level);
                                    },
                                    child: const Text('Уже перевожу!'),
                                  ),
                                ],
                              ),
                            ),
                          ));
                        },
                      ));
                } else {
                  lose(context, widget.level);
                }
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
            )
          ],
        ),
      ),
    );
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
}
