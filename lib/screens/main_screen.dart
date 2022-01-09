import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/model.dart';
import '../model/dataModel.dart';

class MainScreen extends StatefulWidget {
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  var clicked = false;

  @override
  void initState() {
    Provider.of<ModelClass>(context, listen: false).getData();
    super.initState();
  }

  void clickedButton() async {
    await Provider.of<ModelClass>(context, listen: false).getData();
    print('clicked');
    setState(() {
      clicked = !clicked;
    });
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ModelClass>(context).data;

    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("Demo App"),
        ),
        body: !clicked
            ? Center(
                child: ElevatedButton(
                    child: Text('C  lick Me'), onPressed: clickedButton))
            : ListView.builder(
                itemBuilder: (context, index) =>
                    Text(provider[index].types),
                itemCount: provider.length,
              ));
  }
}
