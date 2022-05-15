import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:question_ozisan/page/ozisan_page/page.dart';

final navigatorKeyProvider = Provider((_) => GlobalKey<NavigatorState>());

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends HookConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final navigatorKey = ref.watch(navigatorKeyProvider);
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const OzisanPage(),
      navigatorKey: navigatorKey,
      builder: (context, child) {
        final mediaQueryData = MediaQuery.of(context);
        final constrainedTextScaleFactor =
            mediaQueryData.textScaleFactor.clamp(1.0, 1.5);

        return MediaQuery(
          data: mediaQueryData.copyWith(
            textScaleFactor: constrainedTextScaleFactor,
          ),
          child: child!,
        );
      },
    );
  }
}
