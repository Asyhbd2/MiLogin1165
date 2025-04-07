import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFC91441),
          toolbarHeight: 95,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("assets/icons/Logo.png"),
              Row(
                children: [
                  Image.asset("assets/icons/Carrito.png"),
                  const SizedBox(width: 16),
                  Image.asset("assets/icons/Menu.png"),
                ],
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                color: const Color(0xFF55091C),
                width: double.infinity,
                height: 55,
                alignment: Alignment.center,
                child: const Text(
                  "¿No tienes cuenta? ¡Registrate!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontFamily: "CarterOne",
                  ),
                ),
              ),
              Image.asset("assets/images/Promocion.png"),
              Container(
                color: const Color(0xFF55091C),
                width: double.infinity,
                height: 55,
                alignment: Alignment.center,
                child: const Text(
                  "¡Lo más vendido!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontFamily: "CarterOne",
                  ),
                ),
              ),

              // Menú
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/Base.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Fila con los dos items
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          MenuItem(
                            imagePath: 'assets/images/Cheesecake.png',
                            label: 'Cheese Cake',
                          ),
                          MenuItem(
                            imagePath: 'assets/images/Perro.png',
                            label: 'Perro Pastel',
                          ),
                        ],
                      ),
                      SizedBox(height: 24),
                      // Barra blanca debajo
                      Container(
                        width: 150,
                        height: 4,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Widget reutilizable para cada item del menú
class MenuItem extends StatelessWidget {
  final String imagePath;
  final String label;

  const MenuItem({
    required this.imagePath,
    required this.label,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Cuadrado fijo 139×139 con borde blanco y esquinas redondeadas
        Container(
          width: 139,
          height: 139,
          padding: const EdgeInsets.all(4), // espacio interior para el borde
          decoration: BoxDecoration(
            color: Colors.pinkAccent,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.white, width: 4),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Container(
              color: Colors.transparent,
              alignment: Alignment.center,
              child: Image.asset(
                imagePath,
                fit: BoxFit.contain, // escala para que quepa completo
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontFamily: 'CarterOne',
          ),
        ),
      ],
    );
  }
}
