import 'package:club_live/constance.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class ResultCard extends StatelessWidget {
  ResultCard(
      {@required this.homeName,
      @required this.awayName,
      @required this.homeGoals,
      @required this.awayGoals,
      @required this.homeImage,
      @required this.awayImage});

  final String homeName;
  final String awayName;
  final String homeGoals;
  final String awayGoals;
  final ImageProvider homeImage;
  final ImageProvider awayImage;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MatchDetail()));
        },
        child: Container(
          padding: EdgeInsets.all(10.0),
          height: 150.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 10.0,
                        ),
                        Image(
                          image: homeImage,
                          height: 50.0,
                          width: 50.0,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Flexible(
                          child: Text(
                            homeName,
                            style: kClubName,
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 30.0,
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            homeGoals,
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "-",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            awayGoals,
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Full Time",
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 10.0,
                        ),
                        Image(
                          image: awayImage,
                          height: 50.0,
                          width: 50.0,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Flexible(
                          child: Text(
                            awayName,
                            style: kClubName,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MatchDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueGrey,
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {
                  print("more tapped");
                },
              )
            ],
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(180.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                height: 10.0,
                              ),
                              Image(
                                image: AssetImage("assets/images/away.png"),
                                height: 70.0,
                                width: 70.0,
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Flexible(
                                child: Text(
                                  "Manchester City",
                                  style: kClubDetailName,
                                  textAlign: TextAlign.center,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  TabBar(
                    tabs: [
                      Tab(icon: Icon(Icons.directions_car)),
                      Tab(icon: Icon(Icons.directions_transit)),
                    ],
                  ),
                ],
              ),
            ),
          ),
          body: TabBarView(
            children: [
              Icon(Icons.directions_car),
              Icon(Icons.directions_transit),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> getGoals() {
    return [
      Expanded(
        child: Text(
          "2",
          style: kGoalDetailLabel,
          textAlign: TextAlign.center,
        ),
      ),
      Expanded(
        child: Text(
          "-",
          style: kGoalDetailLabel,
          textAlign: TextAlign.center,
        ),
      ),
      Expanded(
        child: Text(
          "2",
          style: kGoalDetailLabel,
          textAlign: TextAlign.center,
        ),
      )
    ];
  }

  List<Widget> getMatchTime() {
    return [
      Expanded(
        child: Text(
          "2:30 AM",
          style: kGoalDetailLabel,
          textAlign: TextAlign.center,
        ),
      )
    ];
  }

  Widget getMatchDate() {
    return Text(
      "Feb 19",
      style: kMatchDetailDate,
      textAlign: TextAlign.center,
    );
  }

  Widget abc() {
    PreferredSize(
      preferredSize: Size.fromHeight(150.0),
      child: Container(
        height: 150.0,
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 10.0,
                          ),
                          Image(
                            image: AssetImage("assets/images/away.png"),
                            height: 70.0,
                            width: 70.0,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Flexible(
                            child: Text(
                              "Manchester City",
                              style: kClubDetailName,
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 30.0,
                      ),
                      Row(
                        children: getMatchTime(),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      getMatchDate(),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        "2019/2020",
                        style: TextStyle(color: Colors.white, fontSize: 15.0),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 10.0,
                          ),
                          Image(
                            image: AssetImage("assets/images/chelsea.png"),
                            height: 70.0,
                            width: 70.0,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Flexible(
                            child: Text(
                              "Chelsea",
                              style: kClubDetailName,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
