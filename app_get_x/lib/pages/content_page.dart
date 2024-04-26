import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ContentPage extends StatefulWidget {
  const ContentPage({super.key});

  @override
  State<ContentPage> createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  List list = [];
  List info = [];

  _readData() async {
    await DefaultAssetBundle.of(context)
        .loadString('json/recent.json')
        .then((s) {
      setState(() {
        list = json.decode(s);
      });
    });
    await DefaultAssetBundle.of(context)
        .loadString('json/detail.json')
        .then((s) {
      setState(() {
        info = json.decode(s);
      });
    });
  }

  @override
  void initState() {
    _readData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 70),
        color: const Color(0xFFc5e5f3),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25),
              width: width,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xFFebf8fd),
              ),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('img/background.jpg'),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'James Smith',
                          style: TextStyle(
                            color: Color(0xFF3b3f42),
                            fontSize: 18,
                            // decoration: TextDecoration.none,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Top Level',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 12,
                            // decoration: TextDecoration.none,
                          ),
                        ),
                      ],
                    ),
                    Expanded(child: Container()),
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFFf3fafc),
                      ),
                      child: Center(
                        child: IconButton(
                          onPressed: () => null,
                          icon: const Icon(
                            Icons.notifications,
                            color: Color(0xFF69c5df),
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  const Text(
                    'Popular Contest',
                    style: TextStyle(
                      color: Color(0xFF1f2326),
                      fontSize: 20,
                      // decoration: TextDecoration.none,
                    ),
                  ),
                  Expanded(child: Container()),
                  TextButton(
                    onPressed: () => null,
                    child: Text(
                      'Show all',
                      style: TextStyle(
                        color: Colors.yellow.shade600,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFfdc33c),
                    ),
                    child: GestureDetector(
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 240,
              child: PageView.builder(
                controller: PageController(viewportFraction: 0.88),
                itemCount: info.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Get.toNamed('/detail/', arguments: {
                        'title': info[index]['title'].toString(),
                        'text': info[index]['text'].toString(),
                        'name': info[index]['name'].toString(),
                        'img': info[index]['img'].toString(),
                        'time': info[index]['time'].toString(),
                        'prize': info[index]['prize'].toString(),
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.only(left: 20, top: 20),
                      margin: const EdgeInsets.only(right: 10),
                      height: 220,
                      width: width - 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: index.isEven
                            ? const Color(0xFF69c5df)
                            : const Color(0xFF9294cc),
                      ),
                      child: Column(
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Text(
                                  info[index]['title'],
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                                // Expanded(child: Container()),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: width,
                            child: Text(
                              info[index]['text'],
                              style: TextStyle(
                                fontSize: 20,
                                color: Color(0xFFb8eefc),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Divider(
                            thickness: 1,
                          ),
                          Row(
                            children: [
                              for (int i = 0; i < info.length; i++)
                                Container(
                                  width: 50,
                                  height: 50,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      image: DecorationImage(
                                        image: AssetImage(
                                          info[i]['img'],
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  const Text(
                    'Recent Contests',
                    style: TextStyle(
                      color: Color(0xFF1f2326),
                      fontSize: 20,
                    ),
                  ),
                  Expanded(child: Container()),
                  const Text(
                    "Show all",
                    style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFfdc33c)),
                    child: GestureDetector(),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 4,
                    // shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        width: width,
                        height: 100,
                        margin: const EdgeInsets.only(
                            left: 25, right: 25, bottom: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xFFebf8fd),
                        ),
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const CircleAvatar(
                                radius: 40,
                                backgroundImage:
                                    AssetImage('img/background.jpg'),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Status',
                                    style: TextStyle(
                                      color: Colors.yellow,
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 170,
                                    child: Text(
                                      "Text",
                                      style: TextStyle(
                                        color: Color(0xFF3b3f42),
                                        fontSize: 18,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Expanded(child: Container()),
                              Text(
                                "Time",
                                style: TextStyle(
                                    fontSize: 10, color: Color(0xFFb2b8bb)),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
