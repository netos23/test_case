import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:test_case/domain/entity/dadata/geo_data.dart';
import 'package:test_case/domain/models/profile.dart';

import 'choose_city_page_wm.dart';

// TODO: cover with documentation
/// Main widget for EditProfilePage module
@RoutePage()
class ChooseCityPageWidget extends ElementaryWidget<IChooseCityWidgetModel> {
  const ChooseCityPageWidget({
    this.profile,
    Key? key,
    WidgetModelFactory wmFactory = defaultChooseCityPageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  final Profile? profile;

  @override
  Widget build(IChooseCityWidgetModel wm) {
    final theme = wm.theme;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SizedBox(
            width: 600,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Flexible(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: ClipRRect(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(16),
                              ),
                              child: Container(
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                      'assets/images/search.png',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 16,
                            left: 16,
                            right: 16,
                            child: SizedBox(
                              width: 400,
                              child: Card(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 8),
                                  child: TextField(
                                    controller: wm.cityController,
                                    style: theme.textTheme.bodyMedium?.copyWith(
                                      color: theme.colorScheme.onBackground,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    keyboardType: TextInputType.name,
                                    decoration: InputDecoration(
                                      suffixIcon: Icon(
                                        Icons.zoom_in,
                                        color: theme.primaryColor,
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(16),
                                        ),
                                        borderSide: BorderSide(
                                          color: theme.cardTheme.color ??
                                              theme.cardColor,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(16),
                                        ),
                                        borderSide: BorderSide(
                                          color: theme.cardTheme.color ??
                                              theme.cardColor,
                                        ),
                                      ),
                                      labelText: 'Город',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: StreamBuilder<List<GeoData>>(
                        stream: wm.geoLocationController,
                        initialData: const [],
                        builder: (context, snapshot) {
                          final cities =
                              wm.geoLocationController.valueOrNull ?? [];
                          return ListView.separated(
                            itemBuilder: (context, index) {
                              final city = cities[index];
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      city.name,
                                      style: theme.textTheme.labelLarge,
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Text(city.fullName),
                                  ],
                                ),
                              );
                            },
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return const Divider();
                            },
                            itemCount: cities.length,
                          );
                        }),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
