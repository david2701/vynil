import 'package:page_transition/page_transition.dart';
import 'package:vynilmatic/utils/util.dart';

import '../backend/backend.dart';
import '../utils/theme.dart';
import '../utils/widgets.dart';
import '../player/player_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_plus/share_plus.dart';

class AfficherWidget extends StatefulWidget {
  AfficherWidget({Key key}) : super(key: key);

  @override
  _AfficherWidgetState createState() => _AfficherWidgetState();
}

class _AfficherWidgetState extends State<AfficherWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(30, 10, 0, 10),
                            child: Container(
                              width: 60,
                              height: 60,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset(
                                'assets/images/949ffbea5ebe16dd1762092e0cb794c5.399x399x1.jpg',
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                                  child: Text(
                                    'Suprême NTM',
                                    style: VinylTheme.bodyText1.override(
                                      fontFamily: 'Source Sans Pro',
                                      fontSize: 15,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment(0, 0),
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                                    child: Text(
                                      'Suprême NTM',
                                      textAlign: TextAlign.center,
                                      style:
                                          VinylTheme.bodyText1.override(
                                        fontFamily: 'Source Sans Pro',
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 35, 0),
                                  child: Text(
                                    '1976 - France',
                                    textAlign: TextAlign.center,
                                    style: VinylTheme.bodyText1.override(
                                      fontFamily: 'Source Sans Pro',
                                      fontSize: 11,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment(0, 1),
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(100, 0, 0, 0),
                                child: FaIcon(
                                  FontAwesomeIcons.ellipsisH,
                                  color: Colors.black,
                                  size: 12,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 300,
                        decoration: BoxDecoration(
                          color: Color(0xFFEEEEEE),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: Image.asset(
                              'assets/images/5099748976628_600.jpeg',
                            ).image,
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(3),
                                child: Image.asset(
                                  'assets/images/5099748976628_600-.jpeg',
                                  width: 150,
                                  height: 150,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: Text(
                                'On Est Encore Là (part 2)',
                                style: VinylTheme.bodyText1.override(
                                  fontFamily: 'Source Sans Pro',
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 3, 0, 0),
                              child: Text(
                                'Suprême NTM',
                                style: VinylTheme.bodyText1.override(
                                  fontFamily: 'Source Sans Pro',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Text(
                              'Conscious, Ragga HipHop',
                              style: VinylTheme.bodyText1.override(
                                fontFamily: 'Source Sans Pro',
                                color: Colors.white,
                                fontSize: 8,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        await Navigator.push(
                                          context,
                                          PageTransition(
                                            type:
                                                PageTransitionType.rightToLeft,
                                            duration:
                                                Duration(milliseconds: 3000),
                                            reverseDuration:
                                                Duration(milliseconds: 3000),
                                            child: PlayerWidget(),
                                          ),
                                        );
                                      },
                                      text: 'Lecture',
                                      icon: Icon(
                                        Icons.play_arrow_rounded,
                                        size: 15,
                                      ),
                                      options: FFButtonOptions(
                                        width: 130,
                                        height: 40,
                                        color: Colors.black,
                                        textStyle:
                                            VinylTheme.subtitle2.override(
                                          fontFamily: 'Source Sans Pro',
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w300,
                                        ),
                                        borderSide: BorderSide(
                                          color: Colors.white,
                                          width: 1,
                                        ),
                                        borderRadius: 6,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Align(
                                      alignment: Alignment(1, 0),
                                      child: Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 20, 0, 0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            await Navigator.push(
                                              context,
                                              PageTransition(
                                                type: PageTransitionType.fade,
                                                duration: Duration(
                                                    milliseconds: 2000),
                                                reverseDuration: Duration(
                                                    milliseconds: 2000),
                                                child: PlayerWidget(),
                                              ),
                                            );
                                          },
                                          text: 'Aléatoire',
                                          icon: FaIcon(
                                            FontAwesomeIcons.random,
                                            size: 15,
                                          ),
                                          options: FFButtonOptions(
                                            width: 130,
                                            height: 40,
                                            color: Colors.black,
                                            textStyle: VinylTheme
                                                .subtitle2
                                                .override(
                                              fontFamily: 'Source Sans Pro',
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w300,
                                            ),
                                            borderSide: BorderSide(
                                              color: Colors.white,
                                              width: 1,
                                            ),
                                            borderRadius: 6,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 5, 20, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                              child: Icon(
                                Icons.favorite_border,
                                color: Colors.black,
                                size: 24,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                              child: FaIcon(
                                FontAwesomeIcons.comment,
                                color: Colors.black,
                                size: 22,
                              ),
                            ),
                            Expanded(
                              child: Align(
                                alignment: Alignment(0.45, 0),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(180, 0, 0, 0),
                                  child: InkWell(
                                    onTap: () async {
                                      await Share.share('');
                                    },
                                    child: FaIcon(
                                      FontAwesomeIcons.share,
                                      color: Colors.black,
                                      size: 24,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                              child: Icon(
                                Icons.content_copy_sharp,
                                color: Colors.black,
                                size: 24,
                              ),
                            ),
                            Icon(
                              Icons.list_alt,
                              color: Colors.black,
                              size: 24,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 3),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Image.network(
                              'https://picsum.photos/seed/220/600',
                              width: 30,
                              height: 20,
                              fit: BoxFit.cover,
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 0, 0, 5),
                              child: Text(
                                'Aimé par',
                                style: VinylTheme.bodyText1.override(
                                  fontFamily: 'Source Sans Pro',
                                  fontSize: 10,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                              child: Text(
                                ' Vinymatic et 57 autres personnes',
                                style: VinylTheme.bodyText1.override(
                                  fontFamily: 'Source Sans Pro',
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        indent: 20,
                        endIndent: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,

                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                              child: Text(
                                'The Stylistics - Fabulous ',
                                style: VinylTheme.bodyText1.override(
                                  fontFamily: 'Source Sans Pro',
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                              child: Text(
                                '2x vinyls, Epic ‎– EPC 489766 1, Epic ‎– 489766, France, 1976,\n'
                                    'LP,  Gatefold, Picture disc, Conscious, Ragga HipHop',
                                overflow: TextOverflow.clip,
                                maxLines: 2,
                                //textAlign: TextAlign.start,

                                style: VinylTheme.bodyText1.override(
                                  fontFamily: 'Source Sans Pro',
                                  fontSize: 10,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        indent: 20,
                        endIndent: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  '13 offres sur Vinymatic',
                                  style: VinylTheme.bodyText1.override(
                                    fontFamily: 'Source Sans Pro',
                                    color: Color(0xFF71F1B1),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 50, 0),
                                  child: Text(
                                    'à partir de 12.50 €',
                                    textAlign: TextAlign.start,
                                    style: VinylTheme.bodyText1.override(
                                      fontFamily: 'Source Sans Pro',
                                      fontSize: 10,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Expanded(
                              child: Align(
                                alignment: Alignment(1, 0),
                                child: FFButtonWidget(
                                  onPressed: () {
                                    print('Button pressed ...');
                                  },
                                  text: 'Vendre ma version',
                                  options: FFButtonOptions(
                                    width: 125,
                                    height: 35,
                                    color: Color(0xFFFFFFFF),
                                    textStyle:
                                        VinylTheme.subtitle2.override(
                                      fontFamily: 'Source Sans Pro',
                                      color: Colors.black,
                                      fontSize: 13,
                                    ),
                                    borderSide: BorderSide(
                                      color: Colors.black,
                                      width: 1,
                                    ),
                                    borderRadius: 0,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        indent: 20,
                        endIndent: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 400,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                          ),
                          child: StreamBuilder<List<SongsRecord>>(
                            stream: querySongsRecord(
                              limit: 10,
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
                              List<SongsRecord> columnSongsRecordList =
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
                              return Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:
                                    List.generate(columnSongsRecordList.length,
                                        (columnIndex) {
                                  final columnSongsRecord =
                                      columnSongsRecordList[columnIndex];
                                  return Expanded(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 0, 10, 0),
                                          child: Text(
                                            'A1',
                                            style: VinylTheme.bodyText1
                                                .override(
                                              fontFamily: 'Source Sans Pro',
                                            ),
                                          ),
                                        ),
                                        Text(
                                          valueOrDefault<String>(
                                            columnSongsRecord.name,
                                            'Name',
                                          ),
                                          style: VinylTheme.bodyText1
                                              .override(
                                            fontFamily: 'Source Sans Pro',
                                          ),
                                        ),
                                        Expanded(
                                          child: Align(
                                            alignment: Alignment(1, 0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                columnSongsRecord.time,
                                                'time',
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
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Color(0xFFEEEEEE),
                          ),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
                            child: Text(
                              'Titre de la face du disque',
                              style: VinylTheme.bodyText1.override(
                                fontFamily: 'Source Sans Pro',
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment(-0.5, 0),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                          child: Text(
                            'Sous-titre des subtracks ( ou sous titre de la face )',
                            textAlign: TextAlign.start,
                            style: VinylTheme.bodyText1.override(
                              fontFamily: 'Source Sans Pro',
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 280,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 230,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                            ),
                            child: StreamBuilder<List<SongsRecord>>(
                              stream: querySongsRecord(
                                limit: 5,
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
                                List<SongsRecord> columnSongsRecordList =
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
                                return Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: List.generate(
                                      columnSongsRecordList.length,
                                      (columnIndex) {
                                    final columnSongsRecord =
                                        columnSongsRecordList[columnIndex];
                                    return Expanded(
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                0, 0, 10, 0),
                                            child: Text(
                                              'A1',
                                              style: VinylTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Source Sans Pro',
                                              ),
                                            ),
                                          ),
                                          Text(
                                            valueOrDefault<String>(
                                              columnSongsRecord.name,
                                              'Name',
                                            ),
                                            style: VinylTheme.bodyText1
                                                .override(
                                              fontFamily: 'Source Sans Pro',
                                            ),
                                          ),
                                          Expanded(
                                            child: Align(
                                              alignment: Alignment(1, 0),
                                              child: Text(
                                                valueOrDefault<String>(
                                                  columnSongsRecord.time,
                                                  'time',
                                                ),
                                                style: VinylTheme
                                                    .bodyText1
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
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
