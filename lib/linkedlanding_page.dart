import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkedLandingPage extends StatelessWidget {
  const LinkedLandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          SizedBox(height: 35),
          FadeInImage.memoryNetwork(
              placeholder: kTransparentImage,
              image: "https://i.ibb.co/LnFqnFs/profilepic2.png",
              height: 96,
              width: 96),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: Text('Hello World'),
          ),
          SizedBox(
            height: 20,
          ),
          LinkedButton(
            title: 'YouTube',
            url: "https://www.youtube.com/watch?v=6ERQ__yqbk0&t=36s",
            color: Colors.red,
          ),
          LinkedButton(
            title: 'Linkedin',
            url: "https://www.linkedin.com/",
            color: Colors.blue,
          ),
          LinkedButton(
            title: 'WhatsApp',
            url: "https://www.youtube.com/watch?v=6ERQ__yqbk0&t=36s",
            color: Colors.teal,
          ),
          LinkedButton(
            title: 'InstaGram',
            url: "https://www.youtube.com/watch?v=6ERQ__yqbk0&t=36s",
            color: Colors.pinkAccent,
          ),Spacer(),
          Row(mainAxisSize: MainAxisSize.min,
            children: [
              Text('Made in Flutter',style: TextStyle(fontSize: 15),),
              SizedBox(width: 7,),
              FadeInImage.memoryNetwork(
                  placeholder: kTransparentImage,
                  image:
                      "https://i.ibb.co/LnFqnFs/profilepic2.png",
              height: 25,width: 25,)
            ],
          ),
          SizedBox(height: 23.0,)
        ],
      ),
    );
  }
}

class LinkedButton extends StatelessWidget {
  const LinkedButton({
    Key? key,
    required this.title,
    required this.url,
    required this.color,
  }) : super(key: key);

  final String title;
  final String url;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;

    final smallWidth=width* 0.95;

    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: SizedBox(
        width:width>600?600:smallWidth ,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: color,
          ),
          onPressed: () => launch(url),
          child: Text(title),
        ),
      ),
    );
  }
}
