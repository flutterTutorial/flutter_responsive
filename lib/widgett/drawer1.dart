

// // GlobalKey<TreeViewState> _key = GlobalKey();

// class ViewDrawer extends StatefulWidget {
//   ViewDrawer({super.key});

//   @override
//   State<ViewDrawer> createState() => _ViewDrawerState();
// }

// class _ViewDrawerState extends State<ViewDrawer> {
//   bool selectedIndexExpansionTile = false;

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Drawer(
//           child: Padding(
//         padding: const EdgeInsets.all(0.0),
//         child: Column(
//           children: [
//             Container(
//               color: Colors.amber,
//               child: DrawerHeader(
//                   margin: const EdgeInsets.all(0.0),
//                   padding: const EdgeInsets.all(0.0),
//                   child: Container(
//                     // color: Colors.amber,
//                     margin: const EdgeInsets.only(
//                         left: 10.0, right: 10.0, top: 10.0),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         const SizedBox(
//                           height: 10.0,
//                         ),
//                         Row(
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             RoundImageview(),
//                             const SizedBox(
//                               width: 20.0,
//                             ),
//                             drawerHeader(),
//                           ],
//                         ),
//                       ],
//                     ),
//                   )),
//             ),
//             Column(
//               children: [
//                 // ExpansionTile(
//                 //   key: const PageStorageKey<String>("FirstKey"),
//                 //   initiallyExpanded: selectedIndexExpansionTile,
//                 //   title: const Text("Parent Category 1"),
//                 //   leading: const Icon(Icons.person), //add icon
//                 //   childrenPadding:
//                 //       const EdgeInsets.only(left: 60), //children padding
//                 //   children: [
//                 //     ListTile(
//                 //       title: const Text("Child Category 1"),
//                 //       onTap: () {
//                 //         //action on press
//                 //       },
//                 //     ),

//                 //     ListTile(
//                 //       title: const Text("Child Category 2"),
//                 //       onTap: () {
//                 //         //action on press
//                 //       },
//                 //     ),
//                 //     //more child menu
//                 //   ],
//                 //   onExpansionChanged: (value) {
//                 //     if (value) {
//                 //       selectedIndexExpansionTile = !value;
//                 //     } else {
//                 //       selectedIndexExpansionTile = false;
//                 //     }
//                 //     setState(() {});
//                 //   },
//                 // ),

//                 // ExpansionTile(
//                 //   key: const PageStorageKey<String>('secondKey'),
//                 //   initiallyExpanded: selectedIndexExpansionTile,
//                 //   title: const Text("Parent Category 2"),
//                 //   leading: const Icon(Icons.person), //add icon
//                 //   childrenPadding:
//                 //       const EdgeInsets.only(left: 60), //children padding
//                 //   children: [
//                 //     ListTile(
//                 //       title: const Text("Child Category 1"),
//                 //       onTap: () {
//                 //         //action on press
//                 //       },
//                 //     ),
//                 //     ListTile(
//                 //       title: const Text("Child Category 2"),
//                 //       onTap: () {
//                 //         //action on press
//                 //       },
//                 //     ),
//                 //     //more child menu
//                 //   ],
//                 //   onExpansionChanged: (value) {
//                 //     if (value) {
//                 //       selectedIndexExpansionTile = !value;
//                 //       selectedIndexExpansionTile = false;
//                 //     } else {
//                 //       selectedIndexExpansionTile = false;
//                 //     }
//                 //     setState(() {});
//                 //   },
//                 // ),

//                 // change Sim
//                 ListTile(
//                   leading: const Icon(
//                     Icons.sim_card,
//                     size: 20.0,
//                     color: Colors.black,
//                   ),
//                   minLeadingWidth: 40,
//                   onTap: () async {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => const SimWIseCallSync()));
//                   },
//                   title: Text(
//                     "Change sim card",
//                     style: GoogleFonts.roboto(
//                       fontSize: 14.0,
//                       fontWeight: FontWeight.w400,
//                       color: Colors.black,
//                     ),
//                   ),
//                 ),
//                 // change path
//                 ListTile(
//                   leading: const Icon(
//                     Icons.maps_home_work,
//                     size: 20.0,
//                     color: Colors.black,
//                   ),
//                   minLeadingWidth: 40,
//                   onTap: () async {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => const SelectPath()));
//                   },
//                   title: Text(
//                     "Change recording file path",
//                     style: GoogleFonts.roboto(
//                       fontSize: 14.0,
//                       fontWeight: FontWeight.w400,
//                       color: Colors.black,
//                     ),
//                   ),
//                 ),

//                 ListTile(
//                   leading: const Icon(
//                     Icons.logout_rounded,
//                     size: 20.0,
//                     color: Colors.black,
//                   ),
//                   minLeadingWidth: 40,
//                   onTap: () async {
//                     exitDialog();
//                   },
//                   title: Text(
//                     "Logout",
//                     style: GoogleFonts.roboto(
//                       fontSize: 14.0,
//                       fontWeight: FontWeight.w400,
//                       color: Colors.black,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       )),
//     );
//   }

//   Widget drawerHeader() {
//     return Container(
//       // color: Colors.red,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(
//             "John",
//             style: GoogleFonts.roboto(
//               fontWeight: FontWeight.w400,
//               fontSize: 14.0,
//               color: Colors.white,
//             ),
//           ),
//           const SizedBox(
//             height: 5.0,
//           ),
//           Text(
//             "+91 " + "8888888888",
//             style: GoogleFonts.roboto(
//               fontWeight: FontWeight.w500,
//               fontSize: 14.0,
//               color: Colors.white,
//             ),
//           ),
//           const SizedBox(
//             height: 5.0,
//           ),
//           Text(
//             "Subscriptions : " + "8500",
//             style: GoogleFonts.roboto(
//               fontWeight: FontWeight.w500,
//               fontSize: 14.0,
//               color: Colors.white,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget RoundImageview() {
//     return Container(
//       height: 100,
//       alignment: Alignment.center,
//       decoration: BoxDecoration(
//         shape: BoxShape.circle,
//         border: Border.all(color: Colors.green, width: 2),
//       ),
//       child: Container(
//           margin: const EdgeInsets.all(1.0),
//           height: 60.0,
//           width: 60.0,
//           decoration: BoxDecoration(
//             shape: BoxShape.circle,
//             color: Colors.white,
//             image: DecorationImage(
//               fit: BoxFit.fill,
//               image: Image.asset("assets/images/rec.png").image,
//             ),
//           )),
//     );
//   }

//   exitDialog() {
//     showDialog(
//         context: context,
//         builder: (_) => AlertDialog(
//               title: const Text('Are you sure want to logout?'),
//               actions: [
//                 ElevatedButton(
//                     style: ButtonStyle(
//                       backgroundColor: MaterialStateProperty.all(
//                           const Color.fromARGB(255, 19, 75, 139)),
//                     ),
//                     onPressed: () async {
//                       SharedPreferences prefs =
//                           await SharedPreferences.getInstance();
//                       await prefs.remove(AppConstants.userId);
//                       loginPageNavigator();
//                     },
//                     child: Text(
//                       'Yes',
//                       style: GoogleFonts.roboto(
//                           fontSize: 14.0,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white),
//                     )),
//                 TextButton(
//                     onPressed: () => Navigator.of(context).pop(),
//                     child: Text(
//                       'No',
//                       style: GoogleFonts.roboto(
//                           fontSize: 14.0,
//                           fontWeight: FontWeight.bold,
//                           color: const Color.fromARGB(255, 15, 70, 116)),
//                     ))
//               ],
//             ));
//   }

//   loginPageNavigator() {
//     Navigator.pushAndRemoveUntil(
//         context,
//         MaterialPageRoute(builder: ((context) => const LoginPage())),
//         (route) => false);
//   }
// }
