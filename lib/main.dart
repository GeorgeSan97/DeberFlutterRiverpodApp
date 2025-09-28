import 'package:flutter/material.dart';
import 'package:riverpod_app/config/config.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'presentation/providers/state_providers.dart';

void main() => runApp(
  const ProviderScope(child: MyApp())
  );

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final appRouter = ref.watch(appRouterProvider);
    final isDarkmode = ref.watch(darkModeProvider);
    
    return MaterialApp.router(
      title: 'Riverpod Providers',
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
      theme: AppTheme( isDarkmode: isDarkmode ).getTheme(),
    );
  }
}

/*
Hasta video 6:
import 'package:flutter/material.dart';
import 'package:riverpod_app/config/config.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() => runApp(
  const ProviderScope(child: MyApp())
  );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp.router(
      title: 'Riverpod Providers',
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
      theme: AppTheme( isDarkmode: false ).getTheme(),
    );
  }
}
 */