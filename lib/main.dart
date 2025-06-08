import 'package:flutter/material.dart';
import 'package:flutter25/pages/album_page.dart';
import 'package:flutter25/pages/home_page.dart';
import 'package:flutter25/pages/note_edit_page.dart';
import 'package:flutter25/pages/note_page.dart';
import 'package:flutter25/pages/profile_page.dart';
import 'package:flutter25/pages/setting_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

const String supabaseKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inl2d21jbWhnempnemR4Ynl6aWx0Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDUyMjAwMTQsImV4cCI6MjA2MDc5NjAxNH0.pNBrQsyIdWrCUkdfMzn-K8BACKnwO_m0hFKB-yXgrBI';

Future<void> main() async {
  await Supabase.initialize(
    url: 'https://yvwmcmhgzjgzdxbyzilt.supabase.co',
    anonKey: supabaseKey,
  );

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter 25',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/setting': (context) => const SettingPage(),
        '/profile': (context) => const ProfilePage(),
        '/album': (context) => const AlbumPage(),
        '/note': (context) => const NotePage(),
        '/note/edit': (context) => const NoteEditPage(),
      },
      // home: Scaffold(body: Center(child: Text("halo"))),
    );
  }
}
