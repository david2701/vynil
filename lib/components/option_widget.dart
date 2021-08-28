import '../components/playlist_widget.dart';
import '../utils/theme.dart';
import 'package:flutter/material.dart';


class OptionWidget extends StatefulWidget {
  OptionWidget({Key key}) : super(key: key);

  @override
  _OptionWidgetState createState() => _OptionWidgetState();
}

class _OptionWidgetState extends State<OptionWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
          child: InkWell(
            onTap: () async {
              await showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) {
                  return Container(
                    height: 660,
                    child: PlaylistWidget(),
                  );
                },
              );
            },
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment(0, 0),
                    child: Text(
                      'Ajouter à une playlist',
                      textAlign: TextAlign.center,
                      style: VinilTheme.bodyText1.override(
                        fontFamily: 'Source Sans Pro',
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment(0.75, 0),
                    child: Icon(
                      Icons.playlist_play_outlined,
                      color: Colors.black,
                      size: 24,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Divider(
          indent: 10,
          endIndent: 10,
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment(-0.45, 0),
                  child: Text(
                    'Afficher l’album',
                    textAlign: TextAlign.center,
                    style: VinilTheme.bodyText1.override(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment(0.75, 0),
                  child: Icon(
                    Icons.content_copy,
                    color: Colors.black,
                    size: 24,
                  ),
                ),
              )
            ],
          ),
        ),
        Divider(
          indent: 10,
          endIndent: 10,
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment(-0.75, 0),
                  child: Text(
                    'J’aime',
                    textAlign: TextAlign.center,
                    style: VinilTheme.bodyText1.override(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment(0.75, 0),
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.black,
                    size: 24,
                  ),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 38, 0, 0),
          child: Text(
            'Annuler',
            style: VinilTheme.bodyText1.override(
              fontFamily: 'Source Sans Pro',
              color: Color(0xFFFF0000),
            ),
          ),
        )
      ],
    );
  }
}
