import 'package:app_azkar/provider/theme_provider.dart';
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
  int _counterNumber = 0;

  bool _iconBool = false;

  String _content = 'استغفر الله';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          icon: Provider.of<ThemeProvider>(context).savedTheme == ('ThemeDark')
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
                    _counterNumber = 0;
                  });
                }
              },
              offset: const Offset(0, 50),
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    value: 'الحمد الله',
                    padding: const EdgeInsets.only(right: 10),
                    height: 12,
                    child: _content == 'الحمد الله'
                        ? Row(
                            children: const [
                              Text(
                                'الحمد الله',
                              ),
                              Spacer(),
                              Icon(Icons.check,
                                  color: AppColorLight.iconColorLight,
                                  size: 20),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          )
                        : const Text(
                            'الحمد الله',
                          ),
                  ),
                  const PopupMenuDivider(),
                  PopupMenuItem(
                    value: 'لا إله الإ الله',
                    padding: const EdgeInsets.only(right: 10),
                    height: 12,
                    child: _content == 'لا إله الإ الله'
                        ? Row(
                            children: const [
                              Text(
                                'لا إله الإ الله',
                              ),
                              Spacer(),
                              Icon(Icons.check,
                                  color: AppColorLight.iconColorLight,
                                  size: 20),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          )
                        : const Text(
                            'لا إله الإ الله',
                          ),
                  ),
                  const PopupMenuDivider(),
                  PopupMenuItem(
                    value: 'لا حول ولا قوة إلا بالله',
                    padding: const EdgeInsets.only(right: 10),
                    height: 12,
                    child: _content == 'لا حول ولا قوة إلا بالله'
                        ? Row(
                            children: const [
                              Text(
                                'لا حول ولا قوة إلا بالله',
                              ),
                              Spacer(),
                              Icon(Icons.check,
                                  color: AppColorLight.iconColorLight,
                                  size: 20),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          )
                        : const Text(
                            'لا حول ولا قوة إلا بالله',
                          ),
                  ),
                  const PopupMenuDivider(),
                  PopupMenuItem(
                    value: 'اللهم صل وسلم على نبينا محمد',
                    padding: const EdgeInsets.only(right: 10),
                    height: 12,
                    child: _content == 'اللهم صل وسلم على نبينا محمد'
                        ? Row(
                            children: const [
                              Text(
                                'اللهم صل وسلم على نبينا محمد',
                              ),
                              Spacer(),
                              Icon(Icons.check,
                                  color: AppColorLight.iconColorLight,
                                  size: 20),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          )
                        : const Text(
                            'اللهم صل وسلم على نبينا محمد',
                          ),
                  ),
                  const PopupMenuDivider(),
                  PopupMenuItem(
                    value: 'استغفر الله',
                    padding: const EdgeInsets.only(right: 10),
                    height: 12,
                    child: _content == 'استغفر الله'
                        ? Row(
                            children: const [
                              Text(
                                'استغفر الله',
                              ),
                              Spacer(),
                              Icon(Icons.check,
                                  color: AppColorLight.iconColorLight,
                                  size: 20),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          )
                        : const Text(
                            'استغفر الله',
                          ),
                  ),
                  const PopupMenuDivider(),
                  PopupMenuItem(
                    value: 'سبحان الله',
                    padding: const EdgeInsets.only(right: 10),
                    height: 12,
                    child: _content == 'سبحان الله'
                        ? Row(
                            children: const [
                              Text(
                                'سبحان الله',
                              ),
                              Spacer(),
                              Icon(Icons.check,
                                  color: AppColorLight.iconColorLight,
                                  size: 20),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          )
                        : const Text(
                            'سبحان الله',
                          ),
                  ),
                ];
              })
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(),
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
                          _counterNumber.toString(),
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
                              _counterNumber++;
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
                                _counterNumber = 0;
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
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
