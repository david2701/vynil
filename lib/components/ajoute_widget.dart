import '../utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class AjouteWidget extends StatefulWidget {
  AjouteWidget({Key key}) : super(key: key);

  @override
  _AjouteWidgetState createState() => _AjouteWidgetState();
}

class _AjouteWidgetState extends State<AjouteWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment(-1, 0),
                  child: Text(
                    'Annuler',
                    style: VinilTheme.bodyText1.override(
                      fontFamily: 'Source Sans Pro',
                      color: Color(0xFFFF0000),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment(1, 0),
                child: Text(
                  'Ajouter à une playlist',
                  textAlign: TextAlign.center,
                  style: VinilTheme.bodyText1.override(
                    fontFamily: 'Source Sans Pro',
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment(1, 0),
                  child: Text(
                    'Ok',
                    style: VinilTheme.bodyText1.override(
                      fontFamily: 'Source Sans Pro',
                      color: Color(0xFFFF0000),
                    ),
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
          padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'assets/images/Capture d’écran 2021-08-28 à 20.45.20.png',
              width: 250,
              height: 250,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
          child: Text(
            'Playlist N° 7',
            style: VinilTheme.bodyText1.override(
              fontFamily: 'Source Sans Pro',
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Divider(
          indent: 10,
          endIndent: 10,
        ),
        Align(
          alignment: Alignment(-0.9, 0),
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Text(
              'Description',
              textAlign: TextAlign.start,
              style: VinilTheme.bodyText1.override(
                fontFamily: 'Source Sans Pro',
                color: Color(0xFF979797),
                fontSize: 14,
              ),
            ),
          ),
        ),
        Divider(
          indent: 10,
          endIndent: 10,
        ),
        Align(
          alignment: Alignment(-1, 0),
          child: Padding(
            padding: EdgeInsets.fromLTRB(10, 15, 10, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                  child: Icon(
                    Icons.dehaze_rounded,
                    color: Color(0xFF707070),
                    size: 20,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                  child: Image.asset(
                    'assets/images/5099748976628_600-.jpeg',
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'On Est Encore Là (part 2)',
                      style: VinilTheme.bodyText1.override(
                        fontFamily: 'Source Sans Pro',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 63, 0),
                      child: Text(
                        'Suprême NTM',
                        textAlign: TextAlign.start,
                        style: VinilTheme.bodyText1.override(
                          fontFamily: 'Source Sans Pro',
                        ),
                      ),
                    )
                  ],
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment(1, 0),
                    child: FaIcon(
                      FontAwesomeIcons.trashAlt,
                      color: VinilTheme.primaryColor,
                      size: 20,
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
