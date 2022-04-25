import 'package:flutter/material.dart';
import 'package:delivery/Deliver/login/login_with_email_shape.dart';

class forget_pass_body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 20),
            Container(
              child: const Text(
                'Forgot password?',
                style: TextStyle(
                    color: Color.fromRGBO(234, 231, 222, 1),
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              child: const Text(
                'if you forget your password you can enter your E-mail and send the validation code',
                style: TextStyle(
                    color: Color.fromRGBO(234, 231, 222, 1),
                    fontSize: 10.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              margin: const EdgeInsets.all(0.0),
              child: const TextField(
                decoration: InputDecoration(
                    labelText: "E-Mail",
                    hintText: "Enter E-Mail",
                    hintStyle: TextStyle(fontSize: 20,color: Colors.white,),
                    labelStyle: TextStyle(fontSize: 30,color: Colors.white,),
                    prefixIcon: Icon(Icons.alternate_email)),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: RaisedButton(
                        color: const Color.fromRGBO(234, 231, 222, 1),
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        child: const Text('Submit ',
                            style: TextStyle(
                                color: Color.fromRGBO(100, 50, 77, 1),
                                fontSize: 15))),
                  )
                ],
              ),
            ),
            const SizedBox(
              width: 5.0,
              height: 20.0,
            ),
            FlatButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> login_with_email_shape()));
                },
                child: const Text(
                  'Back to login',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                )),
          ],
        ),
      ),
    );
  }
}
