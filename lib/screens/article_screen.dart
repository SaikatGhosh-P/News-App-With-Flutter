import 'package:flutter/material.dart';
import 'package:newsapp/models/article_model.dart';
import 'package:newsapp/widget/custom_tag.dart';
import 'package:newsapp/widget/image_container.dart';

class ArticleScreen extends StatelessWidget {
  const ArticleScreen({super.key});

  static const routeName = '/article';
  @override
  Widget build(BuildContext context) {
    final article = ModalRoute.of(context)!.settings.arguments as Article;
    return ImageContainer(
      width: double.infinity,
      imageUrl: article.imageUrl,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: ListView(
          padding: EdgeInsets.all(20.2),
          children: [
            _NewsHeadLine(article: article),
            _NewsBody(
              article: article,
            )
          ],
        ),
      ),
    );
  }
}

class _NewsBody extends StatelessWidget {
  const _NewsBody({super.key, required this.article});

  final Article article;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(10.0),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            children: [
              CustomTag(backgroundColor: Colors.black, children: [
                CircleAvatar(
                  radius: 10,
                  backgroundImage: NetworkImage(article.authorImageUrl),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  article.author,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: Colors.white),
                )
              ]),
              const SizedBox(
                width: 20,
              ),
              CustomTag(backgroundColor: Colors.grey.shade200, children: [
                Icon(Icons.timer),
                const SizedBox(
                  width: 5,
                ),
                Text(
                    '${DateTime.now().difference(article.createdAt).inHours} h',
                    style: Theme.of(context).textTheme.bodyMedium!)
              ]),
              const SizedBox(
                width: 20,
              ),
              CustomTag(backgroundColor: Colors.grey.shade200, children: [
                Icon(Icons.remove_red_eye),
                const SizedBox(
                  width: 5,
                ),
                Text('${article.views}',
                    style: Theme.of(context).textTheme.bodyMedium!)
              ]),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            article.title,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            article.body,
            style:
                Theme.of(context).textTheme.bodyMedium!.copyWith(height: 1.5),
          ),
          const SizedBox(
            height: 20,
          ),
          GridView.builder(
              shrinkWrap: true,
              itemCount: 2,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.25,
                  crossAxisSpacing: 10),
              itemBuilder: ((context, index) {
                return ImageContainer(
                  width: MediaQuery.of(context).size.width * 0.42,
                  imageUrl: article.imageUrl,
                  margin: const EdgeInsets.only(
                    right: 5.0,
                    bottom: 5.0,
                  ),
                );
              }))
        ],
      ),
    );
  }
}

class _NewsHeadLine extends StatelessWidget {
  const _NewsHeadLine({super.key, required this.article});

  final Article article;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.15,
        ),
        CustomTag(backgroundColor: Colors.grey.withAlpha(150), children: [
          Text(
            article.category,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: Colors.white),
          ),
        ]),
        const SizedBox(
          height: 10,
        ),
        Text(
          article.title,
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
              color: Colors.white, fontWeight: FontWeight.bold, height: 1.25),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          article.subtitle,
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: Colors.white),
        ),
      ],
    );
  }
}
