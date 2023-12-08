import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:test_case/pages/games/widgets/browser_overlay.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

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
  Widget build(BuildContext context) {
    return BrowserOverlay(
      url: 'https://yandex.tu/pay',
      onPop: () => Navigator.of(context).pop(),
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
              Navigator.of(context).push(
                PageRouteBuilder(
                  pageBuilder: (context, _, __) {
                    return PaymentPage();
                  },
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
          )
        ],
      ),
    );
  }
}
