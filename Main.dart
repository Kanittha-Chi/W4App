import 'package:flutter/material.dart';
import 'package:movie_store/movie.dart';
import 'package:movie_store/movieModel.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:movie_store/cartpage.dart';

void main() => runApp(MyApp(
 model: movieModeL(),
)); // MyApp

class MyApp extends StatelessWidget {
// This widget is the root of your application.
 final movieModel model;
 const MyApp({Key key, @required this.model}) : super(key: key);

@override
Widget build(BuildContext context) {
  return ScopedModel<movieModel>(
    model: model,
    child: MaterialApp(
      debugShowcheckedModeBanner: false,
      title: 'Shopping Cart',
      home: ListScreen(),
      routes: {'/cart':(context) => CartPage()},
      ),// MaterialApp
    );// ScopedModel
  }
}

class ListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent[50],
      appBar: AppBar(
        backgroundColor:Colors.orangeAccent [200],
        title: Text( 'Movies'+'  Total: '+ ScopedModel.of<movieModel>(context,rebuildOnChange: true).totalCartValue.tostring()+'฿' ),
        actions: <Widget>[
          FlatButton(
            child: Text("clear", style: TextStyle(color: Colors.white),),
            onPressed: () => ScopedModel.of<movieModel>(context).clearcart()), // FlatButton

          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () = Navigator.pushNamed(context, '/cart'),
          ) //  IconButton
        ], // <Widget>[]
      ), // AppBar
  body: ListVlew.builder(
  itemExtent: 80,
itemCount: itemList.length,
itemBuilder: (context, index) {
  return ScopeaModelDescendant<movieModel>(
    builder: (context, child, model) {
      return ListTile(
        leading: Image.network( itemList[index].imageUrl),
        title: Text(itemList[index].title),
        subtitle: Text("\฿"+itemList[index].price.toString()),
        trailing: OutlineBytton(
          Child: Text("Add"),
          onPressed: () => model.addProduct(itemList[indext]))); // Out;ineButton, ListTitle
       }); // ScopedModelDescendant
      },
     ),
    );
   }
  }
