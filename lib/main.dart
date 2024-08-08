import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'user.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

bool isSecure = true;
List<user> users = [
  user(email: "as@gmail.com", pass: "123"),
  user(email: "ba", pass: "321"),
];

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 7, 72, 125),
        centerTitle: true,
        title: Text(
          "Hash plus",
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
        leading: Icon(Icons.message,
            color: Color.fromARGB(255, 245, 246, 248), size: 28),
        actions: [
          Icon(Icons.search,
              color: Color.fromARGB(255, 240, 235, 235), size: 30),
          // SizedBox(width: 15),
          // Icon(Icons.account_box, color: Color.fromARGB(255, 244, 241, 241),size:26)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            //Text('aaa'),
            Image.asset('assets/Login.jpg',height: 300,
            width: 300,),
            // Text('aaa'),
         
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        label: Text('Enter Email: '),
                        prefixIcon: Icon(
                          Icons.account_box,
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    obscureText: isSecure,
                    decoration: InputDecoration(
                        label: Text('Enter password: '),
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.black,
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            StepState() {
                              isSecure = !isSecure;
                              print(isSecure);
                            }
                          },
                          icon: Icon(Icons.remove_red_eye),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                        )),
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  InkWell(
                    onTap: () {
                      print('loged');
                    },
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('login'),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(Icons.login),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),

      // backgroundColor: color.Colors.black,
    );
  }
}
