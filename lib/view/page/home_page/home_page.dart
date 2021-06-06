import "package:flutter_neumorphic/flutter_neumorphic.dart";
import 'package:help/view/page/category_page/category_page.dart';
import 'package:help/view/page/profile_page/profile_page.dart';
import 'package:help/view/page/upload_post_page/upload_post_page.dart';
import 'package:help/view/widget/post_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NeumorphicAppBar(
        title: Text("Blog App"),
        leading: NeumorphicButton(
          child: Icon(Icons.person),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (BuildContext context) {
              return Profilepage();
            }));
          },
        ),
        actions: [
          NeumorphicButton(
            child: Icon(Icons.add),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return UploadPostPage();
              }));
            },
          ),
          NeumorphicButton(
            child: Icon(Icons.person),
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Container(
            height: 50,
            child: ListView(
              padding: EdgeInsets.only(bottom: 16),
              scrollDirection: Axis.horizontal,
              children: [
                // ignore: deprecated_member_use
                FlatButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return CategoryPage();
                    }));
                  },
                  child: Center(child: Text("One")),
                ),
                // ignore: deprecated_member_use
                FlatButton(
                  onPressed: () {},
                  child: Center(child: Text("Two")),
                ),
                // ignore: deprecated_member_use
                FlatButton(
                  onPressed: () {},
                  child: Center(child: Text("Three")),
                ),
                // ignore: deprecated_member_use
                FlatButton(
                  // margin: EdgeInsets.only(right: 10),
                  onPressed: () {},
                  child: Center(child: Text("Four")),
                ),
                // ignore: deprecated_member_use
                FlatButton(
                  // margin: EdgeInsets.only(right: 10),
                  onPressed: () {},
                  child: Center(child: Text("Five")),
                ),
                // ignore: deprecated_member_use
                FlatButton(
                  // margin: EdgeInsets.only(right: 10),
                  onPressed: () {},
                  child: Center(child: Text("Six")),
                ),
                // ignore: deprecated_member_use
                FlatButton(
                  // margin: EdgeInsets.only(right: 10),
                  onPressed: () {},
                  child: Center(child: Text("Seven")),
                ),
                // ignore: deprecated_member_use
                FlatButton(
                  // margin: EdgeInsets.only(right: 10),
                  onPressed: () {},
                  child: Center(child: Text("Eight")),
                ),
                // ignore: deprecated_member_use
                FlatButton(
                  // margin: EdgeInsets.only(right: 10),
                  onPressed: () {},
                  child: Center(child: Text("Nine")),
                ),
              ],
            ),
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
