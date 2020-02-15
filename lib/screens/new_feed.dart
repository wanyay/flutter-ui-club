import 'package:club_live/presentation/CustomIcon.dart';
import 'package:club_live/screens/article_card.dart';
import 'package:club_live/screens/result_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class NewFeed extends StatefulWidget {
  static String id = "/";

  @override
  _NewFeedState createState() => _NewFeedState();
}

class _NewFeedState extends State<NewFeed> {
  Widget _buildFixtures() {
    return ConstrainedBox(
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: ResultCard(
              homeName: "Arsenal",
              homeGoals: "2",
              homeImage: AssetImage("assets/images/home.png"),
              awayName: "Chelsea",
              awayGoals: "2",
              awayImage: AssetImage("assets/images/chelsea.png"),
            ),
          );
        },
        itemCount: 2,
        itemWidth: MediaQuery.of(context).size.width,
        layout: SwiperLayout.STACK,
        pagination: SwiperPagination(
          builder: DotSwiperPaginationBuilder(
            color: Colors.grey,
            activeColor: Colors.red,
            activeSize: 7.0,
            size: 5.0
          ),
        ),
      ),
      constraints: new BoxConstraints.loose(
        Size(MediaQuery.of(context).size.width, 170.0),
      ),
    );
  }

  Widget _buildListView(_, int index) {
    if (index == 0) return _buildFixtures();
    return ArticleCard();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News Feed'),
        backgroundColor: Colors.red,
      ),
      body: ListView.builder(
        itemBuilder: _buildListView,
        itemCount: 19,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.featured_play_list,
              size: 30.0,
            ),
            title: Text("News Feed"),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CustomIcon.stadium,
              size: 30.0,
            ),
            title: Text("Match"),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.grid_on,
              size: 30.0,
            ),
            title: Text("Table"),
          )
        ],
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.red,
      ),
    );
  }
}
