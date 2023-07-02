import 'package:flutter/material.dart';
import 'package:navigation_bar_app/counter.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  static _MainScreenState? of(BuildContext context) {
    final _MainScreenState? result =
    context.findAncestorStateOfType<_MainScreenState>();
    return result;
  }

  @override
  State<MainScreen> createState() => _MainScreenState();

}



class _MainScreenState extends State<MainScreen> {

   int x = 0 ;
   void updateBadgeCount(int count) {
     setState(() {
       x = count;
     });
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation App'),
        elevation: 0,
      ),
      body: PersistentTabView(
        context,
        screens: screens(),
        items: navBarItems() ,
        controller: PersistentTabController(initialIndex: 0),
        onItemSelected: (int index){
          updateBadgeCount(index);
        },
      ),
    );
  }
  List<Widget>screens(){
    return [
      Cart(),
      Favourates(),
      Notifi()
    ];
  }

  List<PersistentBottomNavBarItem> navBarItems(){
    return [
      PersistentBottomNavBarItem(
        icon: new Stack(
          children: <Widget>[
            new Icon(Icons.notifications),
            new Positioned(
              right: 0,
              child: new Container(
                padding: EdgeInsets.all(1),
                decoration: new BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(6),
                ),
                constraints: BoxConstraints(
                  minWidth: 12,
                  minHeight: 12,
                ),
                child: new Text(
                  '$x',
                  style: new TextStyle(
                    color: Colors.white,
                    fontSize: 8,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),


    ),
      PersistentBottomNavBarItem(
        icon: new Stack(
          children: <Widget>[
            new Icon(Icons.notifications),
            new Positioned(
              right: 0,
              child: new Container(
                padding: EdgeInsets.all(1),
                decoration: new BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(6),
                ),
                constraints: BoxConstraints(
                  minWidth: 12,
                  minHeight: 12,
                ),
                child: new Text(
                  '$x',
                  style: new TextStyle(
                    color: Colors.white,
                    fontSize: 8,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
      ),
      PersistentBottomNavBarItem(
        icon: new Stack(
          children: <Widget>[
            new Icon(Icons.notifications),
            new Positioned(
              right: 0,
              child: new Container(
                padding: EdgeInsets.all(1),
                decoration: new BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(6),
                ),
                constraints: BoxConstraints(
                  minWidth: 12,
                  minHeight: 12,
                ),
                child: new Text(
                  '$x',
                  style: new TextStyle(
                    color: Colors.white,
                    fontSize: 8,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
      )
    ];
  }


}







