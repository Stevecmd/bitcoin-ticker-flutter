import 'package:flutter/material.dart';
import 'coin_data.dart';

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}



class _PriceScreenState extends State<PriceScreen> {
  String selectedCurrency = 'USD'; //initial value of what we want to see in the dropdown

  List<DropdownMenuItem> getDropdownItems() { //populating the drop down items automatically
    List<DropdownMenuItem<String>> dropdownItems = []; //1. list of dropdown menu items that contain a string as their child
    for(int i = 0; i < currenciesList.length; i++){ //2. loop through currencies list
      String currency = currenciesList[i];
      var newItem = DropdownMenuItem( //for every currency in the list we create a new dropdown menu item
        child: Text(currency), value: currency,);
      dropdownItems.add(newItem); //once the above widget is created we add it to a dropdown list
    }
    return dropdownItems;
  }

  @override
  Widget build(BuildContext context) {
    getDropdownItems(); //calling the function in the build method so that it returns on every hot reload

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

            child: DropdownButton<String>(
                value: selectedCurrency, //specifying the default/starting value shown, its normally the first item on the list
                items: getDropdownItems(),
                onChanged: (value) {
                  setState(() {
                    selectedCurrency = value; //updating the current state of the button ie tapping into the users selected currency
                  });
                }),
          ),
        ],
      ),
    );
  }
}
