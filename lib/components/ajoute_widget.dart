import 'package:vynilmatic/backend/schema/songs_record.dart';

import '../backend/backend.dart';
import '../utils/theme.dart';
import '../utils/util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class AjouteWidget extends StatefulWidget {
  AjouteWidget({Key key}) : super(key: key);

  get columnSongsRecordList => null;

  @override
  _AjouteWidgetState createState() => _AjouteWidgetState();

}

class _AjouteWidgetState extends State<AjouteWidget> {
  TextEditingController textFieldDescController;
  TextEditingController textFieldNameController;

  @override
  void initState() {
    super.initState();
    textFieldDescController = TextEditingController();
    textFieldNameController = TextEditingController();
  }

  void reorderData(int oldindex, int newindex){
    setState(() {
      if(newindex>oldindex){
        newindex-=1;
      }
      final items =widget.columnSongsRecordList.removeAt(oldindex);
      widget.columnSongsRecordList.insert(newindex, items);
    });
  }

  void sorting(){
    setState(() {
      widget.columnSongsRecordList.sort();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
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
                          style: VinylTheme.bodyText1.override(
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
                        style: VinylTheme.bodyText1.override(
                          fontFamily: 'Source Sans Pro',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment(1, 0),
                        child: InkWell(
                          onTap: () async {
                            final newPlaylistCreateData =
                            createNewPlaylistRecordData(
                              namePlaylist: textFieldNameController.text,
                              desciption: textFieldDescController.text,
                            );
                            await NewPlaylistRecord.collection
                                .doc()
                                .set(newPlaylistCreateData);
                            Navigator.pop(context);
                          },
                          child: Text(
                            'Ok',
                            style: VinylTheme.bodyText1.override(
                              fontFamily: 'Source Sans Pro',
                              color: Color(0xFFFF0000),
                            ),
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
                padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: TextFormField(
                  controller: textFieldNameController,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Playlist  Name',
                    hintStyle: VinylTheme.bodyText1.override(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0),
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0),
                      ),
                    ),
                  ),
                  style: VinylTheme.bodyText1.override(
                    fontFamily: 'Source Sans Pro',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Divider(
                indent: 10,
                endIndent: 10,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: TextFormField(
                  controller: textFieldDescController,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Description',
                    hintStyle: VinylTheme.bodyText1.override(
                      fontFamily: 'Source Sans Pro',
                      color: Color(0xFF6B6B6B),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0),
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0),
                      ),
                    ),
                  ),
                  style: VinylTheme.bodyText1.override(
                    fontFamily: 'Source Sans Pro',
                    color: Color(0xFF6B6B6B),
                  ),
                ),
              ),
              Divider(
                indent: 10,
                endIndent: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 400,
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
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
                    List<SongsRecord> columnSongsRecordList = snapshot.data;
                    // Customize what your widget looks like with no query results.
                    if (snapshot.data.isEmpty) {
                      return Container(
                        height: 100,
                        child: Center(
                          child: Text('No results.'),
                        ),
                      );
                    }
                    ReorderableListView.builder(
                      itemCount: columnSongsRecordList.length,
                      onReorder: (oldIndex, newIndex) => setState(() {
                        final index = newIndex > oldIndex ? newIndex - 1 : newIndex;

                        final user = columnSongsRecordList.removeAt(oldIndex);
                        columnSongsRecordList.insert(index, user);
                      }),
                      itemBuilder: (context, index) {
                        final user = columnSongsRecordList[index];

                        return buildUser(index, user);
                      },
                    );
                    return Column(
                      mainAxisSize: MainAxisSize.max,
                      children: List.generate(columnSongsRecordList.length,
                              (columnIndex) {
                            final columnSongsRecord =
                            columnSongsRecordList[columnIndex];
                            return ListTile(
                              title: Text(
                                columnSongsRecord.name,
                                style: VinylTheme.bodyText1.override(
                                  fontFamily: 'Source Sans Pro',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Text(
                                'Suprême NTM',
                                style: VinylTheme.subtitle2.override(
                                  fontFamily: 'Source Sans Pro',
                                  fontSize: 12,
                                ),
                              ),
                              trailing: FaIcon(
                                FontAwesomeIcons.trashAlt,
                                color: Color(0xFF303030),
                                size: 20,
                              ),
                              leading: CircleAvatar(
                                backgroundImage: AssetImage("assets/images/5099748976628_600.jpeg"), // no matter how big it is, it won't overflow
                              ),
                              tileColor: Color(0xFFF5F5F5),
                              dense: false,
                            );
                          }),
                    );
                  },
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  Widget buildUser(int index, SongsRecord user) {}
}

