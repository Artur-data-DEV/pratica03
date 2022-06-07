import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Icon(Icons.contact_phone, size: 82,
              //  color: Colors.red),
            Image.network('https://cdn-icons-png.flaticon.com/512/419/419952.png',
            width: 300,
            height: 100,),
            Text('Campeonatos', style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
            ),
            ),

            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(

                filled: true,
                fillColor: Colors.grey[150],
                border: OutlineInputBorder(),
                label: Text("Email"),

              ),
            ),
            TextField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(

                filled: true,
                fillColor: Colors.grey[150],
                border: UnderlineInputBorder(),
                label: Text("Senha"),
              ),
            ),
            TextButton(child: Text('ENTRAR'),
                onPressed: () => Navigator.pushReplacementNamed(context, '/lista')
            ),
          ],
        )
    );
  }
}