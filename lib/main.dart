import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:gocafein_test/screen/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load();

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
        title: 'GoCafein_Movie_JoonhwanJeon',
        theme: ThemeData(
          textTheme: const TextTheme(
            titleLarge: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
            titleMedium: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
            titleSmall: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
            bodyLarge: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
            bodyMedium: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
            bodySmall: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color(0xFF558bcf)
          ),
          useMaterial3: true,
          outlinedButtonTheme: OutlinedButtonThemeData(
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 16),
              side: const BorderSide(color: Color(0xFF558bcf)),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ),
        routes: {
          HomeScreen.routeName: (context) => const HomeScreen(),
        },
        initialRoute: HomeScreen.routeName
    );
  }
}