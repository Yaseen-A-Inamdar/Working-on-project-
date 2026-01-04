import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            "assets/images_folder/loginpage2.png",
            fit: BoxFit.scaleDown,
          ),
          SizedBox(height: 20),
          Text(
            " Welcome ",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
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
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter Pasword ",
                    labelText: "Pasword",
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  child: Text(
                    "Login",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  onPressed: () {
                    print("Welcome to the Coding Yaseen");
                  },
                ),
              ],
            ),
          ),
        ],
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

