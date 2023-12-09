import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:test_case/data/service/stats_service.dart';
import 'package:test_case/domain/models/profile.dart';
import 'package:test_case/domain/models/user_stat.dart';
import 'package:test_case/internal/app_components.dart';
import 'package:test_case/pages/components/theme_switch.dart';
import 'package:test_case/router/app_router.dart';

import 'profile_page_wm.dart';

// TODO: cover with documentation
/// Main widget for ProfilePage module
@RoutePage()
class ProfilePageWidget extends ElementaryWidget<IProfilePageWidgetModel> {
  const ProfilePageWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultProfilePageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IProfilePageWidgetModel wm) {
    final theme = wm.theme;

    return Builder(
      builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Профиль'),
            centerTitle: true,
            actions: const [
              ThemeSwitch(),
            ],
          ),
          body: StreamBuilder<Profile?>(
            initialData: wm.profileController.valueOrNull,
            stream: wm.profileController.stream,
            builder: (context, profileSnapshot) {
              final isLogin = profileSnapshot.hasData &&
                  profileSnapshot.data!.email.isNotEmpty;
              final width = MediaQuery.of(context).size.width - 90;

              return Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    // horizontal: 16.0,
                    vertical: 10,
                  ),
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 800),
                    child: isLogin
                        ? _Statistic(
                            wm: wm,
                          )
                        : Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16.0,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Image.asset(
                                    'assets/images/logo_large.png',
                                    width: width,
                                    height: width,
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    'Что бы не потерять свои достижения зарегистрируйтесь или\n войдите в аккаунт',
                                    style: theme.textTheme.bodyMedium?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onBackground,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Expanded(
                                  child: SizedBox(
                                    width: 500,
                                    child: Column(
                                      children: [
                                        Expanded(
                                          flex: 3,
                                          child: FilledButton(
                                            style: theme.filledButtonTheme.style
                                                ?.copyWith(
                                              fixedSize:
                                                  const MaterialStatePropertyAll(
                                                Size.fromHeight(50),
                                              ),
                                            ),
                                            onPressed: () {
                                              if (!isLogin) {
                                                context.router
                                                    .push(AuthRoute());
                                              } else {
                                                wm.profileUseCase.logout();
                                              }
                                            },
                                            child: Center(
                                              child: !isLogin
                                                  ? const Text('Войти')
                                                  : const Text('Выйти'),
                                            ),
                                          ),
                                        ),
                                        const Spacer(),
                                        Expanded(
                                          flex: 3,
                                          child: OutlinedButton(
                                            onPressed: () => context.router
                                                .push(RegisterRoute()),
                                            child: const Center(
                                              child: Text('Зарегистрироваться'),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}

class AppColors {
  static const Color primary = contentColorCyan;
  static const Color menuBackground = Color(0xFF090912);
  static const Color itemsBackground = Color(0xFF1B2339);
  static const Color pageBackground = Color(0xFF282E45);
  static const Color mainTextColor1 = Colors.white;
  static const Color mainTextColor2 = Colors.white70;
  static const Color mainTextColor3 = Colors.white38;
  static const Color mainGridLineColor = Colors.white10;
  static const Color borderColor = Colors.white54;
  static const Color gridLinesColor = Color(0x11FFFFFF);

  static const Color contentColorBlack = Colors.black;
  static const Color contentColorWhite = Colors.white;
  static const Color contentColorBlue = Color(0xFF2196F3);
  static const Color contentColorYellow = Color(0xFFFFC300);
  static const Color contentColorOrange = Color(0xFFFF683B);
  static const Color contentColorGreen = Color(0xFF3BFF49);
  static const Color contentColorPurple = Color(0xFF6E1BFF);
  static const Color contentColorPink = Color(0xFFFF3AF2);
  static const Color contentColorRed = Color(0xFFE80054);
  static const Color contentColorCyan = Color(0xFF50E4FF);
}

class _Statistic extends StatelessWidget {
  _Statistic({
    super.key,
    required this.wm,
  });

  final IProfilePageWidgetModel wm;
  final future = StatsService(AppComponents().dio).getUserStats();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final color = theme.colorScheme;
    final text = theme.textTheme;

    return SizedBox(
      width: 700,
      child: ListView(
        children: [
          FutureBuilder(
            future: future,
            builder: (context, snapshot) {
              final snap = snapshot.data;

              if (snap == null) {
                return const SizedBox();
              }

              return ListTile(
                title: Text('Рейтинг: ${snap.totalScore}'),
                subtitle: Text(snap.level),
                titleTextStyle: text.headlineMedium?.copyWith(
                  color: color.onBackground,
                ),
                subtitleTextStyle: text.headlineMedium?.copyWith(
                  color: color.onBackground.withOpacity(0.5),
                ),
              );
            },
          ),
          const SizedBox(
            height: 20,
          ),
          MenuItem(
            onTap: wm.onEditProfileTap,
            title: 'Мои данные',
            icon: Icons.person,
          ),
          const Divider(),
          MenuItem(
            onTap: wm.openTop,
            title: 'Топ пользователей',
            icon: Icons.score,
          ),
          const Divider(),
          MenuItem(
            onTap: wm.openTop,
            title: 'Ранги',
            icon: Icons.add_chart,
          ),
          const Divider(),
          const SizedBox(
            height: 16,
          ),
          FutureBuilder(
            future: future,
            builder: (context, snapshot) {
              final snap = snapshot.data;

              if (snap == null) {
                return const SizedBox();
              }

              return Column(
                children: [
                  Card(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 16,
                    ),
                    child: Dashboard(
                      stat: snap,
                    ),
                  ),
                  Card(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 16,
                    ),
                    child: TaskStats(
                      stat: snap,
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  const MenuItem({
    super.key,
    required this.onTap,
    required this.title,
    required this.icon,
  });

  final void Function() onTap;
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42,
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(
          horizontal: 16,
        ),
        leading: Icon(icon),
        title: Text(title),
        onTap: onTap,
        trailing: const Icon(Icons.navigate_next),
      ),
    );
  }
}

class Dashboard extends StatefulWidget {
  const Dashboard({
    super.key,
    Color? gradientColor1,
    Color? gradientColor2,
    Color? gradientColor3,
    Color? indicatorStrokeColor,
    required this.stat,
  })  : gradientColor1 = gradientColor1 ?? AppColors.contentColorBlue,
        gradientColor2 = gradientColor2 ?? AppColors.contentColorPink,
        gradientColor3 = gradientColor3 ?? AppColors.contentColorRed,
        indicatorStrokeColor = indicatorStrokeColor ?? AppColors.mainTextColor1;

  final UserStat stat;
  final Color gradientColor1;
  final Color gradientColor2;
  final Color gradientColor3;
  final Color indicatorStrokeColor;

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  // List<int> showingTooltipOnSpots = [1, 3, 5];
  late final theme = Theme.of(context);
  late final color = theme.colorScheme;
  late final text = theme.textTheme;

  List<FlSpot> get allSpots {
    var successResults = widget.stat.successResults;

    var list = successResults
        .map(
          (e) => FlSpot(
            DateTime.parse(e.createdAt).millisecondsSinceEpoch.toDouble(),
            max(e.score.toDouble(), 5),
          ),
        )
        .toList()
      ..sort((a, b) => a.x.compareTo(b.x));
    return list;
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    final style = text.bodySmall?.copyWith(
      color: color.onSurface,
      fontSize: 10,
    );

    var dateTime = DateTime.fromMillisecondsSinceEpoch(value.toInt());
    return SideTitleWidget(
      axisSide: meta.axisSide,
      // angle: pi / 3,
      fitInside: SideTitleFitInsideData(
        enabled: true,
        axisPosition: 0,
        parentAxisSize: 0,
        distanceFromEdge: -10,
      ),

      child: Text(
        '${dateTime.day}.${dateTime.month}.${dateTime.year}',
        style: style,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final color = theme.colorScheme;
    final text = theme.textTheme;

    final lineBarsData = [
      LineChartBarData(
        // showingIndicators: showingTooltipOnSpots,
        spots: allSpots,
        isCurved: true,
        barWidth: 3,
        shadow: const Shadow(
          blurRadius: 8,
        ),
        belowBarData: BarAreaData(
          show: true,
          gradient: LinearGradient(
            colors: [
              widget.gradientColor1.withOpacity(0.4),
              widget.gradientColor2.withOpacity(0.4),
              widget.gradientColor3.withOpacity(0.4),
            ],
          ),
        ),
        dotData: const FlDotData(show: false),
        gradient: LinearGradient(
          colors: [
            widget.gradientColor1,
            widget.gradientColor2,
            widget.gradientColor3,
          ],
          stops: const [0.1, 0.4, 0.9],
        ),
      ),
    ];

    final tooltipsOnBar = lineBarsData[0];

    return AspectRatio(
      aspectRatio: 5 / 3,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 5.0,
          vertical: 5,
        ),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return LineChart(
              LineChartData(
                // showingTooltipIndicators: showingTooltipOnSpots.map((index) {
                //   return ShowingTooltipIndicators([
                //     LineBarSpot(
                //       tooltipsOnBar,
                //       lineBarsData.indexOf(tooltipsOnBar),
                //       tooltipsOnBar.spots[index],
                //     ),
                //   ]);
                // }).toList(),
                lineTouchData: LineTouchData(
                  enabled: true,
                  handleBuiltInTouches: false,
                  touchCallback:
                      (FlTouchEvent event, LineTouchResponse? response) {
                    if (response == null || response.lineBarSpots == null) {
                      return;
                    }
                    if (event is FlTapUpEvent) {
                      final spotIndex = response.lineBarSpots!.first.spotIndex;
                      // setState(() {
                      //   if (showingTooltipOnSpots.contains(spotIndex)) {
                      //     showingTooltipOnSpots.remove(spotIndex);
                      //   } else {
                      //     showingTooltipOnSpots.add(spotIndex);
                      //   }
                      // });
                    }
                  },
                  mouseCursorResolver:
                      (FlTouchEvent event, LineTouchResponse? response) {
                    if (response == null || response.lineBarSpots == null) {
                      return SystemMouseCursors.basic;
                    }
                    return SystemMouseCursors.click;
                  },
                  getTouchedSpotIndicator:
                      (LineChartBarData barData, List<int> spotIndexes) {
                    return spotIndexes.map((index) {
                      return TouchedSpotIndicatorData(
                        const FlLine(
                          color: Colors.pink,
                        ),
                        FlDotData(
                          show: true,
                          getDotPainter: (spot, percent, barData, index) =>
                              FlDotCirclePainter(
                            radius: 8,
                            color: lerpGradient(
                              barData.gradient!.colors,
                              barData.gradient!.stops!,
                              percent / 100,
                            ),
                            strokeWidth: 2,
                            strokeColor: widget.indicatorStrokeColor,
                          ),
                        ),
                      );
                    }).toList();
                  },
                  touchTooltipData: LineTouchTooltipData(
                    tooltipBgColor: Colors.pink,
                    tooltipRoundedRadius: 8,
                    getTooltipItems: (List<LineBarSpot> lineBarsSpot) {
                      return lineBarsSpot.map((lineBarSpot) {
                        return LineTooltipItem(
                          lineBarSpot.y.toString(),
                          const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        );
                      }).toList();
                    },
                  ),
                ),
                lineBarsData: lineBarsData,
                minY: 0,
                titlesData: FlTitlesData(
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 50,
                      interval: 10000000,
                      getTitlesWidget: bottomTitleWidgets,
                    ),
                  ),
                  rightTitles: AxisTitles(
                    axisNameWidget: Text(
                      'Рейтинг',
                      style: text.bodyMedium?.copyWith(
                        color: color.onSurface,
                      ),
                    ),
                    sideTitles: const SideTitles(
                      showTitles: false,
                      reservedSize: 0,
                    ),
                  ),
                  topTitles: AxisTitles(
                    axisNameWidget: Text(
                      'Дата',
                      textAlign: TextAlign.left,
                      style: text.bodyMedium?.copyWith(
                        color: color.onSurface,
                      ),
                    ),
                    axisNameSize: 24,
                    sideTitles: const SideTitles(
                      showTitles: true,
                      reservedSize: 0,
                    ),
                  ),
                ),
                gridData: const FlGridData(show: false),
                borderData: FlBorderData(
                  show: true,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

/// Lerps between a [LinearGradient] colors, based on [t]
Color lerpGradient(List<Color> colors, List<double> stops, double t) {
  if (colors.isEmpty) {
    throw ArgumentError('"colors" is empty.');
  } else if (colors.length == 1) {
    return colors[0];
  }

  if (stops.length != colors.length) {
    stops = [];

    /// provided gradientColorStops is invalid and we calculate it here
    colors.asMap().forEach((index, color) {
      final percent = 1.0 / (colors.length - 1);
      stops.add(percent * index);
    });
  }

  for (var s = 0; s < stops.length - 1; s++) {
    final leftStop = stops[s];
    final rightStop = stops[s + 1];
    final leftColor = colors[s];
    final rightColor = colors[s + 1];
    if (t <= leftStop) {
      return leftColor;
    } else if (t < rightStop) {
      final sectionT = (t - leftStop) / (rightStop - leftStop);
      return Color.lerp(leftColor, rightColor, sectionT)!;
    }
  }
  return colors.last;
}

class _BarChart extends StatelessWidget {
  const _BarChart(this.stat);

  final UserStat stat;

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        barTouchData: barTouchData,
        titlesData: titlesData,
        borderData: borderData,
        barGroups: barGroups,
        gridData: const FlGridData(show: false),
        alignment: BarChartAlignment.spaceAround,
        maxY: 20,
      ),
    );
  }

  BarTouchData get barTouchData => BarTouchData(
        enabled: false,
        touchTooltipData: BarTouchTooltipData(
          tooltipBgColor: Colors.transparent,
          tooltipPadding: EdgeInsets.zero,
          tooltipMargin: 8,
          getTooltipItem: (
            BarChartGroupData group,
            int groupIndex,
            BarChartRodData rod,
            int rodIndex,
          ) {
            return BarTooltipItem(
              rod.toY.round().toString(),
              const TextStyle(
                color: AppColors.contentColorCyan,
                fontWeight: FontWeight.bold,
              ),
            );
          },
        ),
      );

  Widget getTitles(double value, TitleMeta meta) {
    final style = TextStyle(
      color: AppColors.contentColorBlue,
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );
    String text;
    switch (value.toInt()) {
      case 0:
        text = 'Легкие';
        break;
      case 1:
        text = 'Средние';
        break;
      case 2:
        text = 'Сложные';
        break;
      default:
        text = '';
        break;
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 4,
      child: Text(text, style: style),
    );
  }

  FlTitlesData get titlesData => FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            getTitlesWidget: getTitles,
          ),
        ),
        leftTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
      );

  FlBorderData get borderData => FlBorderData(
        show: false,
      );

  List<BarChartGroupData> get barGroups => [
        BarChartGroupData(
          x: 0,
          barRods: [
            BarChartRodData(
              toY: 8,
              gradient: LinearGradient(
                colors: [
                  Colors.green,
                  AppColors.contentColorCyan,
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            )
          ],
          showingTooltipIndicators: [0],
        ),
        BarChartGroupData(
          x: 1,
          barRods: [
            BarChartRodData(
              toY: 10,
              gradient: LinearGradient(
                colors: [
                  AppColors.contentColorBlue,
                  AppColors.contentColorCyan,
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            )
          ],
          showingTooltipIndicators: [0],
        ),
        BarChartGroupData(
          x: 2,
          barRods: [
            BarChartRodData(
              toY: 14,
              gradient: LinearGradient(
                colors: [
                  Colors.red,
                  AppColors.contentColorCyan,
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            )
          ],
          showingTooltipIndicators: [0],
        ),
      ];
}

class TaskStats extends StatefulWidget {
  const TaskStats({
    super.key,
    required this.stat,
  });

  final UserStat stat;

  @override
  State<StatefulWidget> createState() => TaskStatsState();
}

class TaskStatsState extends State<TaskStats> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final color = theme.colorScheme;
    final text = theme.textTheme;
    return Column(
      children: [
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Text(
            'Задачи',
            style: text.bodyLarge?.copyWith(
              color: color.onSurface,
            ),
                   ),
         ),
        AspectRatio(
          aspectRatio: 1.6,
          child: _BarChart(widget.stat),
        ),
      ],
    );
  }
}
