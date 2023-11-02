import 'package:flutter/material.dart';

class Demo2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.red,
          border: Border.all(color: Colors.green, width: 2.0)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
    //        Row(
    //   children: [            ////  verticaly icon and datail
    //     const Padding(
    //       padding: EdgeInsets.all(8.0),
    //       child: Icon(Icons.account_circle, size: 50),
    //     ),
    //     Column(
    //       mainAxisSize: MainAxisSize.min,
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //         Text(
    //           'Flutter McFlutter',
    //           style: Theme.of(context).textTheme.headlineSmall,
    //         ),
    //         const Text('Experienced App Developer'),
    //       ],
    //     ),
    //   ],
    // ),
          Row(
            children: [
              Column(mainAxisSize: MainAxisSize.min, children: [
                Row(
                  children: [
                    Text(
                      "Order #",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: Colors.white),
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(":"),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      "343243",
                      style: TextStyle(
                          ////fontSize: 15.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Trip #",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: Colors.white),
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(":"),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      'HARMAN SINGH',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: Colors.white70),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Customer Name",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: Colors.white70),
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(":"),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      "HARMAN SINGH",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: Colors.white70),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Customer Name",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: Colors.white70),
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(":"),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      "HARMAN SINGH",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: Colors.white70),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Customer Name",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: Colors.white70),
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(":"),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      "HARMAN SINGH",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: Colors.white70),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Customer Name",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: Colors.white),
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(":"),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      "HARMAN SINGH",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: Colors.white70),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Customer Name",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: Colors.white70),
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(":"),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      "HARMAN SINGH",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: Colors.white70),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Customer Name",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: Colors.white70),
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(":"),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      "HARMAN SINGHdg",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: Colors.white70),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Customer Name",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: Colors.white70),
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(":"),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      "HARMAN SINGH",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: Colors.white70),
                    ),
                  ],
                ),
              ]),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              // color:Colors.red,
              border: Border(
                  top: BorderSide(color: Colors.green, width: 2.0),
                  bottom: BorderSide(color: Colors.green, width: 2.0)),
            ),
            child: Row(
              children: [
                Expanded(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(color: Colors.green, width: 2.0),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "sadsdsf",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                ////fontSize: 15.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "asds sdsds dsffef efferf sds",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                            "23-12-2099 10:10 AM",
                            textAlign: TextAlign.start,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colors.white),
                          )
                        ],
                      ),
                    )),
                Container(
                  color: Colors.green,
                  width: 2.0,
                ),
                Expanded(
                    child: Column(
                                    children: [
                    Icon(
                      Icons.my_library_music_rounded,
                      size: 50.0,
                    ),
                    Text(
                      "sadsdsf dhjhsffjdjf",
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
                    child: Container(
                      decoration:BoxDecoration(
       
        border: Border(
          left: BorderSide(color: Colors.green,width: 2.0),
          right: BorderSide(color: Colors.green,width: 2.0),
        
        ),
      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "sadsdsf",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                            "asds sdsds dsffef efferf sds",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                            "23-12-2099 10:10 AM 23-12-2099 10:10 AM",
                            textAlign: TextAlign.start,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colors.white),
                          )
                        ],
                      ),
                    )),
                Container(
                  color: Colors.green,
                  width: 2.0,
                ),
                Expanded(
                    child: Column(
                  children: [
                    Icon(
                      Icons.my_library_music_rounded,
                      size: 50.0,
                    ),
                    Text(
                      "sadsdsf dhjhsffjdjf",
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
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                  child: Container(
                    decoration:BoxDecoration(
       
        border: Border(right: BorderSide(color: Colors.green,width: 2.0),
        
        ),
      ),
                    child: Row(
                                  children: [
                    Icon(
                      Icons.my_library_music_rounded,
                      size: 40.0,
                    ),
                    Flexible(
                      child: Text(
                        "shjhsffjdjf shjhsffjdjf",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(color: Colors.white),
                      ),
                    ),
                                  ],
                                ),
                  )),
                
              Expanded(
                  child: Container(
                    decoration:BoxDecoration(
       
        border: Border(right: BorderSide(color: Colors.green,width: 2.0),
        
        ),
      ),
                    child: Row(
                                  children: [
                    Icon(
                      Icons.my_library_music_rounded,
                      size: 40.0,
                    ),
                    Flexible(
                      child: Text(
                        "shjhsffjdjf shjhsffjdjf",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(color: Colors.white),
                      ),
                    ),
                                  ],
                                ),
                  )),
              Container(
                color: Colors.green,
                width: 2.0,
              ),
              Expanded(
                  child: Row(
                children: [
                  Icon(
                    Icons.my_library_music_rounded,
                    size: 40.0,
                  ),
                  Flexible(
                    child: Text(
                      "shjhsffjdjf shjhsffjdjf",
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
        ],
      ),
    );
  }
}
