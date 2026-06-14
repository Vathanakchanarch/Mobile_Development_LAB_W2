import 'package:flutter/material.dart';
import 'package:myapp/W7/EXERCISE-2/model/profile_tile_model.dart';
import 'package:myapp/W7/EXERCISE-4/data/Joke_Data.dart';
import 'package:myapp/W7/EXERCISE-4/model/JokeModel.dart';
import 'package:myapp/W7/EXERCISE-4/ui/screens/Jokecard.dart';

Color appColor = Colors.green[300] as Color;
class FavoriteCard extends StatefulWidget {
  const FavoriteCard({
    super.key,
  
  });
  @override
  State<FavoriteCard> createState() => _FavoriteCardState();
}

class _FavoriteCardState extends State<FavoriteCard> {
  bool _isFavorite = false;
  int? indexfav;
  
  void onFavoriteClick() {
    setState(() {
      _isFavorite = !_isFavorite;
    });
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: appColor,
          title: const Text("Favorite Jokes"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              for (int i=0 ; i < jokes.length; i++)
              JokeCard(profile: jokes[i],onTap: onFavoriteClick,favIcon: _isFavorite,),
              
            ],
          ),
        ),
      );
  }
}
