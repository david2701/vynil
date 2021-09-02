import '../backend/backend.dart';
import '../components/playlist_widget.dart';
import '../utils/theme.dart';
import '../utils/toggle_icon.dart';
import '../utils/util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                    alignment: Alignment(0.4, 0),
                    child: Text(
                      'Ajouter à une playlist',
                      textAlign: TextAlign.center,
                      style: VinylTheme.bodyText1.override(
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
                    style: VinylTheme.bodyText1.override(
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
          padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment(-0.75, 0.2),
                  child: Text(
                    'J’aime',
                    textAlign: TextAlign.center,
                    style: VinylTheme.bodyText1.override(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment(0.85, 0),
                  child: StreamBuilder<List<FavoriteRecord>>(
                    stream: queryFavoriteRecord(
                      singleRecord: true,
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50,
                            height: 50,
                            child: CircularProgressIndicator(
                              color: VinylTheme.primaryColor,
                            ),
                          ),
                        );
                      }
                      List<FavoriteRecord> toggleIconFavoriteRecordList =
                          snapshot.data;
                      // Customize what your widget looks like with no query results.
                      if (snapshot.data.isEmpty) {
                        return Container(
                          height: 100,
                          child: Center(
                            child: Text('No results.'),
                          ),
                        );
                      }
                      final toggleIconFavoriteRecord =
                          toggleIconFavoriteRecordList.first;
                      return ToggleIcon(
                        onPressed: () async {
                          final favoriteUpdateData = createFavoriteRecordData(
                            favorite: !toggleIconFavoriteRecord.favorite,
                          );
                          await toggleIconFavoriteRecord.reference
                              .update(favoriteUpdateData);
                        },
                        value: toggleIconFavoriteRecord.favorite,
                        onIcon: Icon(
                          Icons.favorite_border,
                          color: Colors.black,
                          size: 25,
                        ),
                        offIcon: Icon(
                          Icons.favorite_sharp,
                          color: Colors.black,
                          size: 25,
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
          child: Text(
            'Annuler',
            style: VinylTheme.bodyText1.override(
              fontFamily: 'Source Sans Pro',
              color: Color(0xFFFF0000),
            ),
          ),
        )
      ],
    );
  }
}
