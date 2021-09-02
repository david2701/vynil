import '../backend/backend.dart';
import '../components/ajoute_widget.dart';
import '../utils/theme.dart';
import '../utils/util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlaylistWidget extends StatefulWidget {
  PlaylistWidget({Key key}) : super(key: key);

  @override
  _PlaylistWidgetState createState() => _PlaylistWidgetState();
}

class _PlaylistWidgetState extends State<PlaylistWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 700,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF17232C), Color(0xFF033A54), Color(0xFF032130)],
          stops: [0, 1, 1],
          begin: Alignment(0, 1),
          end: Alignment(0, -1),
        ),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment(0, -1),
            child: Padding(
              padding: EdgeInsets.fromLTRB(10, 50, 10, 0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.83,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xFFCCCCCC),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.1, 1),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.92,
              height: 590,
              decoration: BoxDecoration(
                color: Color(0xFFEEEEEE),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(0),
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 15, 10, 10),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Align(
                                alignment: Alignment(1, 0),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(9, 0, 0, 0),
                                  child: Text(
                                    'Playlist',
                                    style: VinylTheme.bodyText1.override(
                                      fontFamily: 'Source Sans Pro',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Align(
                                alignment: Alignment(1, 0),
                                child: InkWell(
                                  onTap: () async {
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    'Annuler',
                                    textAlign: TextAlign.start,
                                    style: VinylTheme.bodyText1.override(
                                      fontFamily: 'Source Sans Pro',
                                      color: Color(0xFFFF0000),
                                      fontSize: 11,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Divider(),
                      InkWell(
                        onTap: () async {
                          await showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            builder: (context) {
                              return Container(
                                height: 700,
                                child: AjouteWidget(),
                              );
                            },
                          );
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Image.asset(
                              'assets/images/btn_add_playlist.png',
                              width: 50,
                              height: 50,
                              fit: BoxFit.cover,
                            ),
                            Expanded(
                              child: Align(
                                alignment: Alignment(-0.8, 0),
                                child: Text(
                                  'Nouvelle playlist…',
                                  style: VinylTheme.bodyText1.override(
                                    fontFamily: 'Source Sans Pro',
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Divider(
                        indent: 55,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Image.asset(
                            'assets/images/Image 2.png',
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment(-0.8, 0),
                              child: Text(
                                'Daily Mix',
                                style: VinylTheme.bodyText1.override(
                                  fontFamily: 'Source Sans Pro',
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Divider(
                        indent: 55,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Image.asset(
                            'assets/images/Image 3.png',
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment(-0.8, 0),
                              child: Text(
                                'En voiture',
                                style: VinylTheme.bodyText1.override(
                                  fontFamily: 'Source Sans Pro',
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Divider(
                        indent: 55,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Image.asset(
                            'assets/images/Image 4.png',
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment(-0.8, 0),
                              child: Text(
                                'Playlist soirée 2021',
                                style: VinylTheme.bodyText1.override(
                                  fontFamily: 'Source Sans Pro',
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Divider(
                        indent: 55,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Image.asset(
                            'assets/images/Image 5.png',
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment(-0.8, 0),
                              child: Text(
                                'Hip Hop 90’s',
                                style: VinylTheme.bodyText1.override(
                                  fontFamily: 'Source Sans Pro',
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Divider(
                        indent: 55,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Image.asset(
                            'assets/images/Image 6.png',
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment(-0.8, 0),
                              child: Text(
                                'Soul Train 70’s',
                                style: VinylTheme.bodyText1.override(
                                  fontFamily: 'Source Sans Pro',
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 300,
                          decoration: BoxDecoration(
                            color: Color(0xFFEEEEEE),
                          ),
                          child: StreamBuilder<List<NewPlaylistRecord>>(
                            stream: queryNewPlaylistRecord(),
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
                              List<NewPlaylistRecord>
                                  columnNewPlaylistRecordList = snapshot.data;
                              // Customize what your widget looks like with no query results.
                              if (snapshot.data.isEmpty) {
                                return Container(
                                  height: 100,
                                  child: Center(
                                    child: Text('No results.'),
                                  ),
                                );
                              }
                              return Column(
                                mainAxisSize: MainAxisSize.max,
                                children: List.generate(
                                    columnNewPlaylistRecordList.length,
                                    (columnIndex) {
                                  final columnNewPlaylistRecord =
                                      columnNewPlaylistRecordList[columnIndex];
                                  return Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Image.network(
                                          'http://thelydianstring.com/wp-content/uploads/cd-dummy.jpg',
                                          width: 50,
                                          height: 50,
                                          fit: BoxFit.cover,
                                        ),
                                        Expanded(
                                          child: Align(
                                            alignment: Alignment(-0.8, 0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                columnNewPlaylistRecord
                                                    .namePlaylist,
                                                'Name PlayList',
                                              ),
                                              style: VinylTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Source Sans Pro',
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  );
                                }),
                              );
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
