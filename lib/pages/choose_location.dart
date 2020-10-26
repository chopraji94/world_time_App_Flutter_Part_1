import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  void getData() async {

    //simulate a netrok request from a username
    String username = await Future.delayed(Duration(seconds: 3),() {
      return 'Pranav';
    });

    //simulate network request to get bio ofusername
    String bio = await Future.delayed(Duration(seconds: 2),() {
      return 'BIO' ;
    });

    print('$username-$bio');
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Text(
        'Choose Location screen'
      ),
    );
  }
}
