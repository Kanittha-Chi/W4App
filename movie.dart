import 'package:flutter/material.dart';

class Movie{
  int id;
  String title;
  String imageUrl;
  double price;
  int qty;
  
  Movie(
      {
         @required this.id,
         @required this.title,
         @required this.imageUrl,
         @required this.price,
         @required this.qty});
}

List<Movie> itemList =[
 Movie(
   id: 1,
   title:'Cravitv',
   imageUrl:'https://images-na.ssl-images-amazon.com/images/I/415SefBdppL._AC_SY400_.jpg',
   price: 300,
   qty: 1
 ),
 Movie(
   id: 2,
   title:'Mean streets',
   imageUrl:'https://images-na.ssl-images-amazon.com/images/I/51hOnaTfOUL._AC_.jpg',
   price: 200,
   qty: 1
 ),
 Movie(
   id: 3,
   title:'Ratatouille',
   imageUrl:'https://images-na.ssl-images-amazon.com/images/I/7IVDlRubWtL._AC_SY741_.jpg',
   price: 300,
   qty: 1
),
 Movie(
   id: 4,
   title:'American Graffiti',
   imageUrl:'https://images-na.ssl-images-amazon.com/images/I/7191APnbx3L._AC_SY550_.jpg',
   price: 250,
   qty: 1
),
Movie(
   id: 5,
   title:'Homefront',
   imageUrl:'https://images-na.ssl-images-amazon.com/images/I/71se2RUXCnL._AC_SY741_.jpg',
   price: 400,
   qty: 1
),
Movie(
   id:6,
   title:'Outside the wire',
   imageUrl:'https://images-na.ssl-images-amazon.com/images/I/91USkx89IJL._AC_SY445_.jpg',
   price: 300,
   qty: 1
),
Movie(
   id:7,
   title:'Cut throat city',
   imageUrl:'https://images-na.ssl-images-amazon.com/images/I/81NBRw5cf8L._SL1500_.jpg',
   price: 299,
   qty: 1
),
Movie(
   id:8,
   title:'Singles',
   imageUrl:'https://cdn.shopify.com/s/files/1/1416/8662/products/singles_1992_italian_original_film_art_5000x.jpg?v=1569075067',
   price: 200,
   qty: 1
),
Movie(
   id: 9,
   title:'Death of me',
   imageUrl:'https://m.media-amazon.com/images/M/MV5BNWY2MDJiZjctNDgyYS00ZmZmLTkINzctNjkwOTY20DMIZDYyXkEyXkFqcGdeQXVyNDczNjI2MzU@._V1_.jpg',
   price: 350,
   qty: 1
),
Movie(
   id: 10,
   title:'The Vanished',
   imageUrl:'http://freemovie2x.com/wp-content/uploads/2020/09/The_Vanished-789547935-large.jpg',
   price: 300,
   qty: 1
 ),
];
