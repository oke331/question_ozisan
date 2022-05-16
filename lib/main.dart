import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:question_ozisan/page/ozisan_page/page.dart';

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
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const OzisanPage(),
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
