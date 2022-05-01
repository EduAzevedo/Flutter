import 'package:flutter/material.dart';

class IFSlogo extends StatelessWidget {
  const IFSlogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      child: Image.asset("imagens/IFS_LOGO.png", width: 112, height: 112),
    );
  }
}
