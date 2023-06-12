import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../models/recipe.dart';

class HomeCard extends StatefulWidget {
  // const HomeCard({super.key});
  final Recipe recipe;

  const HomeCard({super.key, required this.recipe});

  @override
  State<HomeCard> createState() => _HomeCardState();
}

class _HomeCardState extends State<HomeCard> {
  // @override
  // void initState() {
  //   SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);

  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      // margin: const EdgeInsets.all(5),
      child: Column(
        children: [
          Stack(
            children: [
              Image.network(
                fit: BoxFit.contain,
                widget.recipe.imageUrl,
              ),
              // "https://www.howtocook.recipes/wp-content/uploads/2021/05/Ratatouille-recipe.jpg"),
              // Title(color: Colors.black, child: child),
              Positioned(
                right: 0,
                bottom: 20,
                child: Container(
                  height: 100,
                  width: 250,
                  color: Colors.black54,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  child: Text(
                    widget.recipe.title,
                    // "recipe",
                    // overflow: TextOverflow.ellipsis,
                    overflow: TextOverflow.fade,
                    style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
              )
            ],
          ),
          // const Padding(padding: EdgeInsets.only(top: 5)),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  const Icon(Icons.access_alarm),
                  Text(
                    " ${widget.recipe.duration} minutes",
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const Row(
                children: [
                  Icon(Icons.lock),
                  Text(
                    "Simple",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.currency_exchange_sharp),
                  Text(
                    "Affordable",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
