import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/common/constanst/color_constants.dart';

class NewslineScreen extends StatelessWidget {
  final List<String> evenst = [
    "event 1",
    "event 2",
    "event 3",
    "event 4",
    "event 5",
    "event 6",
    "event 7",
  ];
  final TextEditingController _searchController = TextEditingController();

  NewslineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.white60,
      child: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          children: [
            const SizedBox(
              height: 16,
            ),
            CupertinoTextField(
              padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 12),
              prefix: const Padding(
                padding: EdgeInsets.only(left: 12),
                child: Icon(
                  CupertinoIcons.search,
                  color: AppColors.icon,
                ),
              ),
              placeholder: "Поиск",
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(
                    color: AppColors.border,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(6)),
            ),
            const SizedBox(
              height: 16,
            ),
            ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(height: 20),
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemCount: 6,
              itemBuilder: (BuildContext context, int index) {
                return DecoratedBox(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Image.asset(
                        fit: BoxFit.cover,
                        "assets/images/chad-montano-MqT0asuoIcU-unsplash 1.png",
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 11),
                        child: Row(
                          children: [
                            const Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Esentai Mall",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    "Новый способ обжарки хачапури только у нас. И вкуснейшие салатики малибу и",
                                    style: TextStyle(
                                      color: Color(0xFF929292),
                                      fontSize: 13,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                  ),
                                  Text(
                                    "Аль-Фараби",
                                    style: TextStyle(
                                      color: Color(0xFF929292),
                                      fontSize: 13,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            CupertinoButton(
                                child: const Icon(CupertinoIcons.heart),
                                onPressed: () {})
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
