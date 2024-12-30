import 'package:flutter/material.dart';
// 기본페이지
import 'package:kan/pages/basic/home.dart';
import 'package:kan/pages/basic/search.dart';
import 'package:kan/pages/basic/alerm.dart';
import 'package:kan/pages/basic/message.dart';
import 'package:kan/pages/basic/profile.dart';
// 카테고리별 페이지
import 'package:kan/pages/category/board.dart';



class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const Home());
      case '/profile':
        // final args = settings.arguments as String; //TODO: param : 유저 ID 추가예정
        return MaterialPageRoute(builder: (_) => const Profile());
      case '/message':
        // final args = settings.arguments as String; //TODO: param : 유저 ID 추가예정
        return MaterialPageRoute(builder: (_) => const Message());
      case '/search':
        return MaterialPageRoute(builder: (_) => const Search());
      case '/alerm':
        return MaterialPageRoute(builder: (_) => const Alerm());
      case '/board':
        final args = settings.arguments as Map<String, dynamic>;
        final title = args['title'];
        final category = args['category'];
        final ageGroup = args['ageGroup'];
        return MaterialPageRoute(builder: (_) => Board(title, category, ageGroup));
      default:
        return MaterialPageRoute(builder: (_) => const Home());
    }
  }
}