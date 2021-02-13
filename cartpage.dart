import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:movie_store/movieModel.dart';

class CartPage extends StatefulWidget {
 @override
 State<StatefulWidget> createState(){
  return _CartPageState();
 }
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent[200],
        title: Text("Cart"),
        actions: <Widget>[
          FlatButton(
            child: Text(
              "Clear",
              style: TextStyle(color: Colors.white),
            ), // Text
            onPressed: () => ScopedModel.of<movieModel>(context).clearCart())  //FlatButton
        ],  //<Widget>[]
      ),  //AppBar
      body: ScopedModel.of<movieMode l>(context, rebuildOnChange: true)
        .cart
        .length ==
        0
        ? Center(
        child: Text("No items in Cart"),
      )  // Center
          : Container(
          padding: EdgeInsets.all(8.0),
          child: Column(children: <Widget>[
            Expanded(
              child: ListView.builder(
                itemCount: Scopedhudel.of<movieModel>(context,
                    rebuildOnChange: true)
                    .total,
                itemBuilder: (context, index) {
                  return ScopedModeLDescendant<movieModel>(
                    builder: (context, child, model) {
                      return ListTile(
                        title: Text(model.cart[index].title),
                        subtitle: Text(model.cart[index].qty,toString() +
                            " X " +
                            model.cart[index].price.toString() +
                            " = " +
                            (model.cart[index].qty *
                              model.cart[index].price)
                              .toString()),  //Text
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: Icon(Icons.add),
                              onPressed: () {
                                model.updateProduct(model.cart[index],
                                  model.cart[index].qty + 1);
                                // model.removeProduct(model.cart[index]);
                              },
                            ), // IconButton
                            IconButton(
                              icon: Icon(Icons.remove),
                              onPressed: () {
                                model.updateProduct(model.cart[index],
                                  model.cart[index].qty - 1);
                                // model.removeProduct(model.cart[index]);
                              },
                            ), // IconButton
                          ]),  Row
                         ); // ListTile
                       },
                     ); // ScopedModelDescendant
                   }, 
                 ),  // Listview,builder
               ),  //Expanded
             Container(
               padding: EdgeInsets.all(8.0),
               child: Text(
                "Total: \฿ " +
                  ScopedModel.of<movieModel>(context,
                      rebuildOnChange: true)
                      .totalCartValue
                      .toString() +
                  "",
                 style: TextStyle(
                    fontSize: 24.0, fontWeight: FontWeight.bold),  // TextStyle
              )), // Text, Container
            SizedBox(
                width: double.infinity,
                child: RaisedButton(
                  color: Colors.yellow[900],
                  textColor: Colors.white,
                  elevation: 0,
                  child: Text("BUY NOW"),
                  onPressed: () {},
                )) // RaisedButton, SizedBox
         ])));  // <widget>[], Column, Container, Scaffold
