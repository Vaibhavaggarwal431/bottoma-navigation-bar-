import 'package:flutter/material.dart';
import 'package:navigation_bar_app/MainScreen.dart';


class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {

  int x=0;
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Text(x.toString(),style: TextStyle(color: Colors.blue,fontSize: 30,fontWeight: FontWeight.bold),),
          ),
          FloatingActionButton(onPressed: (){
            print(x);
            setState(() {
              x++;
              MainScreen.of(context)!.updateBadgeCount(x);
            });
          },
          child: Text("+"),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: FloatingActionButton(onPressed: (){
              print(x);
              setState(() {
                x--;
                MainScreen.of(context)!.updateBadgeCount(x);
              });
            },
              child: Text("-"),
            ),
          ),
        ],
      );

  }
}

class Favourates extends StatefulWidget {
  const Favourates({Key? key}) : super(key: key);

  @override
  State<Favourates> createState() => _FavouratesState();
}

class _FavouratesState extends State<Favourates> {
  @override
  int x = 0;
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Center(
            child: Container(
              child: Text(x.toString(),style: TextStyle(color: Colors.blue,fontSize: 30,fontWeight: FontWeight.bold),),
            ),
          ),

          FloatingActionButton(onPressed: (){

            print(x);
            setState(() {
              x++;
              MainScreen.of(context)?.updateBadgeCount(x);
            });
          },
            child: Text("+"),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: FloatingActionButton(onPressed: (){

              print(x);
              setState(() {
                x--;
                MainScreen.of(context)?.updateBadgeCount(x);

              });
            },child: Text("-"),
            ),

          ),

        ],

    );
  }
}
class Notifi extends StatefulWidget {
  const Notifi({Key? key}) : super(key: key);

  @override
  State<Notifi> createState() => _NotifiState();
}

class _NotifiState extends State<Notifi> {
  @override
  int x =0;
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Text(x.toString(),style: TextStyle(color: Colors.blue,fontSize: 30,fontWeight: FontWeight.bold),),
          ),


          FloatingActionButton(onPressed: (){
            print(x);
            setState(() {
              x++;
              MainScreen.of(context)!.updateBadgeCount(x);
            });
          },
            child: Text("+"),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: FloatingActionButton(onPressed: (){
              print(x);
              setState(() {
                x--;
                MainScreen.of(context)!.updateBadgeCount(x);
              });
            },child: Text("-"),
            ),
          ),
        ],

    );
  }
}



