import 'package:flutter/material.dart';
import 'details.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _idClienteController = TextEditingController();
  final _nombreController = TextEditingController();
  final _apellidoController = TextEditingController();
  final _emailController = TextEditingController();
  final _telefonoController = TextEditingController();
  final _fechaRegistroController = TextEditingController();
  final _direccionController = TextEditingController();
  final _codigoPostalController = TextEditingController();

  @override
  void dispose() {
    _idClienteController.dispose();
    _nombreController.dispose();
    _apellidoController.dispose();
    _emailController.dispose();
    _telefonoController.dispose();
    _fechaRegistroController.dispose();
    _direccionController.dispose();
    _codigoPostalController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF), // Blanco
      appBar: AppBar(
        backgroundColor: const Color(0xFFA80A0A), // Rojo oscuro
        title: const Text("Formulario Clientes", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              MyTextField(
                key: UniqueKey(),
                fieldName: "ID Cliente",
                myIcon: Icons.badge,
                myController: _idClienteController,
                prefixIconColor: const Color(0xFFE3A857),
              ),
              const SizedBox(height: 8),
              MyTextField(
                key: UniqueKey(),
                fieldName: "Nombre",
                myIcon: Icons.person,
                myController: _nombreController,
                prefixIconColor: const Color(0xFFE3A857),
              ),
              const SizedBox(height: 8),
              MyTextField(
                key: UniqueKey(),
                fieldName: "Apellido",
                myIcon: Icons.person_outline,
                myController: _apellidoController,
                prefixIconColor: const Color(0xFFE3A857),
              ),
              const SizedBox(height: 8),
              MyTextField(
                key: UniqueKey(),
                fieldName: "Email",
                myIcon: Icons.email,
                myController: _emailController,
                prefixIconColor: const Color(0xFFE3A857),
              ),
              const SizedBox(height: 8),
              MyTextField(
                key: UniqueKey(),
                fieldName: "Teléfono",
                myIcon: Icons.phone,
                myController: _telefonoController,
                prefixIconColor: const Color(0xFFE3A857),
              ),
              const SizedBox(height: 8),
              MyTextField(
                key: UniqueKey(),
                fieldName: "Fecha de Registro",
                myIcon: Icons.calendar_today,
                myController: _fechaRegistroController,
                prefixIconColor: const Color(0xFFE3A857),
              ),
              const SizedBox(height: 8),
              MyTextField(
                key: UniqueKey(),
                fieldName: "Dirección",
                myIcon: Icons.location_on,
                myController: _direccionController,
                prefixIconColor: const Color(0xFFE3A857),
              ),
              const SizedBox(height: 8),
              MyTextField(
                key: UniqueKey(),
                fieldName: "Código Postal",
                myIcon: Icons.markunread_mailbox,
                myController: _codigoPostalController,
                prefixIconColor: const Color(0xFFE3A857),
              ),
              const SizedBox(height: 16),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size.fromHeight(48),
                  side: const BorderSide(color: Color(0xFFA80A0A)),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Details(
                        idCliente: _idClienteController.text,
                        nombre: _nombreController.text,
                        apellido: _apellidoController.text,
                        email: _emailController.text,
                        telefono: _telefonoController.text,
                        fechaRegistro: _fechaRegistroController.text,
                        direccion: _direccionController.text,
                        codigoPostal: _codigoPostalController.text,
                      ),
                    ),
                  );
                },
                child: const Text(
                  "Enviar",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFA80A0A), // Rojo oscuro
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

class MyTextField extends StatelessWidget {
  const MyTextField({
    super.key,
    required this.fieldName,
    required this.myController,
    required this.myIcon,
    required this.prefixIconColor,
  });

  final TextEditingController myController;
  final String fieldName;
  final IconData myIcon;
  final Color prefixIconColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: myController,
      decoration: InputDecoration(
        labelText: fieldName,
        prefixIcon: Icon(myIcon, color: prefixIconColor),
        labelStyle: const TextStyle(color: Color(0xFFA18262)), // Marrón claro
        border: const OutlineInputBorder(),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFA80A0A)), // Rojo oscuro
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
      ),
    );
  }
}
