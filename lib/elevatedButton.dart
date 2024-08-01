import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ElevatButton extends StatelessWidget {
  String label='';
   ElevatButton({super.key,required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: ElevatedButton(style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),),  onPressed: (){}, child: Text("$label" ,style: TextStyle(color: Colors.black,fontSize: 16),)),
    );
  }
}
