import 'package:flutter/material.dart';

class StoryList extends StatelessWidget {
  const StoryList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            width: 66,
            height: 66,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [Color(0xFF9B2282), Color(0xFFEEA863)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                width: 65,
                height: 65,
                decoration: BoxDecoration(
                  // color: Colors.red,
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://www.adamsdrafting.com/wp/wp-content/uploads/2018/06/More-Grumpy-Cat.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            left: 8,
            bottom: 0,
          ),
          child: Text(
            'Kucingku',
            style: TextStyle(color: Colors.white),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
