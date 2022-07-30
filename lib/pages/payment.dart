import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/cardpayment.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import '../utils/routes.dart';

class Payment extends StatefulWidget {
  const Payment({Key key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
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
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Payment",
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(0, 0, 0, 1)),
        ),
      ),
      body: Center(
        child: Container(
          width: 320,
          child: Column(
            children: [
              SizedBox(
                height: 50.0,
              ),
              Card(
                child: ListTile(
                  trailing: Image.network(
                      "https://img.icons8.com/color/344/mastercard.png"),
                  title: Text(
                    "Debit/Credit Card",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 450.0,
              ),
              Material(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(changeButton ? 50 : 8),
                child: InkWell(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Cardpayment())),
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: changeButton ? 50 : 150,
                    height: 50,
                    alignment: Alignment.center,
                    child: changeButton
                        ? Icon(
                            Icons.done,
                            color: Colors.white,
                          )
                        : Text(
                            "Pay Now",
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
