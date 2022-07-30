import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_page.dart';

class Enableloc extends StatefulWidget {
  const Enableloc({Key key}) : super(key: key);

  @override
  State<Enableloc> createState() => _EnablelocState();
}

class _EnablelocState extends State<Enableloc> {
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.push(
          context, MaterialPageRoute(builder: (context) => Card()));
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 390.0,
              ),
              Material(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(changeButton ? 50 : 8),
                child: InkWell(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage())),
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: changeButton ? 50 : 350,
                    height: 50,
                    alignment: Alignment.center,
                    child: changeButton
                        ? Icon(
                            Icons.done,
                            color: Colors.white,
                          )
                        : Text(
                            "Enable Location",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
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
