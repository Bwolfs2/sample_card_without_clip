import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xffA81FEB),
                  Color(0xff6216B4),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: -MediaQuery.of(context).size.height * 1.5,
            child: CircleAvatar(backgroundColor: Colors.white, radius: MediaQuery.of(context).size.height),
          ),
          Positioned(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  "Select card design",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  PhysicalModel(
                    color: Colors.transparent,
                    elevation: 10,
                    borderRadius: BorderRadius.circular(
                      15,
                    ),
                    child: Container(
                      width: 200,
                      height: 300,
                      decoration: BoxDecoration(
                        //color: Colors.black,
                        borderRadius: BorderRadius.circular(
                          15,
                        ),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xff343D46),
                            Colors.black,
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleMarker(
                        color: Color(0xff1B1342),
                      ),
                      CircleMarker(
                        color: Color(0xffD6D6E2),
                      ),
                      CircleMarker(
                        color: Color(0xffA805E8),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.deepPurple[900]),
                    ),
                  )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * .8,
                    child: RaisedButton(
                      color: Color(0xffB300FF),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.all(15),
                      onPressed: () {},
                      child: Text(
                        'Continue',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              )
            ],
          ))
        ],
      ),
    );
  }
}

class CircleMarker extends StatelessWidget {
  final Color color;

  const CircleMarker({Key key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      alignment: Alignment.center,
      width: 25,
      height: 25,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Container(
        alignment: Alignment.center,
        width: 23,
        height: 23,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}
