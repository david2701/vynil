import '../components/playlist_widget.dart';
import '../utils/animations.dart';
import '../utils/theme.dart';
import '../utils/widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class AfficherWidget extends StatefulWidget {
  AfficherWidget({Key key}) : super(key: key);

  @override
  _AfficherWidgetState createState() => _AfficherWidgetState();
}

class _AfficherWidgetState extends State<AfficherWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'rowOnPageLoadAnimation1': AnimationInfo(
      curve: Curves.bounceOut,
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
    ),
    'rowOnPageLoadAnimation2': AnimationInfo(
      curve: Curves.bounceOut,
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
    ),
  };
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    startAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );
  }

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
                                    style: VinilTheme.bodyText1.override(
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
                                          VinilTheme.bodyText1.override(
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
                                    style: VinilTheme.bodyText1.override(
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
                                style: VinilTheme.bodyText1.override(
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
                                style: VinilTheme.bodyText1.override(
                                  fontFamily: 'Source Sans Pro',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Text(
                              'Conscious, Ragga HipHop',
                              style: VinilTheme.bodyText1.override(
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
                                      onPressed: () {
                                        print('Button pressed ...');
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
                                            VinilTheme.subtitle2.override(
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
                                          onPressed: () {
                                            print('Button pressed ...');
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
                                            textStyle: VinilTheme
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
                                  child: FaIcon(
                                    FontAwesomeIcons.share,
                                    color: Colors.black,
                                    size: 24,
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
                                style: VinilTheme.bodyText1.override(
                                  fontFamily: 'Source Sans Pro',
                                  fontSize: 10,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                              child: Text(
                                ' Vinymatic et 57 autres personnes',
                                style: VinilTheme.bodyText1.override(
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
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                              child: Text(
                                'The Stylistics - Fabulous 2x vinyls, Epic ‎– EPC 489766 1, Epic ‎– 489766 1, France,\n 1976, LP, Gatefold, Picture disc, Conscious, Ragga HipHop',
                                textAlign: TextAlign.center,
                                style: VinilTheme.bodyText1.override(
                                  fontFamily: 'Source Sans Pro',
                                  fontSize: 10,
                                  fontWeight: FontWeight.normal,
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
                        padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  '13 offres sur Vinymatic',
                                  style: VinilTheme.bodyText1.override(
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
                                    style: VinilTheme.bodyText1.override(
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
                                    VinilTheme.subtitle2.override(
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
                          height: 655,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'A1 ',
                                    style: VinilTheme.bodyText1.override(
                                      fontFamily: 'Source Sans Pro',
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(8, 0, 80, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment: Alignment(5, 0),
                                          child: Text(
                                            'Because I Love You, Girl',
                                            style: VinilTheme.bodyText1
                                                .override(
                                              fontFamily: 'Source Sans Pro',
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 0, 0, 0),
                                          child: Text(
                                            'Brother to Brother',
                                            textAlign: TextAlign.start,
                                            style: VinilTheme.bodyText1
                                                .override(
                                              fontFamily: 'Source Sans Pro',
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment(-0.9, 0),
                                    child: Icon(
                                      Icons.volume_mute_outlined,
                                      color: Colors.black,
                                      size: 24,
                                    ),
                                  ),
                                  Expanded(
                                    child: Align(
                                      alignment: Alignment(1, 0),
                                      child: Text(
                                        '3.30',
                                        style:
                                            VinilTheme.bodyText1.override(
                                          fontFamily: 'Source Sans Pro',
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ).animated(
                                  [animationsMap['rowOnPageLoadAnimation1']]),
                              Divider(
                                thickness: 1,
                              ),
                              InkWell(
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
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'A2',
                                      style:
                                          VinilTheme.bodyText1.override(
                                        fontFamily: 'Source Sans Pro',
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(10, 0, 80, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment: Alignment(-1, 0),
                                            child: Text(
                                              'Can\'t Help Failling In Love',
                                              style: VinilTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Source Sans Pro',
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.fromLTRB(0, 0, 0, 0),
                                            child: Text(
                                              'C.B & Ten Others With Axes',
                                              textAlign: TextAlign.start,
                                              style: VinilTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Source Sans Pro',
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Align(
                                        alignment: Alignment(1, 0),
                                        child: Text(
                                          '3.30',
                                          style: VinilTheme.bodyText1
                                              .override(
                                            fontFamily: 'Source Sans Pro',
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Divider(
                                thickness: 1,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'A3 ',
                                    style: VinilTheme.bodyText1.override(
                                      fontFamily: 'Source Sans Pro',
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(7, 0, 80, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment: Alignment(-1, 0),
                                          child: Text(
                                            'Maybe It’s Because You’re Lonely',
                                            style: VinilTheme.bodyText1
                                                .override(
                                              fontFamily: 'Source Sans Pro',
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Align(
                                      alignment: Alignment(1, 0),
                                      child: Text(
                                        '3.30',
                                        style:
                                            VinilTheme.bodyText1.override(
                                          fontFamily: 'Source Sans Pro',
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ).animated(
                                  [animationsMap['rowOnPageLoadAnimation2']]),
                              Divider(
                                thickness: 1,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'A4',
                                    style: VinilTheme.bodyText1.override(
                                      fontFamily: 'Source Sans Pro',
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(10, 0, 80, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment: Alignment(-1, 0),
                                          child: Text(
                                            'You Are',
                                            style: VinilTheme.bodyText1
                                                .override(
                                              fontFamily: 'Source Sans Pro',
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Align(
                                      alignment: Alignment(1, 0),
                                      child: Text(
                                        '3.30',
                                        style:
                                            VinilTheme.bodyText1.override(
                                          fontFamily: 'Source Sans Pro',
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Divider(
                                thickness: 1,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'A5',
                                    style: VinilTheme.bodyText1.override(
                                      fontFamily: 'Source Sans Pro',
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(10, 0, 80, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment: Alignment(-1, 0),
                                          child: Text(
                                            ' It’s So Good',
                                            style: VinilTheme.bodyText1
                                                .override(
                                              fontFamily: 'Source Sans Pro',
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Align(
                                      alignment: Alignment(1, 0),
                                      child: Text(
                                        '3.30',
                                        style:
                                            VinilTheme.bodyText1.override(
                                          fontFamily: 'Source Sans Pro',
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Divider(
                                thickness: 1,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'B1',
                                    style: VinilTheme.bodyText1.override(
                                      fontFamily: 'Source Sans Pro',
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(10, 0, 80, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment: Alignment(-1, 0),
                                          child: Text(
                                            'Sixteen Bars',
                                            style: VinilTheme.bodyText1
                                                .override(
                                              fontFamily: 'Source Sans Pro',
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Align(
                                      alignment: Alignment(1, 0),
                                      child: Text(
                                        '3.30',
                                        style:
                                            VinilTheme.bodyText1.override(
                                          fontFamily: 'Source Sans Pro',
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Divider(
                                thickness: 1,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'B2',
                                    style: VinilTheme.bodyText1.override(
                                      fontFamily: 'Source Sans Pro',
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(10, 0, 80, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment: Alignment(-1, 0),
                                          child: Text(
                                            'Baby, Don’t Change Your Mind',
                                            style: VinilTheme.bodyText1
                                                .override(
                                              fontFamily: 'Source Sans Pro',
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Align(
                                      alignment: Alignment(1, 0),
                                      child: Text(
                                        '3.30',
                                        style:
                                            VinilTheme.bodyText1.override(
                                          fontFamily: 'Source Sans Pro',
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Divider(
                                thickness: 1,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'B3',
                                    style: VinilTheme.bodyText1.override(
                                      fontFamily: 'Source Sans Pro',
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(10, 0, 80, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment: Alignment(-1, 0),
                                          child: Text(
                                            'I Will Love You Always',
                                            style: VinilTheme.bodyText1
                                                .override(
                                              fontFamily: 'Source Sans Pro',
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Align(
                                      alignment: Alignment(1, 0),
                                      child: Text(
                                        '3.30',
                                        style:
                                            VinilTheme.bodyText1.override(
                                          fontFamily: 'Source Sans Pro',
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Divider(
                                thickness: 1,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'B4',
                                    style: VinilTheme.bodyText1.override(
                                      fontFamily: 'Source Sans Pro',
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(10, 0, 80, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment: Alignment(-1, 0),
                                          child: Text(
                                            'Starvin’ Love',
                                            style: VinilTheme.bodyText1
                                                .override(
                                              fontFamily: 'Source Sans Pro',
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Align(
                                      alignment: Alignment(1, 0),
                                      child: Text(
                                        '3.30',
                                        style:
                                            VinilTheme.bodyText1.override(
                                          fontFamily: 'Source Sans Pro',
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Divider(
                                thickness: 1,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'B5',
                                    style: VinilTheme.bodyText1.override(
                                      fontFamily: 'Source Sans Pro',
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(10, 0, 80, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment: Alignment(-1, 0),
                                          child: Text(
                                            'You Ought To Be With Me',
                                            style: VinilTheme.bodyText1
                                                .override(
                                              fontFamily: 'Source Sans Pro',
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Align(
                                      alignment: Alignment(1, 0),
                                      child: Text(
                                        '3.30',
                                        style:
                                            VinilTheme.bodyText1.override(
                                          fontFamily: 'Source Sans Pro',
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 25,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF2F2F2),
                                  ),
                                  child: Align(
                                    alignment: Alignment(-1, 0),
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      child: Text(
                                        'Titre de la face du disque',
                                        style:
                                            VinilTheme.bodyText1.override(
                                          fontFamily: 'Source Sans Pro',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 20, 40, 10),
                                child: Text(
                                  'Sous-titre des subtracks ( ou sous titre de la face)',
                                  textAlign: TextAlign.start,
                                  style: VinilTheme.bodyText1.override(
                                    fontFamily: 'Source Sans Pro',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Divider(
                                thickness: 1,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                                    child: Icon(
                                      Icons.arrow_right_alt,
                                      color: Colors.black,
                                      size: 24,
                                    ),
                                  ),
                                  Text(
                                    'C1',
                                    style: VinilTheme.bodyText1.override(
                                      fontFamily: 'Source Sans Pro',
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(10, 0, 80, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment: Alignment(-1, 0),
                                          child: Text(
                                            'You Ought To Be With Me',
                                            style: VinilTheme.bodyText1
                                                .override(
                                              fontFamily: 'Source Sans Pro',
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Align(
                                      alignment: Alignment(1, 0),
                                      child: Text(
                                        '3.30',
                                        style:
                                            VinilTheme.bodyText1.override(
                                          fontFamily: 'Source Sans Pro',
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Divider(
                                thickness: 1,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                                    child: Icon(
                                      Icons.arrow_right_alt,
                                      color: Colors.black,
                                      size: 24,
                                    ),
                                  ),
                                  Text(
                                    'C2',
                                    style: VinilTheme.bodyText1.override(
                                      fontFamily: 'Source Sans Pro',
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(10, 0, 80, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment: Alignment(-1, 0),
                                          child: Text(
                                            'You Ought To Be With Me',
                                            style: VinilTheme.bodyText1
                                                .override(
                                              fontFamily: 'Source Sans Pro',
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Align(
                                      alignment: Alignment(1, 0),
                                      child: Text(
                                        '3.30',
                                        style:
                                            VinilTheme.bodyText1.override(
                                          fontFamily: 'Source Sans Pro',
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Divider(
                                thickness: 1,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                                    child: Icon(
                                      Icons.arrow_right_alt,
                                      color: Colors.black,
                                      size: 24,
                                    ),
                                  ),
                                  Text(
                                    'C3',
                                    style: VinilTheme.bodyText1.override(
                                      fontFamily: 'Source Sans Pro',
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(10, 0, 80, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment: Alignment(-1, 0),
                                          child: Text(
                                            'You Ought To Be With Me',
                                            style: VinilTheme.bodyText1
                                                .override(
                                              fontFamily: 'Source Sans Pro',
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Align(
                                      alignment: Alignment(1, 0),
                                      child: Text(
                                        '3.30',
                                        style:
                                            VinilTheme.bodyText1.override(
                                          fontFamily: 'Source Sans Pro',
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Divider(
                                thickness: 1,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                                    child: Icon(
                                      Icons.arrow_right_alt,
                                      color: Colors.black,
                                      size: 24,
                                    ),
                                  ),
                                  Text(
                                    'C4',
                                    style: VinilTheme.bodyText1.override(
                                      fontFamily: 'Source Sans Pro',
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(10, 0, 80, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment: Alignment(-1, 0),
                                          child: Text(
                                            'You Ought To Be With Me',
                                            style: VinilTheme.bodyText1
                                                .override(
                                              fontFamily: 'Source Sans Pro',
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Align(
                                      alignment: Alignment(1, 0),
                                      child: Text(
                                        '3.30',
                                        style:
                                            VinilTheme.bodyText1.override(
                                          fontFamily: 'Source Sans Pro',
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Divider(
                                thickness: 1,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                                    child: Icon(
                                      Icons.arrow_right_alt,
                                      color: Colors.black,
                                      size: 24,
                                    ),
                                  ),
                                  Text(
                                    'C5',
                                    style: VinilTheme.bodyText1.override(
                                      fontFamily: 'Source Sans Pro',
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(10, 0, 80, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment: Alignment(-1, 0),
                                          child: Text(
                                            'You Ought To Be With Me',
                                            style: VinilTheme.bodyText1
                                                .override(
                                              fontFamily: 'Source Sans Pro',
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Align(
                                      alignment: Alignment(1, 0),
                                      child: Text(
                                        '3.30',
                                        style:
                                            VinilTheme.bodyText1.override(
                                          fontFamily: 'Source Sans Pro',
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
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
