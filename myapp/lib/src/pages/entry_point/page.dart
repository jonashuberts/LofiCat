import 'package:flutter/material.dart';
import 'package:supabase/supabase.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:myapp/auth/auth_state.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:myapp/src/pages/index.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:map/map.dart';
import 'package:latlng/latlng.dart';
import 'package:paged_vertical_calendar/paged_vertical_calendar.dart';

class PageEntryPoint extends StatefulWidget {
  const PageEntryPoint({
    Key? key,
  }) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends AuthState<PageEntryPoint>
    with SingleTickerProviderStateMixin {
  int play = 1;

  final datasets = <String, dynamic>{};

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF000000),
      body: Stack(
        children: [
          GestureDetector(
            onLongPress: () async {
              await Navigator.push<void>(
                context,
                MaterialPageRoute(
                  builder: (context) => PageSettings(),
                ),
              );
            },
            child: Image.network(
              r'''https://source.unsplash.com/random''',
              width: double.maxFinite,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
          // BottomBar
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Opacity(
                opacity: 10.0,
                child: Container(
                  margin: EdgeInsets.zero,
                  padding: EdgeInsets.zero,
                  width: double.maxFinite,
                  height: 80,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: <Color>[Color(0xFF5A387B), Color(0xFF5A387B)],
                      stops: [0.0, 1.0],
                    ),
                    border: Border(
                      left: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                          color: Color(0xFF000000)),
                      top: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                          color: Color(0xFF000000)),
                      right: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                          color: Color(0xFF000000)),
                      bottom: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                          color: Color(0xFF000000)),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Align(
                        child: Container(
                          margin: EdgeInsets.zero,
                          padding: EdgeInsets.zero,
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(
                            border: Border(
                              left: BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                  color: Color(0xFF000000)),
                              top: BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                  color: Color(0xFF000000)),
                              right: BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                  color: Color(0xFF000000)),
                              bottom: BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                  color: Color(0xFF000000)),
                            ),
                          ),
                          child: Center(
                            child: YoutubePlayerIFrame(
                              controller: YoutubePlayerController(
                                initialVideoId: r'''5qap5aO4i9A''',
                                params: YoutubePlayerParams(
                                  startAt: Duration(seconds: 0),
                                  showControls: true,
                                  showFullscreenButton: false,
                                  loop: false,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        child: Container(
                          margin: EdgeInsets.zero,
                          padding: EdgeInsets.zero,
                          width: 55,
                          height: 55,
                          decoration: const BoxDecoration(
                            color: Color(0xFF5A387B),
                            border: Border(
                              left: BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                  color: Color(0xFF000000)),
                              top: BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                  color: Color(0xFF000000)),
                              right: BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                  color: Color(0xFF000000)),
                              bottom: BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                  color: Color(0xFF000000)),
                            ),
                          ),
                          child: Center(
                            child: Icon(
                              MdiIcons.fromString('''play-pause'''),
                              size: 50,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
