import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Text(
          'Instagram',
          style: TextStyle(
            fontSize: 33,
            fontFamily: 'Billabong',
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.add_box_outlined,
              size: 30.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.favorite_border_outlined,
              size: 30.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.near_me_outlined,
              size: 30.0,
            ),
          ),
        ],
      ),
      body: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.all(3),
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              // color: Colors.red,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: NetworkImage(
                                    'https://www.hdnicewallpapers.com/Walls/Big/Cat/Closeup_Face_of_Cat_Free_Wallpaper.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Ahmad Bajuri',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.more_vert_rounded,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://images.freeimages.com/images/large-previews/9fe/cat-walking-1336126.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 20, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.favorite_outline,
                            color: Colors.white,
                            size: 27,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.chat_bubble_outline,
                            color: Colors.white,
                            size: 27,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.near_me_outlined,
                            color: Colors.white,
                            size: 27,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                      Icon(
                        Icons.bookmark_border,
                        color: Colors.white,
                        size: 27,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 15,
                    top: 0,
                    right: 0,
                    bottom: 0,
                  ),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('999 suka',
                          style: TextStyle(color: Colors.white))),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 15,
                    top: 0,
                    right: 0,
                    bottom: 0,
                  ),
                  child: ReadMoreText(
                    'Ahmad Bajuri  '
                    'The Flutter framework builds its layout via the composition of widgets, everything that you construct programmatically is a widget and these are compiled together to create the user interface. ',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                    trimLines: 2,
                    colorClickableText: Colors.white,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Read more',
                    trimExpandedText: ' Less',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: 15,
                        top: 0,
                        right: 0,
                        bottom: 0,
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Lihat Semua 70 Komentar',
                          style: TextStyle(color: Colors.white38),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 15,
                        top: 0,
                        right: 0,
                        bottom: 0,
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                  text: 'catlovers',
                                  style: TextStyle(color: Colors.white)),
                              TextSpan(
                                  text: '  gahar banget..',
                                  style: TextStyle(color: Colors.white70)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            );
          }),
    );
  }
}
