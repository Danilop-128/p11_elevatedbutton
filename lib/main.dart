import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text('Daniela López Chavira  Mat:22308051281240'),
            titleTextStyle: const TextStyle(color: Colors.black, fontSize: 15),
            backgroundColor: Colors.blueGrey),
        body: SingleChildScrollView(
          child: Center(
            child: MyButtons(), // Aquí se utiliza la clase MyButtons
          ),
        ),
      ),
    );
  }
}

class MyButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Fila 1 (con ícono adicional y +)
        _buildButtonRow(
          icon: Icons.thumb_up,
          label: "Aprobar",
          backgroundColor: Colors.lightGreen,
          foregroundColor: Colors.black,
          showIcon: true, // Mostrar ícono adicional
        ),
        SizedBox(height: 10),

        // Fila 2 (sin ícono adicional, pero con +)
        _buildButtonRow(
          icon: Icons.thumb_down, // Este ícono no se mostrará
          label: "Rechazar",
          backgroundColor: Colors.redAccent,
          foregroundColor: Colors.white,
          showIcon: false, // No mostrar ícono adicional
        ),
        SizedBox(height: 10),

        // Fila 3 (con ícono adicional y +)
        _buildButtonRow(
          icon: Icons.star,
          label: "Favorito",
          backgroundColor: Colors.amber,
          foregroundColor: Colors.black,
          showIcon: true, // Mostrar ícono adicional
        ),
        SizedBox(height: 10),

        // Fila 4 (sin ícono adicional, pero con +)
        _buildButtonRow(
          icon: Icons.delete, // Este ícono no se mostrará
          label: "Eliminar",
          backgroundColor: Colors.deepOrange,
          foregroundColor: Colors.white,
          showIcon: false, // No mostrar ícono adicional
        ),
        SizedBox(height: 10),

        // Fila 5 (con ícono adicional y +)
        _buildButtonRow(
          icon: Icons.settings,
          label: "Configuración",
          backgroundColor: Colors.blueGrey,
          foregroundColor: Colors.white,
          showIcon: true, // Mostrar ícono adicional
        ),
        SizedBox(height: 10),

        // Fila 6 (sin ícono adicional, pero con +)
        _buildButtonRow(
          icon: Icons.email, // Este ícono no se mostrará
          label: "Contactar",
          backgroundColor: Colors.teal,
          foregroundColor: Colors.white,
          showIcon: false, // No mostrar ícono adicional
        ),
        SizedBox(height: 10),

        // Fila 7 (con ícono adicional y +)
        _buildButtonRow(
          icon: Icons.attach_money,
          label: "Donar",
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
          showIcon: true, // Mostrar ícono adicional
        ),
        SizedBox(height: 10),

        // Fila 8 (sin ícono adicional, pero con +)
        _buildButtonRow(
          icon: Icons.help, // Este ícono no se mostrará
          label: "Ayuda",
          backgroundColor: Colors.purple,
          foregroundColor: Colors.white,
          showIcon: false, // No mostrar ícono adicional
        ),
      ],
    );
  }

  // Método para construir una fila con dos botones
  Widget _buildButtonRow({
    required IconData icon,
    required String label,
    required Color backgroundColor,
    required Color foregroundColor,
    required bool showIcon, // Nuevo parámetro para controlar el ícono adicional
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Botón principal (con o sin ícono adicional)
        ElevatedButton(
          onPressed: () {
            print("$label presionado");
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
            foregroundColor: foregroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: showIcon
              ? Row(
                  mainAxisSize: MainAxisSize
                      .min, // Ajustar el tamaño de la fila al contenido
                  children: [
                    Icon(icon), // Ícono adicional
                    SizedBox(width: 8), // Espacio entre el ícono y el texto
                    Text(label), // Texto
                  ],
                )
              : Text(label), // Solo texto
        ),
        SizedBox(width: 10), // Espacio entre los botones

        // Botón con ícono +
        ElevatedButton(
          onPressed: () {
            print("Botón + presionado para $label");
          },
          child: Icon(Icons.add),
          style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor.withOpacity(0.8),
            foregroundColor: foregroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            minimumSize: Size(50, 50), // Tamaño mínimo del botón
          ),
        ),
      ],
    );
  }
}
