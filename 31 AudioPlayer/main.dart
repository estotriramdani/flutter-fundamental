import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AudioPlayer audioPlayer;
  String durasi = "00:00:00";

  _MyAppState() {
    audioPlayer = AudioPlayer();
    audioPlayer.onAudioPositionChanged.listen((duration) {
      setState(() {
        durasi = duration.toString();
      });
    });
    audioPlayer.setReleaseMode(ReleaseMode.LOOP);
  }

  void playSound(String url) async {
    await audioPlayer.play(url);
  }

  void pauseSound() async {
    await audioPlayer.pause();
  }

  void stopSound() async {
    await audioPlayer.stop();
  }

  void resumeSound() async {
    await audioPlayer.resume();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Playing music'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
                child: Text("Play"),
                onPressed: () {
                  playSound(
                      'https://r4---sn-poqvn5u-jb3s.googlevideo.com/videoplayback?expire=1617296011&ei=M_hlYJCbJJqIwgP9ioXABA&ip=0.0.0.0&id=d5ce836bd520fef8&itag=25&source=yt_reference&requiressl=yes&susc=ytcm&mime=audio/mpeg&vprv=1&prv=1&gir=yes&clen=4818061&ratebypass=yes&dur=120.450&lmt=1606925442401970&title=19th%20Floor%20-%20Bobby%20Richards&ext=mp3&sparams=expire,ei,ip,id,itag,source,requiressl,susc,mime,vprv,prv,gir,clen,ratebypass,dur,lmt,title,ext&sig=AOq0QJ8wRAIgKdE_jFa0vyIR1y91V8SWPYgw20d1VkUJ1I_r4iHeakUCICB-x5mBz_HSTSoyCJHBNRSqqlFZHbcDKRIcCj3-h8_g&cms_redirect=yes&mh=4X&mip=114.5.219.205&mm=31&mn=sn-poqvn5u-jb3s&ms=au&mt=1617295249&mv=m&mvi=4&pl=24&lsparams=mh,mip,mm,mn,ms,mv,mvi,pl&lsig=AG3C_xAwRgIhALRngXuNmA40xRwWTIiUtZdQLFMer_bA2-D0GtFydxGIAiEA8nqhI1QKgrkJ-PP3Rleus6DRFY1Z-oQmP2uxeREDytA%3D');
                },
              ),
              RaisedButton(
                child: Text("Pause"),
                onPressed: () {
                  pauseSound();
                },
              ),
              RaisedButton(
                  child: Text("Stop"),
                  onPressed: () {
                    stopSound();
                  }),
              RaisedButton(
                child: Text("Resume"),
                onPressed: () {
                  resumeSound();
                },
              ),
              Text(
                durasi,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
