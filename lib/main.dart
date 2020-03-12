import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter login UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BaseLayout(title: 'Flutter Login'),
    );
  }
}

class BaseLayout extends StatefulWidget {
  BaseLayout({Key key, this.title}) : super(key: key);
  final String title;

  @override
  BaseLayoutState createState() => BaseLayoutState();
}

class BaseLayoutState extends State<BaseLayout> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Stack(children: <Widget>[
      Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("assets/blue_color.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Container(
          margin: EdgeInsets.only(top: 30, left: 20, right: 20),
          child: Column(children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    Icons.send,
                    color: Colors.white,
                  ),
                  Text("Login", style: TextStyle(color: Colors.white))
                ]),
            SizedBox(
              height: 100,
            ),
            Text("Boniad",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold)),
            CustomTextFormField(
                hintText: 'User Name',
                iconData: Icons.pregnant_woman,
                top: 180),
            CustomTextFormField(
                hintText: 'Password', iconData: Icons.security, top: 10),
            SizedBox(
              height: 40,
            ),
            SizedBox(
                width: 180,
                child: FlatButton(
                  onPressed: () => {},
                  color: Colors.lightBlueAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30)),
                  child: Column(
                    children: <Widget>[Icon(Icons.language)],
                  ),
                )),
            SizedBox(
              height: 10,
            ),
            Text("Don't have an account? Sign Up",
                style: TextStyle(color: Colors.white, fontSize: 10)),
          ]))
    ]));
  }
}

class CustomTextFormField extends StatefulWidget {
  CustomTextFormField(
      {Key key,
      @required this.hintText,
      @required this.iconData,
      @required this.top})
      : super(key: key);

  final String hintText;
  final IconData iconData;
  final double top;

  @override
  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: widget.top, left: 20, right: 20),
        child: TextFormField(
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: TextStyle(color: Colors.white),
            prefixIcon: Padding(
              padding: EdgeInsets.all(0.0),
              child: Icon(
                widget.iconData,
                color: Colors.white,
              ), // icon is 48px widget.
            ),
          ),
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white),
        ));
  }
}
