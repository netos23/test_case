import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:test_case/data/service/stats_service.dart';
import 'package:test_case/internal/app_components.dart';

@RoutePage()
class TopUsersPageWidget extends StatelessWidget {
  TopUsersPageWidget({super.key});

  final statService = StatsService(AppComponents().dio);

  late final topUsersFuture = statService.getTopUsers();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Топ пользователи'),
      ),
      body: FutureBuilder(
        future: topUsersFuture,
        builder: (context, snapshot) {
          // TODO(netos23): preloaderes
          final topUsers = snapshot.data;

          if (topUsers == null) {
            return const SizedBox();
          }

          return ListView.builder(
            itemCount: topUsers.length,
            itemBuilder: (context, index) {
              final user = topUsers[index];
              return ListTile(
                title: Text(user.name),
                subtitle: Text(user.level),
                trailing: Text(user.totalScore.toString()),
              );
            },
          );
        },
      ),
    );
  }
}
