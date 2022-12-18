import 'package:flutter/material.dart';
// ?
class ItemWidget extends StatelessWidget {
  final void onPressed;
  const ItemWidget({Key? key,required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: EdgeInsets.zero,
      splashColor: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      onPressed: () => onPressed,
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.blue.withOpacity(0.6),
        ),
        child: const Center(child: Text('Go Detail Page')),
      ),
    );
  }
}
