import 'package:flutter/material.dart';
import 'package:myapp/W7/EXERCISE-4/model/JokeModel.dart';

Color appColor = Colors.green[300] as Color;

class JokeCard extends StatelessWidget {
  const JokeCard({super.key, required this.profile,required this.onTap,required this.favIcon});
  final JokeProfile profile;
  final Function onTap;
  final bool favIcon;
 
  @override
  Widget build(BuildContext context) {
    bool _isFavorite = favIcon;

    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(width: .5, color: Colors.grey),
        ),
      ),
      padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  profile.title,
                  style:
                      TextStyle(color: appColor, fontWeight: FontWeight.w800),
                ),
                const SizedBox(height: 10.0),
                Text(profile.description),
              ],
            ),
          ),
          IconButton(
              onPressed: (){
                onTap();
              },
              icon: Icon(
                _isFavorite ? Icons.favorite : Icons.favorite_border,
                color: _isFavorite ? Colors.red : Colors.grey,
              )),
        ],
      ),
    );
  }
}
