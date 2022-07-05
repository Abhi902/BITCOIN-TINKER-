import 'package:flutter/material.dart';
import 'coin_data.dart';
import 'package:flutter/cupertino.dart';

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  String? startingcurrency = 'USD';

  DropdownButton<String> getdropdownbutton() {
    List<DropdownMenuItem<String>> list = [];

    for (int i = 0; i < currenciesList.length; i++) {
      var widgets = DropdownMenuItem(
          child: Text(currenciesList[i]), value: currenciesList[i]);
      list.add(widgets);
    }

    return DropdownButton<String>(
      value: startingcurrency,
      items: list,
      onChanged: (value) {
        setState(() {
          startingcurrency = value;
        });
      },
    );
  }

  CupertinoPicker getforios() {
    List<Text> list = [];

    for (int i = 0; i < currenciesList.length; i++) {
      Text s = Text(currenciesList[i]);
      list.add(s);
    }

    return CupertinoPicker(
      itemExtent: 32,
      onSelectedItemChanged: (selectedIndex) {
        print(selectedIndex);
      },
      children: list,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('🤑 Coin Ticker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
            child: Card(
              color: Colors.lightBlueAccent,
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
                child: Text(
                  '1 BTC = ? USD',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 150.0,
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 30.0),
            color: Colors.lightBlue,
            child: null,
          ),
        ],
      ),
    );
  }
}
