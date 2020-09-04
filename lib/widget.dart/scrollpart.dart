import 'package:flutter/material.dart';

class ScrollPart extends StatelessWidget {
  const ScrollPart({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          container(
            "Your Account",
            listicon("assets/images/purchase.png", "Purchase History"),
            listicon("assets/images/wallet.png", "My Wallet"),
            listicon("assets/images/location.png", "My Location"),
            listicon("assets/images/giftbox.png", "GiftBox"),
          ),
          container(
            "Friends",
            listicon("assets/images/fav.png", "Favroite"),
            listicon("assets/images/notification.png", "Notification"),
            listicon("assets/images/invitefriend.png", "Invite Friend"),
            listicon("assets/images/recentsaved.png", "Recent Saved"),
          ),
          container(
            "Settings",
            listicon("assets/images/protection.png", "Protection"),
            listicon("assets/images/settings.png", "Settings"),
            listicon("assets/images/feedback.png", "Feedback"),
            listicon("assets/images/help.png", "Help&Support"),
          ),
          container(
            "Logout",
            listicon("assets/images/info.png", "Info"),
            listicon("assets/images/logout.png", "Logout"),
            listicon("assets/images/info.png", "Info"),
            listicon("assets/images/logout.png", "Logout"),
          ),
        ],
      ),
    );
  }

  Padding container(test1, test2, test3, test4, test5) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              new BoxShadow(
                color: Colors.grey[300],
                blurRadius: 5,
              ),
            ]),
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                child: Text(
                  test1,
                  style: TextStyle(
                    color: Colors.grey[850],
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [test2, test3, test4, test5],
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget listicon(test1, test2) {
  return Column(
    children: [
      // ignore: missing_required_param
      IconButton(icon: new Image.asset(test1),
       onPressed: () {},iconSize: 15,),
      Text(

        test2,
        style: TextStyle(
          color: Colors.grey,
          fontSize: 13,
          fontWeight: FontWeight.w800,
        ),
      ),
    ],
  );
}
