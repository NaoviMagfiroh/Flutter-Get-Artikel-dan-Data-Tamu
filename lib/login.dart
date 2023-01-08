import 'package:flutter/material.dart';
import 'package:naovimagfiroh_20090135_orbitflutter/home.dart';

class HalamanLogin extends StatefulWidget {
  const HalamanLogin({super.key});

  @override
  State<HalamanLogin> createState() => _HalamanLoginState();
}

class _HalamanLoginState extends State<HalamanLogin> {
  bool visibilityPass = false;

  final String myUser = '1';
  final String myPass = '1';

  TextEditingController cUser = TextEditingController();
  TextEditingController cPass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(0),
        width: double.infinity,
        height: double.infinity,
        color: Colors.black,
        
        child: Card(
          elevation: 10,
          shadowColor: Colors.white,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                width: 150,
                height: 150,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/img/user.png'),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    TextField(
                      controller: cUser,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 2.0)),
                        labelText: 'Username',
                        hintText: 'Masukan Username',
                        prefixIcon: Icon(Icons.person),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: cPass,
                      obscureText: !visibilityPass,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 2.0)),
                          labelText: 'Password',
                          hintText: 'Masukan Password',
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  visibilityPass = !visibilityPass;
                                });
                              },
                              icon: visibilityPass
                                  ? Icon(Icons.visibility)
                                  : Icon(Icons.visibility_off))),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
            
                        onPressed: () {

                          CekLogin(context);
              
                        },
                        child: Text('Login')),
                        
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void CekLogin(BuildContext context) {
    //final String myUser = 'admin';
    //final String myPass = '12345';

    if (cUser.text == myUser && cPass.text == myPass) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ));
    } else if (cUser.text.isEmpty || cPass.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('User dan Password Harus Diisi'),
          backgroundColor: Colors.black,
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('User dan Password Anda salah...'),
          backgroundColor: Colors.black,
        ),
      );
    }
  }
}
