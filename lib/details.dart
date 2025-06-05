import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({
    super.key,
    required this.idCliente,
    required this.nombre,
    required this.apellido,
    required this.email,
    required this.telefono,
    required this.fechaRegistro,
    required this.direccion,
    required this.codigoPostal,
  });

  final String idCliente, nombre, apellido, email, telefono, fechaRegistro, direccion, codigoPostal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Detalles del Cliente", style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFFA80A0A),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            // Cliente dinámico
            ListTile(
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: Colors.grey.shade300),
              ),
              leading: const Icon(Icons.person, color: Color(0xFFE3A857)),
              title: Text(
                '$nombre $apellido',
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('ID Cliente: $idCliente'),
                  Text('Email: $email'),
                  Text('Teléfono: $telefono'),
                  Text('Fecha Registro: $fechaRegistro'),
                  Text('Dirección: $direccion'),
                  Text('Código Postal: $codigoPostal'),
                ],
              ),
              isThreeLine: true,
              trailing: const Icon(Icons.delete, color: Colors.grey),
            ),

            const SizedBox(height: 12),

            // Ejemplo estático 1
            ListTile(
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: Colors.grey.shade300),
              ),
              leading: const Icon(Icons.person, color: Color(0xFFE3A857)),
              title: const Text(
                "Luis Ramírez",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
              subtitle: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('ID Cliente: 002'),
                  Text('Email: luisr@example.com'),
                  Text('Teléfono: 999-123-4567'),
                  Text('Fecha Registro: 2024-05-01'),
                  Text('Dirección: Calle Robles 45'),
                  Text('Código Postal: 44600'),
                ],
              ),
              isThreeLine: true,
              trailing: const Icon(Icons.delete, color: Colors.grey),
            ),

            const SizedBox(height: 12),

            // Ejemplo estático 2
            ListTile(
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: Colors.grey.shade300),
              ),
              leading: const Icon(Icons.person, color: Color(0xFFE3A857)),
              title: const Text(
                "María López",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
              subtitle: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('ID Cliente: 003'),
                  Text('Email: maria.lopez@example.com'),
                  Text('Teléfono: 998-456-7890'),
                  Text('Fecha Registro: 2024-06-15'),
                  Text('Dirección: Avenida Central 123'),
                  Text('Código Postal: 44770'),
                ],
              ),
              isThreeLine: true,
              trailing: const Icon(Icons.delete, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
