import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final focusNode = FocusNode();
    final colors = Theme.of(context).colorScheme;
    final outlineInputBorder = UnderlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(40),
    );
    final inputDecoration = InputDecoration(
      hintText: 'Termina tu mensaje con "?"',
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      filled: true,
      suffixIcon: IconButton(
        icon: const Icon(Icons.send_outlined),
        onPressed: () {
          final textValue = textController.value.text;
          print('valor de la caja de texto $textValue');
          textController.clear();
        },
      ),
    );

    return TextFormField(
      focusNode: focusNode,
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        print('enviamos $value');
        textController.clear();
        focusNode.requestFocus();
      },
      // onChanged: (value) {
      //   print('valor cambió a $value');
      // },
    );
  }
}
