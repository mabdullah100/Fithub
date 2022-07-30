import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Profile",
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(0, 0, 0, 1)),
        ),
      ),
      body: Center(
        child: Container(
          width: 320,
          height: 690,
          child: Card(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    width: 190.0,
                    height: 190.0,
                    decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                            fit: BoxFit.fill,
                            image: new NetworkImage(
                                "https://avatars.githubusercontent.com/u/44908857?s=400&u=9fecfa4332a9f4f2688fb4a517b44dbd40edc243&v=4")))),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                  child: Text(
                    "Name",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange,
                    ),
                  ),
                ),
                Text(
                  "Muhammad Abdullah",
                  style: TextStyle(
                      fontSize: 20, color: Color.fromRGBO(0, 0, 0, 1)),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                  child: Text(
                    "Email",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange,
                    ),
                  ),
                ),
                Text(
                  "abdullahcontact3@gmail.com",
                  style: TextStyle(
                      fontSize: 20, color: Color.fromRGBO(0, 0, 0, 1)),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                  child: Text(
                    "Phone Number",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange,
                    ),
                  ),
                ),
                Text(
                  "03025055716",
                  style: TextStyle(
                      fontSize: 20, color: Color.fromRGBO(0, 0, 0, 1)),
                ),
                SizedBox(
                  height: 200.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
