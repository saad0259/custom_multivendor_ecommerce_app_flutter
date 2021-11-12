import 'package:flutter/material.dart';

class Favourites extends StatelessWidget {
  const Favourites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        ListItem(),
        ListItem(),
        ListItem(),
        ListItem(),
        ListItem(),
      ],
    );
  }
}

class ListItem extends StatelessWidget {
  const ListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
        child: Container(
          color: Colors.blue.shade100,
          child: Row(
            children: [
              Image(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80'),
                height: 200.0,
                width: 150.0,
                fit: BoxFit.fill,
              ),
              SizedBox(
                width: 20.0,
              ),
              Column(
                children: [
                  Text(
                    'Title',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Expanded(
                      child: Center(
                          child: Text(
                    'Description',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ))),
                  Row(
                    children: [
                      RaisedButton(
                        color: Colors.blue,
                        onPressed: () {},
                        child: Text('Add to cart'),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite_outline,
                            color: Colors.red,
                          ))
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
