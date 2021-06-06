import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class PostWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      margin: EdgeInsets.only(top: 5, bottom: 15),
      style: NeumorphicStyle(
        shape: NeumorphicShape.flat,
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
        depth: 8,
      ),
      child: Container(
        height: 200,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FlutterLogo(
                size: 120,
              ),
              Column(
                children: [
                  Text(
                    "Title",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "10/10/2020",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.grey),
              ),
              Text(
                "Hello, Hi everyone !!",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.black),
              )
            ],
          ),
        ),
      ),
    );
  }
}
