import 'package:equatable/equatable.dart';

class Article extends Equatable {
  final String id;
  final String title;
  final String subtitle;
  final String body;
  final String author;
  final String authorImageUrl;
  final String category;
  final String imageUrl;
  final int views;
  final DateTime createdAt;

  Article(
      {required this.id,
      required this.title,
      required this.subtitle,
      required this.body,
      required this.author,
      required this.authorImageUrl,
      required this.category,
      required this.imageUrl,
      required this.views,
      required this.createdAt});

  static List<Article> articles = [
    Article(
      id: '1',
      title: 'Karnataka SSLC exam result: Scores dip as exam becomes tougher',
      subtitle: '',
      body: '',
      author: '',
      authorImageUrl: '',
      category: 'Politics',
      imageUrl:
          'https://images.unsplash.com/photo-1547721064-da6cfb341d50?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
      views: 1204,
      createdAt: DateTime.now().subtract(const Duration(hours: 5)),
    ),
    Article(
      id: '2',
      title: 'Election security: 115 breach bond, pay Rs 1.5 crore in fine',
      subtitle: '',
      body: '',
      author: '',
      authorImageUrl: '',
      category: '',
      imageUrl:
          'https://images.unsplash.com/photo-1499750310107-5fef28a66643?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
      views: 1204,
      createdAt: DateTime.now().subtract(const Duration(hours: 5)),
    ),
    Article(
      id: '3',
      title: 'Succession certificate won’t determine parties’ rights, says ..',
      subtitle: '',
      body: '',
      author: '',
      authorImageUrl: '',
      category: '',
      imageUrl:
          'https://images.pexels.com/photos/673803/pexels-photo-673803.jpeg?auto=compress&cs=tinysrgb&w=1600',
      views: 1204,
      createdAt: DateTime.now().subtract(const Duration(hours: 5)),
    ),
    Article(
      id: '4',
      title: 'Stay ahead of the curve in digital marketing with ISB Profes .',
      subtitle: '',
      body: '',
      author: '',
      authorImageUrl: '',
      category: '',
      imageUrl:
          'https://images.pexels.com/photos/50594/sea-bay-waterfront-beach-50594.jpeg?auto=compress&cs=tinysrgb&w=1600',
      views: 1204,
      createdAt: DateTime.now().subtract(const Duration(hours: 5)),
    ),
    Article(
      id: '5',
      title: '',
      subtitle: '',
      body: '',
      author: '',
      authorImageUrl: '',
      category: '',
      imageUrl:
          'https://images.pexels.com/photos/1421903/pexels-photo-1421903.jpeg?auto=compress&cs=tinysrgb&w=1600',
      views: 1204,
      createdAt: DateTime.now().subtract(const Duration(hours: 5)),
    ),
    Article(
      id: '6',
      title: '',
      subtitle: '',
      body: '',
      author: '',
      authorImageUrl: '',
      category: '',
      imageUrl:
          'https://images.pexels.com/photos/35888/amazing-beautiful-breathtaking-clouds.jpg?auto=compress&cs=tinysrgb&w=1600',
      views: 1204,
      createdAt: DateTime.now().subtract(const Duration(hours: 5)),
    )
  ];

  List<Object?> get props => [];
}
