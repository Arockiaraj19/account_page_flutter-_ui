import 'package:flutter/material.dart';

class TopPage extends StatelessWidget {
  const TopPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            Color(0xFFDC670D),
            Color(0xFFFFD500),
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 25, 170, 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  size: 15,
                  color: Colors.white,
                ),
                Text(
                  "Profile",
                  style: TextStyle(
                    color: Colors.grey[300],
                    fontFamily: "Inter",
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        new BoxShadow(
                          color: Colors.black,
                          blurRadius: 10.0,
                        ),
                      ]),
                  child: Image.asset("assets/images/giftbox.png"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Betty Griffin",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Inter",
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.mode_edit,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          "Flouton Tower",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Inter",
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Being the savage's bowsman,\nthat is,the person\nwho his waist",
                      style: TextStyle(
                        color: Colors.grey[300],
                        fontFamily: "Inter",
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                row("102", "Orders"),
                IconButton(
                    icon: new Image.asset("assets/images/user.png"),
                    onPressed: () {}),
                row("173", "Followers"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Row row(test1, test2) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Text(
        test1,
        style: TextStyle(
          color: Colors.white,
          fontFamily: "Inter",
          fontSize: 25,
          fontWeight: FontWeight.w800,
        ),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
        child: Text(
          test2,
          style: TextStyle(
            color: Colors.grey[300],
            fontFamily: "Inter",
            fontSize: 13,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    ],
  );
}
