

//  TextField(
//         decoration: InputDecoration(
//           border: OutlineInputBorder(),
//           labelText: 'Even Densed TextFiledddddd',
//           isDense: true,                      // Added this
//           contentPadding: EdgeInsets.all(8),  // Added this
//         ),
//       )


// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key});

//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   bool vis = true;
//   bool circular = false;
//   bool isLoading = false;
//   AuthModel? authModel;
//   late String errorText;
//   // final GlobalKey<FormState>? _globalkey = GlobalKey<FormState>();
//   TextEditingController userController =
//       TextEditingController(text: "gurleen@fwic.in");
//   TextEditingController passController = TextEditingController(text: "gurleen");

//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         FocusManager.instance.primaryFocus?.unfocus();
//       },
//       child: Scaffold(
//           appBar: AppBar(
//             title: const Text("Login Page"),
//             // actions: [
//             //   IconButton(
//             //       onPressed: () {
//             //         Navigator.push(
//             //             context,
//             //             MaterialPageRoute(
//             //                 builder: (context) => const SplashScreen()));
//             //       },
//             //       icon: const Icon(Icons.access_alarm_rounded))
//             // ],
//           ),
//           body: SingleChildScrollView(
//             child: Column(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(top: 100.0),
//                   child: Center(
//                     child: Container(
//                       height: MediaQuery.of(context).size.height * 0.15,
//                       width: MediaQuery.of(context).size.width * 0.30,
//                       decoration: BoxDecoration(
//                         image: DecorationImage(
//                           image: AssetImage(Assets.images.newLogo.path),
//                           fit: BoxFit.fill,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(10),
//                   child: TextFormField(
//                     // key: _globalkey,
//                     // onChanged: (input) {},
//                     autovalidateMode: AutovalidateMode.always,
//                     // validator: MultiValidator([
//                     //   RequiredValidator(errorText: "* Required"),
//                     //   EmailValidator(errorText: "Enter valid email id"),
//                     // ]),
//                     keyboardType: TextInputType.emailAddress,
//                     style: const TextStyle(color: Colors.black),
//                     decoration: const InputDecoration(
//                       border: OutlineInputBorder(),
//                       // border: const Input(),
//                       labelText: 'Email',
//                       hintText: 'Enter email',
//                       prefixIcon: Icon(
//                         Icons.email_outlined,
//                         color: Color.fromARGB(255, 0, 0, 0),
//                       ),
//                     ),
//                     controller: userController,
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(10),
//                   child: TextFormField(
//                     // key: _globalkey,
//                     // keyboardType: TextInputType.visiblePassword,
//                     autovalidateMode: AutovalidateMode.always,
//                     obscureText: vis ? true : false,
//                     enableSuggestions: false,
//                     autocorrect: false,
//                     // validator: MultiValidator([
//                     //   RequiredValidator(errorText: "* Required"),
//                     // ]),
//                     style: const TextStyle(color: Colors.black),
//                     decoration: InputDecoration(
//                       border: const OutlineInputBorder(),
//                       labelText: 'Password',
//                       hintText: 'Enter secure password',
//                       suffixIcon: IconButton(
//                         icon: Icon(
//                             vis ? Icons.visibility_off : Icons.visibility,
//                             color: Colors.black),
//                         onPressed: () {
//                           setState(() {
//                             vis = !vis;
//                           });
//                         },
//                       ),
//                       focusColor: Colors.black,
//                       prefixIcon: const Icon(
//                         Icons.https_outlined,
//                         color: Colors.black,
//                       ),
//                     ),
//                     controller: passController,
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 45,
//                 ),
//                 // TextButton(
//                 //   onPressed: () {},
//                 //   child: const Text(
//                 //     'Forgot Password',
//                 //     style: TextStyle(color: Colors.blue, fontSize: 15),
//                 //   ),
//                 // ),
//                 CrmButton(
//                   buttonText: isLoading ? "Logging..." : "Login",
//                   onTap: () {
//                     loginApi(userController.text, passController.text);
//                   },
//                 ),
//                 const SizedBox(
//                   height: 30,
//                 ),
//                 TextButton(
//                   onPressed: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (_) => const SignUpPage()));
//                   },
//                   child: const Text(
//                     'New User? Create Account',
//                     style: TextStyle(color: Colors.blue, fontSize: 15),
//                   ),
//                 ),
//               ],
//             ),
//           )),
//     );
//   }

//   loginApi(String email, String pass) async {
//     try {
//       setState(() {
//         isLoading = true;
//       });
//       http.Response response = await CrmRepository.Login(email, pass);
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//       if (response.statusCode == 200) {
//         AuthModel authModel;
//         var data = jsonDecode(response.body);
//         authModel = AuthModel.fromJson(data);
//         homePageNavigator();
//         prefs.setString(AppConstants.userId, authModel.userId!);
//         print("successful");
//         setState(() {
//           isLoading = false;
//         });
//       } else {
//         prefs.setString(AppConstants.userId, "");
//         print("something went Wrong");
//       }
//     } catch (e) {
//       print("Error ${e.toString()}");
//     }
//   }

//   homePageNavigator() {
//     Navigator.push(context,
//         MaterialPageRoute(builder: (context) => const MyHomePage()));
//   }
// }
