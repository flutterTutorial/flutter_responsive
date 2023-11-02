
// class DashboardScreen extends StatefulWidget {
//   int sindex = -1;
//   static const String routeName = '/';
//   DashboardScreen(int index, {Key? key}) : super(key: key) {
//     sindex = index;
//   }

//   @override
//   State<DashboardScreen> createState() => _DashboardScreenState();

//   static void setIndex(BuildContext context, int _newIndex) {
//     _DashboardScreenState? state =
//         context.findAncestorStateOfType<_DashboardScreenState>();
//     state!.setState(() {
//       state._currentPage = _newIndex;
//     });
//   }
// }

// class _DashboardScreenState extends State<DashboardScreen> {
//   bool _expandGallery = false,
//       _expandMembership = false,
//       _expandWallet = false,
//       _isLoading = false;
//   List<String> bannerList = <String>[
//     'assets/images/splash.jpeg',
//     'assets/images/splash.jpeg'
//   ];
//   int _currentPage = 0;
//   List listofpage = [
//   //  List of screen here
//   ];
//   String strId = "",
//       strPhone = "",
//       strname = "",
//       strimage = "",
//       strmobile = "",
//       strbalance = "0.00",
//       strtoken = '',
//       walletBalance = "0.00";
//   bool _isMember = false;
//   var imageVariable = Image.asset('assets/images/mainlogo.png').image;

//   @override
//   void initState() {
//     print("Notification_Check");
//     // listofpage;
//     Provider.of<HomeScreenProv>(context, listen: false).getnts();
//     Provider.of<HomeScreenProv>(context, listen: false).adsadsa();
//     Provider.of<HomeScreenProv>(context, listen: false).sdsads();
//     Provider.of<HomeScreenProv>(context, listen: false).dsdsdsd();
//     super.initState();
//     // intializeNotification();
//     getData();
//   }

//   getData() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     String? phone = prefs.getString(Prefs.PHONE);
//     String? id = prefs.getString(Prefs.ID);
//     String? token = prefs.getString(Prefs.AUTH_TOKEN);
//     String? balance = prefs.getString(Prefs.BALANCE);
//     bool? member = prefs.getBool(Prefs.isMember);
//     setState(() {
//       strId = id!;
//       strPhone = phone!;
//       strtoken = token!;
//       strbalance = balance!;
//       if (member != null) {
//         _isMember = member;
//         walletBalance = balance;
//       }

//       if (widget.sindex != -1) {
//         _currentPage = widget.sindex;
//       }
//     });
//     print("Mobile " + strtoken);
//     // registerNotification();
//     if (!_isMember) {
//       FetchProfile(strId);
//     }

