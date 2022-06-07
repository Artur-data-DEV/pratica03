import 'package:flutter/material.dart';

class Lista extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Campeonatos'),
        actions: [
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () => Navigator.pushReplacementNamed(context, '/'),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          const campeonato = [ "Carioca", "Copa do Mundo", "Copa do Brasil", "Campeonato Brasileiro", "Paulista" ];
          return ListTile(
            title: Text("Campeonato ${index + 1}"),
            trailing: Text(campeonato[index]),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => Navigator.pushNamed(context, '/cadastro'),
      ),
    );
  }
}
