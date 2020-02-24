import 'package:flutter/material.dart';
import 'package:iremember/redux/redux_core.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:iremember/ui/pages/add.dart';
import 'package:redux/redux.dart';

//TODO List out items from Firestore with image using the state management solution you have integrated
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Store store = new Store<ReduxState>(
    stateReducer,
    initialState: new ReduxState(
      images: new List(),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: Scaffold(
          appBar: AppBar(
            title: Text("Home"),
            leading: Icon(Icons.home),
            backgroundColor: Colors.blueAccent,
            actions: <Widget>[
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AddPage()));
                  },
                  child: Container(
                    height: 14,
                    width: 14,
                    child: Icon(Icons.add),
                  ),
                ),
              ),
              SizedBox(
                width: 13,
              )
            ],
          ),
          body: Container()),
    );
  }
}
