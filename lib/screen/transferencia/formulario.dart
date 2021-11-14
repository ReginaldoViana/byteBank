import 'package:bytebank/components/editor.dart';
import 'package:bytebank/model/transferencia.dart';
import 'package:flutter/material.dart';

class FormularioTransferencia extends StatefulWidget {
  @override
  State<FormularioTransferencia> createState() =>
      _FormularioTransferenciaState();
}

class _FormularioTransferenciaState extends State<FormularioTransferencia> {
  final TextEditingController _controladorCampoNumeroConta =
      TextEditingController();

  final TextEditingController _controladorCampoValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    void _criarTransferencia() {
      final int? numeroConta = int.tryParse(_controladorCampoNumeroConta.text);
      final double? valor = double.tryParse(_controladorCampoValor.text);
      final tranferenciaCriada = Transferencia(valor!, numeroConta!);

      Navigator.pop(context, tranferenciaCriada);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Criando Transferencia'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Editor(
              controlador: _controladorCampoNumeroConta,
              rotulo: 'Número da conta',
              dica: '0000',
              icone: null,
            ),
            Editor(
              controlador: _controladorCampoValor,
              rotulo: 'Valor',
              dica: '0.00',
              icone: Icons.monetization_on,
            ),
            ElevatedButton(
              onPressed: _criarTransferencia,
              child: const Text('Confirmar'),
            )
          ],
        ),
      ),
    );
  }
}
