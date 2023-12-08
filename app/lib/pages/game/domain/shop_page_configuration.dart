class ShopPageConfiguration {
  /// проверка на наличие HTTPS
  final bool? HTTPsecure;

  /// странный домен
  final String? url;

  /// странная ссылка оплаты
  final String? paymentUrl;

  /// фейковая кнопка оплаты
  final bool? fakeButton;

  /// странная реклама
  final bool? fakeAds;

  /// просьба скачать приложение для оплаты с стороннего сайта
  final bool? fakeMobileApp;

  /// просьба оплатить через сторонние сервисы (whatsapp)
  final bool? outsitePayment;

  final bool? youAppWillBeDestroyed;

  ShopPageConfiguration({
    this.paymentUrl,
    this.HTTPsecure = true,
    this.fakeButton,
    this.url,
    this.fakeAds,
    this.fakeMobileApp,
    this.outsitePayment,
    this.youAppWillBeDestroyed,
  });
}
