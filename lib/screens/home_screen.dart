import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0 ;
  String _content = 'استغفر الله' ;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        automaticallyImplyLeading: true,
        title: Text('مسبحة الإكترونية',style:  GoogleFonts.arefRuqaa(
          fontSize: 22
        ),),
        actions: [
          PopupMenuButton<String>(
              onSelected: (String value) {
                if(_content != value){
                  setState(() {
                    _content = value;
                    _counter =0 ;
                  });
                }
              },
              itemBuilder: (context) {
            return[
               PopupMenuItem(
                value: 'الحمد الله',
                height: 20,
                child: Text('الحمد الله', style: GoogleFonts.arefRuqaa(),),
              ),
              const PopupMenuDivider(),
              PopupMenuItem(
                value: 'لا إله الإ الله',
                height: 20,
                child: Text('لا إله الإ الله', style: GoogleFonts.arefRuqaa(),),
              ),
              const PopupMenuDivider(
              ),
              PopupMenuItem(
                value: 'لا حول ولا قوة إلا بالله',
                height: 20,
                child: Text('لا حول ولا قوة إلا بالله', style: GoogleFonts.arefRuqaa(),),
              ),
              const PopupMenuDivider(),
              PopupMenuItem(
                value: 'اللهم صل وسلم على نبينا محمد',
                height: 20,
                child: Text('اللهم صل وسلم على نبينا محمد', style: GoogleFonts.arefRuqaa(),),
              ),
              const PopupMenuDivider(),
               PopupMenuItem(
                value: 'استغفر الله',
                height: 20,
                child:Text('استغفر الله ', style: GoogleFonts.arefRuqaa(),),
              ),
              const PopupMenuDivider(),
               PopupMenuItem(
                value: 'سبحان الله',
                height: 20,
                child: Text('سبحان الله', style: GoogleFonts.arefRuqaa(),)
              ),

            ];
               }

          )

        ],
      ),
      body:Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: AlignmentDirectional.topStart,
                end: AlignmentDirectional.bottomEnd,
                colors: [
                  Color(0xFF439A97),
                  Color(0xFF97DECE),

                ]

            )
        ),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                  // color:  Color(0xFFCBEDD5),
                  color:  Color(0xFFffffff),
                  image: DecorationImage(
                    image: AssetImage('images/logo.jpg'),
                    fit: BoxFit.contain,
                  // image: DecorationImage(
                  //   image: NetworkImage('https://www.mosoah.com/wp-content/uploads/2019/11/KcjXEzdMi.png'),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius:6,
                      offset: Offset(0,6),
                    ),
                  ]

              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Container(
              clipBehavior: Clip.antiAlias,
              height: 60,
              margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                color: Colors.black26,
                  blurRadius: 6,
                  offset: Offset(0,6)
                )
                ]
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(_content,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.arefRuqaa(
                      fontWeight: FontWeight.w300,
                      fontSize: 20,)
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 60,
                    color: const Color(0xFFCBEDD5),
                    alignment: AlignmentDirectional.center,
                    child: Text(_counter.toString(), style: GoogleFonts.arefRuqaa(
                            fontWeight: FontWeight.w300,
                            fontSize: 20
                        ),),
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
                      onPressed: (){
                        setState(() {
                          _counter++;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF21ABA5),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(topRight: Radius.circular(10),),
                        )
                      ),
                      child: Text('تسبيح', style: GoogleFonts.arefRuqaa(
                      fontSize: 18,

                    ),),),
                  ),
                  Expanded(
                    child: ElevatedButton(
                        onPressed: (){
                          setState(() {
                            _counter = 0;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:const Color(0xFF1D566E),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10))
                          )
                        ),
                        child: Text('اعادة',style: GoogleFonts.arefRuqaa(
                      fontSize: 18,

                    ),)),
                  )
                ],
              ),
            ),
          ],
        ) ,
      ),

    );
  }
}
