import '../components/option_widget.dart';
import '../utils/theme.dart';
import '../utils/util.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class PlayerWidget extends StatefulWidget {
  PlayerWidget({Key key}) : super(key: key);

  @override
  _PlayerWidgetState createState() => _PlayerWidgetState();
}

class _PlayerWidgetState extends State<PlayerWidget> {
  double sliderValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 1,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF17232C), Color(0xFF033A54), Color(0xFF032130)],
            stops: [0, 1, 1],
            begin: Alignment(0.03, -1),
            end: Alignment(-0.03, 1),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 120, 0, 0),
              child: Image.asset(
                'assets/images/5099748976628_600-.jpeg',
                width: 275,
                height: 275,
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: Alignment(-0.75, 0),
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
                child: Text(
                  'On Est Encore Là (part 2)',
                  textAlign: TextAlign.start,
                  style: VinylTheme.bodyText1.override(
                    fontFamily: 'Source Sans Pro',
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment(-0.86, 0),
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                child: Text(
                  'Suprême NTM',
                  style: VinylTheme.bodyText1.override(
                    fontFamily: 'Source Sans Pro',
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 50, 10, 50),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment(0.25, 0),
                      child: FaIcon(
                        FontAwesomeIcons.forward,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment(0.3, 0),
                      child: InkWell(
                        onTap: () async {
                          await showDialog(
                            context: context,
                            builder: (alertDialogContext) {
                              return AlertDialog(
                                title: Text('Ajouté à la playlist'),
                                content: Text(
                                    '1 morceau ajouté(s) à « Playlist Sans Titre N° 7 »'),
                                actions: [
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(alertDialogContext),
                                    child: Text('Ok'),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: Icon(
                          Icons.play_arrow_rounded,
                          color: Colors.white,
                          size: 80,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment(0, 0),
                      child: FaIcon(
                        FontAwesomeIcons.forward,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Icon(
                    Icons.volume_mute_rounded,
                    color: Color(0xFF73AAC5),
                    size: 18,
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment(-1, 0),
                      child: Slider(
                        activeColor: Color(0xFF73AAC5),
                        inactiveColor: Color(0xFF2F647E),
                        min: 0,
                        max: 100,
                        value: sliderValue ??= 40,
                        onChanged: (newValue) {
                          setState(() => sliderValue = newValue);
                        },
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(1, 0),
                    child: Icon(
                      Icons.volume_mute_rounded,
                      color: Color(0xFF73AAC5),
                      size: 24,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                NavBarPage(initialPage: 'Afficher'),
                          ),
                        );
                      },
                      child: Icon(
                        Icons.list,
                        color: Color(0xFF697C87),
                        size: 20,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Icon(
                      Icons.share_rounded,
                      color: Color(0xFF697C87),
                      size: 24,
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () async {
                        await showModalBottomSheet(
                          isScrollControlled: true,
                          context: context,
                          builder: (context) {
                            return Container(
                              height: 250,
                              child: OptionWidget(),
                            );
                          },
                        );
                      },
                      child: Icon(
                        Icons.playlist_play,
                        color: Color(0xFF697C87),
                        size: 24,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
