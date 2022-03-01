import 'package:flutter/material.dart';
import 'package:supabase/supabase.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:myapp/auth/auth_state.dart';

import 'package:myapp/src/pages/index.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:map/map.dart';
import 'package:latlng/latlng.dart';
import 'package:paged_vertical_calendar/paged_vertical_calendar.dart';

class PageSettings extends StatefulWidget {
  const PageSettings({
    Key? key,
  }) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends AuthState<PageSettings>
    with SingleTickerProviderStateMixin {
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
          Container(
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: const BoxDecoration(
              color: Color(0xFF000000),
              border: Border(
                left: BorderSide(width: 0, color: Color(0xFF000000)),
                top: BorderSide(width: 0, color: Color(0xFF000000)),
                right: BorderSide(width: 0, color: Color(0xFF000000)),
                bottom: BorderSide(width: 0, color: Color(0xFF000000)),
              ),
            ),
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.zero,
                  padding: EdgeInsets.zero,
                  width: double.maxFinite,
                  height: double.maxFinite,
                  decoration: const BoxDecoration(
                    color: Color(0xFF000000),
                    border: Border(
                      left: BorderSide(width: 0, color: Color(0xFF000000)),
                      top: BorderSide(width: 0, color: Color(0xFF000000)),
                      right: BorderSide(width: 0, color: Color(0xFF000000)),
                      bottom: BorderSide(width: 0, color: Color(0xFF000000)),
                    ),
                  ),
                  child: GestureDetector(
                    onLongPress: () async {
                      await Navigator.push<void>(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PageEntryPoint(),
                        ),
                      );
                    },
                    child: Image.network(
                      r'''https://ivjcszspcudiuzqnfozk.supabase.co/storage/v1/object/public/public/Lofi Cat 2/assets/Blur.png''',
                      width: double.maxFinite,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 80,
                      ),
                      child: SizedBox(
                        width: double.maxFinite,
                        height: 200,
                        child: ListView(
                          primary: true,
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                left: 40,
                              ),
                              padding: EdgeInsets.zero,
                              width: 200,
                              decoration: BoxDecoration(
                                color: const Color(0xFF000000),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30.0),
                                  topRight: Radius.circular(30.0),
                                  bottomRight: Radius.circular(30.0),
                                  bottomLeft: Radius.circular(30.0),
                                ),
                                border: Border(
                                  left: BorderSide(
                                      width: 0, color: Color(0xFF000000)),
                                  top: BorderSide(
                                      width: 0, color: Color(0xFF000000)),
                                  right: BorderSide(
                                      width: 0, color: Color(0xFF000000)),
                                  bottom: BorderSide(
                                      width: 0, color: Color(0xFF000000)),
                                ),
                              ),
                              child: GestureDetector(
                                onTap: () async {
                                  await Navigator.push<void>(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => PageEntryPoint(),
                                    ),
                                  );
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30.0),
                                    topRight: Radius.circular(30.0),
                                    bottomRight: Radius.circular(30.0),
                                    bottomLeft: Radius.circular(30.0),
                                  ),
                                  child: Image.network(
                                    r'''https://images.unsplash.com/photo-1425913397330-cf8af2ff40a1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80''',
                                    width: double.maxFinite,
                                    height: 150,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                left: 40,
                              ),
                              padding: EdgeInsets.zero,
                              width: 200,
                              decoration: BoxDecoration(
                                color: const Color(0xFF000000),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30.0),
                                  topRight: Radius.circular(30.0),
                                  bottomRight: Radius.circular(30.0),
                                  bottomLeft: Radius.circular(30.0),
                                ),
                                border: Border(
                                  left: BorderSide(
                                      width: 0, color: Color(0xFF000000)),
                                  top: BorderSide(
                                      width: 0, color: Color(0xFF000000)),
                                  right: BorderSide(
                                      width: 0, color: Color(0xFF000000)),
                                  bottom: BorderSide(
                                      width: 0, color: Color(0xFF000000)),
                                ),
                              ),
                              child: GestureDetector(
                                onTap: () async {
                                  await Navigator.push<void>(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => PageEntryPoint(),
                                    ),
                                  );
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30.0),
                                    topRight: Radius.circular(30.0),
                                    bottomRight: Radius.circular(30.0),
                                    bottomLeft: Radius.circular(30.0),
                                  ),
                                  child: Image.network(
                                    r'''https://images.unsplash.com/photo-1591878337191-c6e21c4dbaaf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80''',
                                    width: double.maxFinite,
                                    height: 150,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                left: 40,
                              ),
                              padding: EdgeInsets.zero,
                              width: 200,
                              decoration: BoxDecoration(
                                color: const Color(0xFF000000),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30.0),
                                  topRight: Radius.circular(30.0),
                                  bottomRight: Radius.circular(30.0),
                                  bottomLeft: Radius.circular(30.0),
                                ),
                                border: Border(
                                  left: BorderSide(
                                      width: 0, color: Color(0xFF000000)),
                                  top: BorderSide(
                                      width: 0, color: Color(0xFF000000)),
                                  right: BorderSide(
                                      width: 0, color: Color(0xFF000000)),
                                  bottom: BorderSide(
                                      width: 0, color: Color(0xFF000000)),
                                ),
                              ),
                              child: GestureDetector(
                                onTap: () async {
                                  await Navigator.push<void>(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => PageEntryPoint(),
                                    ),
                                  );
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30.0),
                                    topRight: Radius.circular(30.0),
                                    bottomRight: Radius.circular(30.0),
                                    bottomLeft: Radius.circular(30.0),
                                  ),
                                  child: Image.network(
                                    r'''https://images.unsplash.com/photo-1550522667-09c9bdb293a1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1631&q=80''',
                                    width: double.maxFinite,
                                    height: 150,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
