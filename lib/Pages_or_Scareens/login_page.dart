import 'package:creating_first_project_alhamdulillah/utills/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool chnageButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images_folder/loginpage2.png",
              fit: BoxFit.scaleDown,
            ),
            SizedBox(height: 20),
            Text(
              " Welcome $name",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 4),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 16.0,
                horizontal: 32.0,
              ),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter User Name",
                      labelText: "Username",
                    ),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Pasword ",
                      labelText: "Pasword",
                    ),
                  ),
                  SizedBox(height: 30),

                  InkWell(
                    onTap: () async {
                      setState(() {
                        chnageButton = true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: chnageButton ? 50 : 150,
                      height: 50,
                      //color: Colors.deepPurpleAccent,//DECORATION ME HAME COLOR DENA HTA HAI AB HAMNE YAH BHI DE RAKHA HAI TU WOO EROR DEGA ISLLIYE EK JAGA USE KARNA HAI...
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent,
                        // shape: chnageButton
                        //     ? BoxShape.circle
                        //     : BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(
                          //UPAR HAMNE ALREADY LELIYA HAI FIR NICHE BHI USE JARE IN DONO JA COTRACTOIN NAHI JAMTA ISLITE YE ERROR
                          chnageButton
                              ? 50
                              : 8, // upar hamne iske width 50 di hai tu yaha circle me bhi tu 50 hi dena haina
                        ),
                      ),
                      child: chnageButton
                          ? Icon(Icons.done, color: Colors.white)
                          : Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                    ),
                  ),
                  // ElevatedButton(
                  //   onPressed: () {
                  //     Navigator.pushNamed(
                  //       context,
                  //       MyRoutes.homeRoute,
                  //     ); // login logic
                  //   },
                  //   style: ElevatedButton.styleFrom(
                  //     backgroundColor: Colors.blue, // 🔵 button color
                  //     minimumSize: Size(140, 40),
                  //     shape: RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.circular(
                  //         10,
                  //       ), // rounded corners
                  //     ),
                  //   ),
                  //   child: Text(
                  //     "Login",
                  //     style: TextStyle(
                  //       color: Colors.white, // text color
                  //       fontSize: 16,
                  //     ),
                  //   ),
                  // ),

                  // ElevatedButton(
                  //   child: Text("Login"),
                  //   style: TextButton.styleFrom(
                  //     minimumSize: Size(120, 45),
                  //   ),
                  //   onPressed: () {
                  //     print("Welcome to the Coding Yaseen");
                  //   },
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: LoginPage(),
//     );
//   }
// }

// class LoginPage extends StatefulWidget {
//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Login Page"),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [

//             // Email TextField
//             TextField(
//               controller: emailController,
//               decoration: const InputDecoration(
//                 labelText: "Email",
//                 border: OutlineInputBorder(),
//                 prefixIcon: Icon(Icons.email),
//               ),
//             ),

//             const SizedBox(height: 20),

//             // Password TextField
//             TextField(
//               controller: passwordController,
//               obscureText: true,
//               decoration: const InputDecoration(
//                 labelText: "Password",
//                 border: OutlineInputBorder(),
//                 prefixIcon: Icon(Icons.lock),
//               ),
//             ),

//             const SizedBox(height: 30),

//             // Login Button
//             ElevatedButton(
//               onPressed: () {
//                 String email = emailController.text;
//                 String password = passwordController.text;

//                 ScaffoldMessenger.of(context).showSnackBar(
//                   SnackBar(
//                     content: Text("Email: $email\nPassword: $password"),
//                   ),
//                 );
//               },
//               style: ElevatedButton.styleFrom(
//                 minimumSize: const Size(double.infinity, 50),
//               ),
//               child: const Text("Login"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

