import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

class Audioplayer extends StatefulWidget {
  const Audioplayer({Key key}) : super(key: key);

  @override
  _AudioplayerState createState() => _AudioplayerState();
}

class _AudioplayerState extends State<Audioplayer> {
  @override
  void initState() {
    super.initState();
    initPlayer();
  }

  void initPlayer() {
    advancedPlayer.durationHandler = (d) => setState(() {
          _duration = d;
        });

    advancedPlayer.positionHandler = (p) => setState(() {
          _position = p;
        });
  }

  static AudioPlayer advancedPlayer = new AudioPlayer();
  AudioCache audioCache = new AudioCache(fixedPlayer: advancedPlayer);
  Duration _duration = new Duration();
  Duration _position = new Duration();
  String localFilePath;
  bool iconswap = true;

  Widget slider() {
    return Slider(
      inactiveColor: Colors.black38,
      activeColor: Colors.black,
      value: _position.inSeconds.toDouble(),
      min: 0.0,
      max: _duration.inSeconds.toDouble(),
      onChanged: (double value) {
        setState(() {
          seekToSecond(value.toInt());
          value = value;
        });
      },
    );
  }

  void seekToSecond(int second) {
    Duration newDuration = Duration(seconds: second);

    advancedPlayer.seek(newDuration);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Player"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 50,
          ),
          Center(
            child: Text("the name of the audio"),
          ),
          Container(
            width: double.infinity,
            child: Column(
              children: [
                slider(),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      child: Icon(
                        Icons.skip_previous,
                        size: 50,
                      ),
                      onTap: () => print('skip_previous'),
                    ),
                    iconswap
                        ? InkWell(
                            onTap: () {
                              setState(() {
                                iconswap = !iconswap;
                              });
                              audioCache.play('audio.mp3');
                            },
                            child: Icon(Icons.play_circle_filled, size: 100))
                        : InkWell(
                            onTap: () {
                              setState(() {
                                iconswap = !iconswap;
                              });
                              advancedPlayer.pause();
                            },
                            child: Icon(
                              Icons.pause_circle_filled,
                              size: 100,
                            ),
                          ),
                    InkWell(
                        onTap: () => print("skip_next"),
                        child: Icon(Icons.skip_next, size: 50))
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