//     FirebaseMessaging.instance.getToken().then((token) {
//       print('This is Token: ' '${token}');
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: WillPopScope(
//         onWillPop: _onBackPressed,
//         child: Scaffold(
//           backgroundColor: MyColors.appbg,
//           drawer: _drawerView(),
//           appBar: _currentPage == 0
//               ? AppBar(
//                   backgroundColor: Colors.transparent,
//                   iconTheme: IconThemeData(color: Colors.black),
//                   elevation: 0,
//                   // leading: Icon(Icons.menu_rounded,color: MyColors.black,),
//                   title: Image.asset(
//                     'assets/images/mainlogo.png',
//                     height: 100,
//                     width: 100,
//                   ),
//                   centerTitle: true,
//                   // actions: [
//                   //   Icon(Icons.notifications_outlined,color: MyColors.black,),
//                   //   SizedBox(width: 10.0,),
//                   // ],
//                 )
//               : AppBar(
//                   backgroundColor: Colors.transparent,
//                   iconTheme: IconThemeData(color: Colors.black),
//                   elevation: 0,
//                   // leading: Icon(Icons.menu_rounded,color: MyColors.black,),
//                   title: _currentPage == 1
//                       ? Text(
//                           "PHOTO GALLERY",
//                           style: GoogleFonts.roboto(
//                               fontSize: 22.0,
//                               fontWeight: FontWeight.bold,
//                               color: MyColors.black),
//                         )
//                       : _currentPage == 2
//                           ? Text(
//                               "VIDEO GALLERY",
//                               style: GoogleFonts.roboto(
//                                   fontSize: 22.0,
//                                   fontWeight: FontWeight.bold,
//                                   color: MyColors.black),
//                             )
//                           : _currentPage == 3
//                               ? Text(
//                                   "ABOUT US",
//                                   style: GoogleFonts.roboto(
//                                       fontSize: 22.0,
//                                       fontWeight: FontWeight.bold,
//                                       color: MyColors.black),
//                                 )
//                               : _currentPage == 4
//                                   ? Text(
//                                       "PRESIDENT MESSAGE",
//                                       style: GoogleFonts.roboto(
//                                           fontSize: 22.0,
//                                           fontWeight: FontWeight.bold,
//                                           color: MyColors.black),
//                                     )
//                                   : _currentPage == 5
//                                       ? Text(
//                                           "MY PROFILE",
//                                           style: GoogleFonts.roboto(
//                                               fontSize: 22.0,
//                                               fontWeight: FontWeight.bold,
//                                               color: MyColors.black),
//                                         )
//                                       : _currentPage == 6
//                                           ? Text(
//                                               "MY SUBSCRIPTION",
//                                               style: GoogleFonts.roboto(
//                                                   fontSize: 22.0,
//                                                   fontWeight: FontWeight.bold,
//                                                   color: MyColors.black),
//                                             )
//                                           : _currentPage == 7
//                                               ? Text(
//                                                   "FACILITY",
//                                                   style: GoogleFonts.roboto(
//                                                       fontSize: 22.0,
//                                                       fontWeight:
//                                                           FontWeight.bold,
//                                                       color: MyColors.black),
//                                                 )
//                                               : _currentPage == 8
//                                                   ? Text(
//                                                       "MY WALLET",
//                                                       style: GoogleFonts.roboto(
//                                                           fontSize: 22.0,
//                                                           fontWeight:
//                                                               FontWeight.bold,
//                                                           color:
//                                                               MyColors.black),
//                                                     )
//                                                   : _currentPage == 9
//                                                       ? Text(
//                                                           "SHARE WALLET",
//                                                           style: GoogleFonts
//                                                               .roboto(
//                                                                   fontSize:
//                                                                       22.0,
//                                                                   fontWeight:
//                                                                       FontWeight
//                                                                           .bold,
//                                                                   color: MyColors
//                                                                       .black),
//                                                         )
//                                                       : _currentPage == 10
//                                                           ? Text(
//                                                               "PAYMENT REQUEST",
//                                                               style: GoogleFonts.roboto(
//                                                                   fontSize:
//                                                                       22.0,
//                                                                   fontWeight:
//                                                                       FontWeight
//                                                                           .bold,
//                                                                   color: MyColors
//                                                                       .black),
//                                                             )
//                                                           : Text(
//                                                               "CONTACT US",
//                                                               style: GoogleFonts.roboto(
//                                                                   fontSize:
//                                                                       22.0,
//                                                                   fontWeight:
//                                                                       FontWeight
//                                                                           .bold,
//                                                                   color: MyColors
//                                                                       .black),
//                                                             ),
//                   centerTitle: true,
//                   // actions: [
//                   //   Icon(Icons.notifications_outlined,color: MyColors.black,),
//                   //   SizedBox(width: 10.0,),
//                   // ],
//                 ),
//           body: _isLoading
//               ? Padding(
//                   padding: EdgeInsets.all(4),
//                   child: Center(
//                     child: CircularProgressIndicator(
//                       color: MyColors.toolDark,
//                     ),
//                   ),
//                 )
//               : listofpage[_currentPage],
//         ),
//       ),
//     );
//   }

//   _drawerView() {
//     // DrawerSelect _draerSelect = DrawerSelect.Home;
//     return Drawer(
//       backgroundColor: Colors.transparent,
//       elevation: 0,
//       child: Container(
//         decoration: BoxDecoration(
//             color: MyColors.toolDark,
//             borderRadius: BorderRadius.only(
//                 topRight: Radius.circular(50.0),
//                 bottomRight: Radius.circular(
//                   50.0,
//                 ))),
//         child: ListView(
//           // key: PageStorageKey(0.0),
//           children: [
//             Container(
//                 height: 120,
//                 child: DrawerHeader(
//                     margin: EdgeInsets.all(0.0),
//                     padding: EdgeInsets.all(0.0),
//                     child: Container(
//                       margin:
//                           EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           SizedBox(
//                             height: 10.0,
//                           ),
//                           Row(
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: [
//                               RoundImageview(),
//                               SizedBox(
//                                 width: 20.0,
//                               ),
//                               _headetextView(),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ))),
//             Container(
//               margin: EdgeInsets.only(
//                 left: 15.0,
//                 right: 15.0,
//               ),
//               child: Divider(
//                 height: 2.0,
//                 color: MyColors.white,
//               ),
//             ),
//             SizedBox(
//               height: 15.0,
//             ),
//             ListTile(
//               leading: Icon(
//                 Icons.home_rounded,
//                 color: MyColors.white,
//                 size: 20.0,
//               ),
//               minLeadingWidth: 40,
//               onTap: () {
//                 Navigator.of(context).pop();
//                 setState(() {
//                   _currentPage = 0;
//                   _expandGallery = false;
//                   _expandMembership = false;
//                   _expandWallet = false;
//                 });
//               },
//               title: Text(
//                 "Home",
//                 style: GoogleFonts.roboto(
//                   fontSize: 14.0,
//                   fontWeight: FontWeight.w400,
//                   color: MyColors.white,
//                 ),
//               ),
//             ),
//             ListTile(
//               leading: Image.asset(
//                 'assets/images/sms.png',
//                 height: 20,
//                 width: 20,
//               ),
//               minLeadingWidth: 40,
//               onTap: () {
//                 Navigator.of(context).pop();
//                 setState(() {
//                   _currentPage = 4;
//                   _expandGallery = false;
//                   _expandMembership = false;
//                   _expandWallet = false;
//                 });
//               },
//               title: Text(
//                 "President Message",
//                 style: GoogleFonts.roboto(
//                   fontSize: 14.0,
//                   fontWeight: FontWeight.w400,
//                   color: MyColors.white,
//                 ),
//               ),
//             ),
//             ListTile(
//               leading: Image.asset(
//                 'assets/images/about.png',
//                 height: 20,
//                 width: 20,
//               ),
//               minLeadingWidth: 40,
//               onTap: () {
//                 Navigator.of(context).pop();
//                 setState(() {
//                   _currentPage = 3;
//                   _expandGallery = false;
//                   _expandMembership = false;
//                   _expandWallet = false;
//                 });
//               },
//               title: Text(
//                 "About Us",
//                 style: GoogleFonts.roboto(
//                   fontSize: 14.0,
//                   fontWeight: FontWeight.w400,
//                   color: MyColors.white,
//                 ),
//               ),
//             ),
//             Container(
//               decoration: BoxDecoration(
//                   gradient: LinearGradient(
//                 begin: Alignment.topLeft,
//                 end: Alignment.bottomRight,
//                 colors: _expandGallery
//                     ? [
//                         MyColors.white,
//                         MyColors.toolDark,
//                       ]
//                     : [
//                         Colors.transparent,
//                         Colors.transparent,
//                       ],
//               )),
//               child: ExpansionTile(
//                 collapsedIconColor: Colors.white,
//                 iconColor: Colors.white,
//                 onExpansionChanged: (value) {
//                   if (value) {
//                     setState(() {
//                       _expandGallery = true;
//                     });
//                   } else {
//                     setState(() {
//                       _expandGallery = false;
//                     });
//                   }
//                 },
//                 title: Text(
//                   "Gallery",
//                   style: GoogleFonts.roboto(
//                     fontSize: 15.0,
//                     fontWeight: FontWeight.w500,
//                     color: _expandGallery ? MyColors.black : MyColors.white,
//                   ),
//                 ),
//                 leading: _expandGallery
//                     ? Image.asset(
//                         'assets/images/galleryblack.png',
//                         height: 25,
//                         width: 25,
//                       )
//                     : Image.asset('assets/images/galleryblack.png',
//                         height: 25, width: 25, color: Colors.white),
//                 children: [
//                   GestureDetector(
//                     onTap: () {
//                       Navigator.of(context).pop();
//                       setState(() {
//                         _expandMembership = false;
//                         _expandWallet = false;
//                         _currentPage = 1;
//                       });
//                     },
//                     child: Container(
//                       padding: EdgeInsets.only(
//                         left: 40.0,
//                       ),
//                       color: MyColors.toolDark,
//                       child: ListTile(
//                         leading: Image.asset(
//                           'assets/images/photogallery.png',
//                           height: 20,
//                           width: 20,
//                         ),
//                         minLeadingWidth: 35,
//                         title: Text(
//                           "Photo Gallery",
//                           style: GoogleFonts.roboto(
//                             fontSize: 14.0,
//                             fontWeight: FontWeight.w400,
//                             color: MyColors.white,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   GestureDetector(
//                     onTap: () {
//                       Navigator.of(context).pop();
//                       setState(() {
//                         _expandMembership = false;
//                         _expandWallet = false;
//                         _currentPage = 2;
//                       });
//                     },
//                     child: Container(
//                       padding: EdgeInsets.only(
//                         left: 40.0,
//                       ),
//                       color: MyColors.toolDark,
//                       child: ListTile(
//                         leading: Image.asset(
//                           'assets/images/videogallery.png',
//                           height: 20,
//                           width: 20,
//                         ),
//                         minLeadingWidth: 35,
//                         title: Text(
//                           "Video Gallery",
//                           style: GoogleFonts.roboto(
//                             fontSize: 14.0,
//                             fontWeight: FontWeight.w400,
//                             color: MyColors.white,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             ListTile(
//               leading: Image.asset(
//                 'assets/images/facility.png',
//                 height: 20,
//                 width: 20,
//               ),
//               minLeadingWidth: 40,
//               onTap: () {
//                 Navigator.of(context).pop();
//                 setState(() {
//                   _currentPage = 7;
//                   _expandGallery = false;
//                   _expandMembership = false;
//                   _expandWallet = false;
//                 });
//               },
//               title: Text(
//                 "Facilities",
//                 style: GoogleFonts.roboto(
//                   fontSize: 14.0,
//                   fontWeight: FontWeight.w400,
//                   color: MyColors.white,
//                 ),
//               ),
//             ),
//             !_isMember
//                 ? Container(
//                     decoration: BoxDecoration(
//                         gradient: LinearGradient(
//                       begin: Alignment.topLeft,
//                       end: Alignment.bottomRight,
//                       colors: _expandMembership
//                           ? [
//                               MyColors.white,
//                               MyColors.toolDark,
//                             ]
//                           : [
//                               Colors.transparent,
//                               Colors.transparent,
//                             ],
//                     )),
//                     child: ExpansionTile(
//                       collapsedIconColor: Colors.white,
//                       iconColor: Colors.white,
//                       onExpansionChanged: (value) {
//                         if (value) {
//                           setState(() {
//                             _expandMembership = true;
//                           });
//                         } else {
//                           setState(() {
//                             _expandMembership = false;
//                           });
//                         }
//                       },
//                       title: Text(
//                         "My Membership",
//                         style: GoogleFonts.roboto(
//                           fontSize: 15.0,
//                           fontWeight: FontWeight.w500,
//                           color: _expandMembership
//                               ? MyColors.black
//                               : MyColors.white,
//                         ),
//                       ),
//                       leading: _expandMembership
//                           ? Image.asset(
//                               'assets/images/membership.png',
//                               height: 25,
//                               width: 25,
//                             )
//                           : Image.asset(
//                               'assets/images/membership.png',
//                               height: 25,
//                               width: 25,
//                               color: MyColors.white,
//                             ),
//                       children: [
//                         GestureDetector(
//                           onTap: () {
//                             setState(() {
//                               Navigator.of(context).pop();
//                               setState(() {
//                                 _expandGallery = false;
//                                 _expandWallet = false;
//                                 _currentPage = 5;
//                               });
//                             });
//                           },
//                           child: Container(
//                             padding: EdgeInsets.only(
//                               left: 40.0,
//                             ),
//                             color: MyColors.toolDark,
//                             child: ListTile(
//                               leading: Image.asset(
//                                 'assets/images/profile.png',
//                                 height: 20,
//                                 width: 20,
//                               ),
//                               minLeadingWidth: 35,
//                               title: Text(
//                                 "My Profile",
//                                 style: GoogleFonts.roboto(
//                                   fontSize: 14.0,
//                                   fontWeight: FontWeight.w400,
//                                   color: MyColors.white,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                         GestureDetector(
//                           onTap: () {
//                             setState(() {
//                               Navigator.of(context).pop();
//                               setState(() {
//                                 _expandGallery = false;
//                                 _expandWallet = false;
//                                 _currentPage = 6;
//                               });
//                             });
//                           },
//                           child: Container(
//                             padding: EdgeInsets.only(
//                               left: 40.0,
//                             ),
//                             color: MyColors.toolDark,
//                             child: ListTile(
//                               leading: Image.asset(
//                                 'assets/images/subscription.png',
//                                 height: 20,
//                                 width: 20,
//                               ),
//                               minLeadingWidth: 35,
//                               title: Text(
//                                 "My Subscription",
//                                 style: GoogleFonts.roboto(
//                                   fontSize: 14.0,
//                                   fontWeight: FontWeight.w400,
//                                   color: MyColors.white,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   )
//                 : Container(),
//             !_isMember
//                 ? Container(
//                     decoration: BoxDecoration(
//                         gradient: LinearGradient(
//                       begin: Alignment.topLeft,
//                       end: Alignment.bottomRight,
//                       colors: _expandWallet
//                           ? [
//                               MyColors.white,
//                               MyColors.toolDark,
//                             ]
//                           : [
//                               Colors.transparent,
//                               Colors.transparent,
//                             ],
//                     )),
//                     child: ExpansionTile(
//                       collapsedIconColor: Colors.white,
//                       iconColor: Colors.white,
//                       onExpansionChanged: (value) {
//                         if (value) {
//                           setState(() {
//                             _expandWallet = true;
//                           });
//                         } else {
//                           setState(() {
//                             _expandWallet = false;
//                           });
//                         }
//                       },
//                       title: Text(
//                         "Wallet",
//                         style: GoogleFonts.roboto(
//                           fontSize: 15.0,
//                           fontWeight: FontWeight.w500,
//                           color:
//                               _expandWallet ? MyColors.black : MyColors.white,
//                         ),
//                       ),
//                       leading: _expandWallet
//                           ? Image.asset(
//                               'assets/images/walletblack.png',
//                               height: 25,
//                               width: 25,
//                             )
//                           : Image.asset(
//                               'assets/images/walletblack.png',
//                               height: 25,
//                               width: 25,
//                               color: MyColors.white,
//                             ),
//                       children: [
//                         Container(
//                           padding: EdgeInsets.only(
//                             left: 40.0,
//                           ),
//                           color: MyColors.toolDark,
//                           child: ListTile(
//                             leading: Image.asset(
//                               'assets/images/mywallet.png',
//                               height: 20,
//                               width: 20,
//                             ),
//                             minLeadingWidth: 35,
//                             onTap: () {
//                               Navigator.of(context).pop();
//                               setState(() {
//                                 _expandMembership = false;
//                                 _expandGallery = false;
//                                 _currentPage = 8;
//                               });
//                             },
//                             title: Text(
//                               "My Wallet",
//                               style: GoogleFonts.roboto(
//                                 fontSize: 14.0,
//                                 fontWeight: FontWeight.w400,
//                                 color: MyColors.white,
//                               ),
//                             ),
//                           ),
//                         ),
//                         Container(
//                           padding: EdgeInsets.only(
//                             left: 40.0,
//                           ),
//                           color: MyColors.toolDark,
//                           child: ListTile(
//                             leading: Image.asset(
//                               'assets/images/sharewallet.png',
//                               height: 20,
//                               width: 20,
//                             ),
//                             minLeadingWidth: 35,
//                             onTap: () {
//                               Navigator.of(context).pop();
//                               setState(() {
//                                 _currentPage = 9;
//                                 _expandGallery = false;
//                                 _expandMembership = false;
//                               });
//                             },
//                             title: Text(
//                               "Share Wallet",
//                               style: GoogleFonts.roboto(
//                                 fontSize: 14.0,
//                                 fontWeight: FontWeight.w400,
//                                 color: MyColors.white,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   )
//                 : Container(),
//             !_isMember
//                 ? ListTile(
//                     leading: Image.asset('assets/images/payment.png',
//                         height: 20, width: 20, color: MyColors.white),
//                     minLeadingWidth: 40,
//                     onTap: () {
//                       Navigator.of(context).pop();
//                       setState(() {
//                         _expandMembership = false;
//                         _expandGallery = false;
//                         _expandWallet = false;
//                         _currentPage = 10;
//                       });
//                     },
//                     title: Text(
//                       "Payment Request",
//                       style: GoogleFonts.roboto(
//                         fontSize: 14.0,
//                         fontWeight: FontWeight.w400,
//                         color: MyColors.white,
//                       ),
//                     ),
//                   )
//                 : Container(),
//             ListTile(
//               leading: Image.asset(
//                 'assets/images/contact.png',
//                 height: 20,
//                 width: 20,
//               ),
//               minLeadingWidth: 40,
//               onTap: () {
//                 Navigator.of(context).pop();
//                 setState(() {
//                   _currentPage = 11;
//                   _expandGallery = false;
//                   _expandMembership = false;
//                   _expandWallet = false;
//                 });
//               },
//               title: Text(
//                 "Contact Us",
//                 style: GoogleFonts.roboto(
//                   fontSize: 14.0,
//                   fontWeight: FontWeight.w400,
//                   color: MyColors.white,
//                 ),
//               ),
//             ),
//             ListTile(
//               leading: Icon(
//                 Icons.logout_rounded,
//                 size: 20.0,
//                 color: MyColors.white,
//               ),
//               minLeadingWidth: 40,
//               onTap: () async {
//                 exitDialog();
//               },
//               title: Text(
//                 "Logout",
//                 style: GoogleFonts.roboto(
//                   fontSize: 14.0,
//                   fontWeight: FontWeight.w400,
//                   color: MyColors.white,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   RoundImageview() {
//     return Container(
//       alignment: Alignment.center,
//       decoration: BoxDecoration(
//         shape: BoxShape.circle,
//         border: Border.all(color: MyColors.buttoncolor, width: 2),
//       ),
//       child: Container(
//           margin: EdgeInsets.all(1.0),
//           height: 60.0,
//           width: 60.0,
//           decoration: BoxDecoration(
//             shape: BoxShape.circle,
//             color: Colors.white,
//             image: DecorationImage(
//               fit: BoxFit.fill,
//               image: imageVariable,
//             ),
//           )),
//     );
//   }

//   _headetextView() {
//     return Container(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(
//             !_isMember ? strname : "Guest User",
//             style: GoogleFonts.roboto(
//               fontWeight: FontWeight.bold,
//               fontSize: 16.0,
//               color: MyColors.buttonlightcolor,
//             ),
//           ),
//           SizedBox(
//             height: 5.0,
//           ),
//           Text(
//             "+91 " + strPhone,
//             style: GoogleFonts.roboto(
//               fontWeight: FontWeight.w500,
//               fontSize: 14.0,
//               color: MyColors.white,
//             ),
//           ),
//           SizedBox(
//             height: 5.0,
//           ),
//           !_isMember
//               ? Text(
//                   "Balance: ₹" + walletBalance,
//                   style: GoogleFonts.roboto(
//                     fontWeight: FontWeight.w400,
//                     fontSize: 14.0,
//                     color: MyColors.appbg,
//                   ),
//                 )
//               : Container(),
//         ],
//       ),
//     );
//   }

//   Widget bannerItems(String item) {
//     return GestureDetector(
//       onTap: () {},
//       child: Container(
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(
//               20.0,
//             ),
//             image: DecorationImage(
//               image: Image.asset(
//                 item,
//                 fit: BoxFit.cover,
//               ).image,
//               fit: BoxFit.cover,
//             )),
//       ),
//     );
//   }

//   void FetchProfile(String ID) {
//     ConnectionUtils.checkConnection().then((intenet) async {
//       if (intenet != null && intenet) {
//         // Internet Present Case
//         setState(() {
//           _isLoading = false;
//         });
//         try {
//           final ProfileModel profileModel =
//               await API_Manager.FetchProfile(context, ID);
//           if (profileModel == null) {
//             setState(() {
//               _isLoading = false;
//             });
//             UIUtils.showSnackbar(context, profileModel.apiMessage);
//           } else {
//             if (profileModel.apiStatus == 1) {
//               setState(() {
//                 _isLoading = false;
//               });
//               if (profileModel.data != null || profileModel.data.isNotEmpty) {
//                 UIUtils.showSnackbar(context, profileModel.apiMessage);

//                 if (profileModel.data.first.name != null ||
//                     profileModel.data.first.name != "") {
//                   strname = profileModel.data.first.name;
//                 }

//                 if (profileModel.data.first.mobile != null ||
//                     profileModel.data.first.mobile != "") {
//                   strmobile = profileModel.data.first.mobile;
//                 }
//                 // SharedPreferences prefs = await SharedPreferences.getInstance();
//                 // if(profileModel.data.first.openingBalance != null || profileModel.data.first.openingBalance != ""){
//                 //   prefs.setString(Prefs.BALANCE, profileModel.data.first.openingBalance);
//                 // } else {
//                 //   prefs.setString(Prefs.BALANCE, "0.00");
//                 // }

//                 // if (profileModel.data.first.openingBalance == null ||
//                 //     profileModel.data.first.openingBalance == "") {
//                 //   strbalance = "0.00";
//                 // } else {
//                 //   strbalance =
//                 //       profileModel.data.first.openingBalance.toString();
//                 // }

//                 if (profileModel.data.first.image != null ||
//                     profileModel.data.first.image != "") {
//                   imageVariable = NetworkImage(profileModel.data.first.image);
//                   strimage = profileModel.data.first.image;
//                 }
//               } else {
//                 UIUtils.showSnackbar(context, profileModel.apiMessage);
//               }
//             } else {
//               setState(() {
//                 _isLoading = false;
//               });
//               UIUtils.showSnackbar(context, profileModel.apiMessage);
//             }
//           }
//         } on Exception catch (_, e) {
//           print(e.toString());
//         }
//       } else {
//         // No-Internet Case
//         UIUtils.showSnackbar(context, 'Please check your internet connection');
//       }
//     });
//   }

//   exitDialog() async {
//     await showDialog(
//         context: context,
//         builder: (_) => AlertDialog(
//               title: Text('Are you sure want to logout?'),
//               actions: [
//                 ElevatedButton(
//                     style: ButtonStyle(
//                       backgroundColor:
//                           MaterialStateProperty.all(MyColors.toolDark),
//                     ),
//                     onPressed: () async {
//                       SharedPreferences prefs =
//                           await SharedPreferences.getInstance();
//                       prefs.setBool(Prefs.isLoggedIn, false);
//                       prefs.setBool(Prefs.isMember, false);
//                       prefs.setString(Prefs.ID, "");
//                       prefs.setString(Prefs.PHONE, "");
//                       prefs.setString(Prefs.AUTH_TOKEN, "");
//                       IntentUtils.fireIntent(context, MobileScreen());
//                     },
//                     child: Text(
//                       'Yes',
//                       style: GoogleFonts.roboto(
//                           fontSize: 14.0,
//                           fontWeight: FontWeight.bold,
//                           color: MyColors.white),
//                     )),
//                 TextButton(
//                     onPressed: () => Navigator.of(context).pop(),
//                     child: Text(
//                       'No',
//                       style: GoogleFonts.roboto(
//                           fontSize: 14.0,
//                           fontWeight: FontWeight.bold,
//                           color: MyColors.toolDark),
//                     ))
//               ],
//             ));
//   }

//   Future<bool> _onBackPressed() async {
//     // Your back press code here...
//     // Navigator.of(context).pop();
//     setState(() {
//       _currentPage = 0;
//     });
//     return false;
//   }
// }
