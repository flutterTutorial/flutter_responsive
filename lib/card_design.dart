import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CardLayout extends StatefulWidget {
const  CardLayout({super.key});

  @override
  State<CardLayout> createState() => _CardLayoutState();
}

class _CardLayoutState extends State<CardLayout> {
  var appBar = AppBar(
    title:const AutoSizeText("data"),
    backgroundColor: Colors.amber,
  );
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final appBarHeight = appBar.preferredSize.height;
    final statusBarHeight = MediaQuery.of(context).padding.top;
    return Scaffold(
      appBar: appBar,
      body:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.red,
            border: Border.all(
              color: Colors.green,
              width: 3.0
            )
          ),
          // height: screenSize.height  * 0.56,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
        Expanded(
        flex: 3,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
                Row(
              children: [
                AutoSizeText("Order #",
               style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: Colors.white),
                ),
                SizedBox(
                  width: 8.0,
                ),
                AutoSizeText(":"),
                SizedBox(
                  width: 8.0,
                ),
                AutoSizeText("343243",
                style: TextStyle(
                  ////fontSize: 15.0,
                  fontWeight: FontWeight.bold
                ),
                ),
                
                ],
            ),
            Row(
              children: [
            AutoSizeText("Trip #",
            minFontSize: 18,
            maxFontSize: 24,
               style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: Colors.white),
                ),
                SizedBox(
                  width: 8.0,
                ),
                 AutoSizeText(":"),
                SizedBox(
                  width: 8.0,
                ),
               Text('HARMAN SINGH' ,
                
                style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: Colors.white70),
                ),
                
                ],
            ),
           Row(
              children: [
                AutoSizeText("Customer Name",
                style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: Colors.white70),
                ),
                SizedBox(
                  width: 8.0,
                ),
                AutoSizeText(":"),
                SizedBox(
                  width: 8.0,
                ),
                AutoSizeText("HARMAN SINGH",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: Colors.white70),
                ),
                
                ],
            ),
           Row(
              children: [
                
                AutoSizeText("Customer Name",
                style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: Colors.white70),
                ),
                SizedBox(
                  width: 8.0,
                ),
                AutoSizeText(":"),
                SizedBox(
                  width: 8.0,
                ),
                AutoSizeText("HARMAN SINGH",
                 style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: Colors.white70),
                ),
                
                ],
            ),
            Row(
              children: [
                
                AutoSizeText("Customer Name",
                style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: Colors.white70),
                ),
                SizedBox(
                  width: 8.0,
                ),
                AutoSizeText(":"),
                SizedBox(
                  width: 8.0,
                ),
                AutoSizeText("HARMAN SINGH",
                style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: Colors.white70),
                ),
                
                ],
            ),
            Row(
              children: [
                
                AutoSizeText("Customer Name",
               style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: Colors.white),
                ),
                SizedBox(
                  width: 8.0,
                ),
                AutoSizeText(":"),
                SizedBox(
                  width: 8.0,
                ),
                AutoSizeText("HARMAN SINGH",
                 style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: Colors.white70),
                ),
                
                ],
            ),
          Row(
              children: [
                
                AutoSizeText("Customer Name",
                style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: Colors.white70),
                ),
                SizedBox(
                  width: 8.0,
                ),
                AutoSizeText(":"),
                SizedBox(
                  width: 8.0,
                ),
                AutoSizeText("HARMAN SINGH",
                 style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: Colors.white70),
                ),
                
                ],
            ),
           Row(
              children: [
                
                AutoSizeText("Customer Name",
                 style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: Colors.white70),
                ),
                SizedBox(
                  width: 8.0,
                ),
                AutoSizeText(":"),
                SizedBox(
                  width: 8.0,
                ),
                AutoSizeText("HARMAN SINGH",
                 style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: Colors.white70),
                ),
                
                ],
            ),
            
            
          ],
        )),
            
           
           const Divider(
              height:1.0,
              thickness: 2.0,
              color: Colors.green,
            ),
           Expanded(
            flex: 2,
             child:
              Row(
             
               children: [
                 Expanded(
                   flex: 2,
                   child: Column(
                    mainAxisSize: MainAxisSize.min,
                     crossAxisAlignment: CrossAxisAlignment.start,
                   children:  [
                     AutoSizeText("sadsdsf",
                     maxLines: 2,
                     overflow: TextOverflow.ellipsis,
                     style: TextStyle(
                   ////fontSize: 15.0,
                   fontWeight: FontWeight.bold
                 ),
                     ),
                     AutoSizeText("asds sdsds dsffef efferf sds",
                     maxLines: 2,
                     overflow: TextOverflow.ellipsis,
                     style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: Colors.white),
                     ),
                     AutoSizeText("23-12-2099 10:10 AM",
                     textAlign: TextAlign.start,
                     maxLines: 2,
                     overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: Colors.white),
                     )
                   ],
                 )),
                 Container(
                   color: Colors.green,
                   width: 2.0,
                 ),
                  Expanded(child: Column(
                   children: [
                     Icon(Icons.my_library_music_rounded,
                     size: 50.0,
                     ),
                     AutoSizeText("sadsdsf dhjhsffjdjf",
                     maxLines: 2,
                     overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: Colors.white),
                     ),
                   ],
                  )),
                  Container(
                   color: Colors.green,
                   width: 2.0,
                 ),
                  Expanded(
                   flex: 2,
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                   children:  [
                     AutoSizeText("sadsdsf",
                     maxLines: 2,
                     overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: Colors.white),
                     ),
                     AutoSizeText("asds sdsds dsffef efferf sds",
                     maxLines: 2,
                     overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: Colors.white),
                     ),
                     AutoSizeText("23-12-2099 10:10 AM",
                     textAlign: TextAlign.start,
                     maxLines: 2,
                     overflow: TextOverflow.ellipsis,
                     style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: Colors.white),
                     )
                   ],
                 )),
                   Container(
                   color: Colors.green,
                   width: 2.0,
                 ),
                    Expanded(child: Column(
                   children: [
                     Icon(Icons.my_library_music_rounded,
                     size: 50.0,
                     ),
                     AutoSizeText("sadsdsf dhjhsffjdjf",
                     maxLines: 2,
                     overflow: TextOverflow.ellipsis,
                     style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: Colors.white),
                     ),
                   ],
                  )),
               ],
             ),
           
           ),
            Divider(
              height:1.0,
              thickness: 2.0,
              color: Colors.green,
            ),
           Expanded(
             child: Row(
              mainAxisSize: MainAxisSize.min,
               children: [
                 Expanded(child: Row(
                   children: [
                      Icon(Icons.my_library_music_rounded,
                     size: 40.0,
                     ),
                     Flexible(
                       child: AutoSizeText("shjhsffjdjf shjhsffjdjf",
                       maxLines: 2,
                       overflow: TextOverflow.ellipsis,
                      style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: Colors.white),
                       ),
                     ),
                   ],
                 )),
                 Container(
                   color: Colors.green,
                   width: 2.0,
                 ),
                  Expanded(child: Row(
                   children: [
                      Icon(Icons.my_library_music_rounded,
                     size: 40.0,
                     ),
                     Flexible(
                       child: AutoSizeText("shjhsffjdjf shjhsffjdjf",
                       maxLines: 2,
                       overflow: TextOverflow.ellipsis,
                       style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: Colors.white),
                       ),
                     ),
                   ],
                 )),
                  Container(
                   color: Colors.green,
                   width: 2.0,
                 ),
                   Expanded(child: Row(
                   children: [
                      Icon(Icons.my_library_music_rounded,
                     size: 40.0,
                     ),
                     Flexible(
                       child: AutoSizeText("shjhsffjdjf shjhsffjdjf",
                       maxLines: 2,
                       overflow: TextOverflow.ellipsis,
                      style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: Colors.white),
                       ),
                     ),
                   ],
                 )),
                   
               ],
             ),
           )
          
          
          ]),
        ),
      ),
    );
  }
}
