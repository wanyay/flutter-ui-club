import 'package:flutter/material.dart';

class ArticleCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                height: 200.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0),
                  ),
                  image: DecorationImage(
                    image: AssetImage("assets/images/ozil.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Mikel Arteta is restoring Arsenal's values, says Mesut Özil",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      "Yesterday, 9:24 PM",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14.0,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "Wan Yay",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20.0)
            ],
          ),
          Positioned(
            top: 190,
            left: 20.0,
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 5.0),
                  color: Colors.green,
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    "Arsenal",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                Container(
                  color: Colors.red,
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    "Ozil",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
