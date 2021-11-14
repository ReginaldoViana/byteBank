import 'package:flutter/material.dart';

import 'screen/transferencia/list.dart';

void main() => runApp(const Bytebanck());

class Bytebanck extends StatelessWidget {
  const Bytebanck({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.green,
        ).copyWith(
          secondary: Colors.blue,
        ),
      ),
      home: ListTransferencia(),
    );
  }
}
