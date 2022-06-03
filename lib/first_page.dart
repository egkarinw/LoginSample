import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.lightBlueAccent,
              Colors.blue,
              Colors.indigo,
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(padding: EdgeInsets.all(50)),
              showLogo(),
              inputName(),
              inputPassword(),
              const Padding(padding: EdgeInsets.all(10)),
              inputButton(),
              const Padding(padding: EdgeInsets.all(10)),
              registerButton(),
              const Padding(padding: EdgeInsets.all(20)),
            ],
          ),
        ),
      ),
    );
  }

  Widget showLogo() {
    return Image.asset(
      'assets/images/logo.png',width: MediaQuery.of(context).size.width / 2,
    );
  }

  Widget inputName() {
    return Container(
      padding: const EdgeInsets.fromLTRB(40, 40, 40, 10),
      child: TextFormField(
        decoration: InputDecoration(
          fillColor: Colors.white10.withOpacity(0.7),
          filled: true,
          hintText: 'username',
          prefixIcon: const Icon(
            Icons.person,
            color: Colors.blueGrey,
            size: 35,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        style: const TextStyle(
          color: Colors.blue,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget inputPassword() {
    return Container(
      padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
      child: TextFormField(
        decoration: InputDecoration(
          fillColor: Colors.white10.withOpacity(0.7),
          filled: true,
          hintText: 'password',
          prefixIcon: const Icon(
            Icons.person,
            color: Colors.blueGrey,
            size: 35,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        style: const TextStyle(
          color: Colors.blue,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget inputButton() {
    return SizedBox(
      width: 320,
      height: 55,
      child: ElevatedButton(
        onPressed: () {},
        child: const Text(
          'Login',
          style: TextStyle(fontSize: 20),
        ),
        style: ElevatedButton.styleFrom(
            primary: Colors.pink[300],
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25))),
      ),
    );
  }

  Widget registerButton() {
    return SizedBox(
      width: 320,
      height: 50,
      child: TextButton(
        onPressed: () {},
        child: const Text(
          'ลงทะเบียน',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: Colors.orangeAccent,
          ),
        ),
      ),
    );
  }

}
