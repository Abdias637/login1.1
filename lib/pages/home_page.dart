import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina de inicio'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              Navigator.pushNamedAndRemoveUntil(
                context,
                '/',
                (Route<dynamic> route) => false,
              );
            },
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('¡Bienvenido a la Tienda de Frutas!'),
          const SizedBox(height: 20),
          _buildFruitItem('Manzana', '\$1.99'),
          _buildFruitItem('Plátano', '\$0.99'),
          _buildFruitItem('Naranja', '\$0.79'),
          _buildFruitItem('Uva', '\$2.49'),
          // Agrega más frutas si lo deseas
        ],
      ),
    );
  }

  Widget _buildFruitItem(String name, String price) {
    return ListTile(
      title: Text(name),
      trailing: Text(price),
    );
  }
}
