import 'package:app_azkar/provider/theme_provider.dart';
import 'package:app_azkar/theme/app_color/app_color_dark.dart';
import 'package:app_azkar/theme/app_color/app_color_light.dart';
import 'package:app_azkar/theme/app_theme/app_theme_dark.dart';
import 'package:app_azkar/theme/app_theme/app_theme_light.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;

  bool _iconBool = false;

  String _content = 'استغفر الله';

  @override
  Widget build(BuildContext context) {
    bool _cheakTheme =
        Provider.of<ThemeProvider>(context).savedTheme == ('ThemeDark');

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          icon: _cheakTheme
              ? const Icon(Icons.wb_sunny_outlined)
              : const Icon(Icons.nights_stay_rounded),
          onPressed: () {
            setState(() {
              // Provider.of<ThemeProvider>(context,listen: false).changeTheme();
              Provider.of<ThemeProvider>(context, listen: false).changeTheme();
              _iconBool ? getAppThemeLight() : getAppThemeDark();
              _iconBool = !_iconBool;
            });
          },
        ),
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: true,
        title: Text(
          'مسبحة الإكترونية',
          style: GoogleFonts.arefRuqaa(),
        ),
        actions: [
          PopupMenuButton<String>(
              // light
              icon: const Icon(
                Icons.more_vert,
              ),
              onSelected: (String value) {
                if (_content != value) {
                  setState(() {
                    _content = value;
                    _counter = 0;
                  });
                }
              },
              offset: const Offset(0, 50),
              itemBuilder: (context) {
                return const [
                  PopupMenuItem(
                    value: 'الحمد الله',
                    padding: EdgeInsets.only(right: 10),
                    height: 12,
                    child: Text(
                      'الحمد الله',
                    ),
                  ),
                  PopupMenuDivider(),
                  PopupMenuItem(
                    value: 'لا إله الإ الله',
                    padding: EdgeInsets.only(right: 10),
                    height: 12,
                    child: Text(
                      'لا إله الإ الله',
                    ),
                  ),
                  PopupMenuDivider(),
                  PopupMenuItem(
                    value: 'لا حول ولا قوة إلا بالله',
                    padding: EdgeInsets.only(right: 10),
                    height: 12,
                    child: Text('لا حول ولا قوة إلا بالله'),
                  ),
                  PopupMenuDivider(),
                  PopupMenuItem(
                    value: 'اللهم صل وسلم على نبينا محمد',
                    padding: EdgeInsets.only(right: 10),
                    height: 12,
                    child: Text('اللهم صل وسلم على نبينا محمد'),
                  ),
                  PopupMenuDivider(),
                  PopupMenuItem(
                    value: 'استغفر الله',
                    padding: EdgeInsets.only(right: 10),
                    height: 12,
                    child: Text(
                      'استغفر الله ',
                    ),
                  ),
                  PopupMenuDivider(),
                  PopupMenuItem(
                      value: 'سبحان الله',
                      padding: EdgeInsets.only(right: 10),
                      height: 12,
                      child: Text(
                        'سبحان الله',
                      )),
                ];
              })
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 200,
                  width: 200,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      // color:  Color(0xFFCBEDD5),
                      color: Color(0xFFffffff),
                      image: DecorationImage(
                        image: AssetImage('images/logo.jpg'),
                        fit: BoxFit.contain,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 6,
                          offset: Offset(0, 6),
                        ),
                      ]),
                ),
                const SizedBox(
                  height: 35,
                ),
                Container(
                  clipBehavior: Clip.antiAlias,
                  height: 60,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black26,
                            blurRadius: 6,
                            offset: Offset(0, 6))
                      ]),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(_content,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 20,
                            )),
                      ),
                      Container(
                        width: 50,
                        height: 60,
                        color: const Color(0xFFCBEDD5),
                        alignment: AlignmentDirectional.center,
                        child: Text(
                          _counter.toString(),
                          style: const TextStyle(
                              fontWeight: FontWeight.w300, fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _counter++;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                              // backgroundColor: const Color(0xFF21ABA5),
                              shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                            ),
                          )),
                          child: const Text(
                            'تسبيح',
                            style: TextStyle(
                              // color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                _counter = 0;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF97DECE),
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10)))),
                            child: const Text(
                              'اعادة',
                            )),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
