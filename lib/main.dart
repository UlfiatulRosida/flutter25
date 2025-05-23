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
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/setting': (context) => SettingPage(),
        '/profile': (context) => ProfilePage(),
        '/album': (context) => AlbumPage(),
        '/note': (context) => NotePage(),
        '/note/edit': (context) => NoteEditPage(),
      },
      // home: Scaffold(body: Center(child: Text("halo"))),
    );
  }
}
