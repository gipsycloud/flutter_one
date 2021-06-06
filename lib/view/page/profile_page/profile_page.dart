import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:help/view/widget/post_widget.dart';

class Profilepage extends StatefulWidget {
  @override
  _ProfilepageState createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NeumorphicTheme.of(context).isUsingDark
          ? Colors.blueGrey
          : Colors.grey.shade100,
      appBar: NeumorphicAppBar(
        title: Text(
          "Profile",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          Switch(
              value: NeumorphicTheme.of(context).isUsingDark,
              onChanged: (bool value) {
                if (NeumorphicTheme.of(context).isUsingDark) {
                  NeumorphicTheme.of(context).themeMode = ThemeMode.light;
                } else {
                  NeumorphicTheme.of(context).themeMode = ThemeMode.dark;
                }
              })
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Neumorphic(
            style: NeumorphicStyle(
              shape: NeumorphicShape.flat,
              boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
              depth: 8,
            ),
            child: Container(
              height: 150,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlutterLogo(
                    size: 50,
                  ),
                  Text(
                    "Mg Mg",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text(
                    "mgmg@gmail.com",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  // ignore: deprecated_member_use
                  FlatButton(
                    child: Text(
                      'Logout',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Your Post",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          SizedBox(
            height: 20,
          ),
          PostWidget(),
          PostWidget(),
          PostWidget(),
          PostWidget(),
          PostWidget()
        ],
      ),
    );
  }
}
