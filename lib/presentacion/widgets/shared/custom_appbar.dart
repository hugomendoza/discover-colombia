import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});


  @override
  Widget build(BuildContext context) {
    
    final colors = Theme.of(context).colorScheme;

    return SafeArea(
      left: true,
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: SizedBox(
          width: double.infinity,
          child: Row(
            children: [
              const Spacer(),
              IconButton(
                onPressed: (){
                  print("Hola ñero");
                },
                icon: const Icon(Icons.search_rounded),
              ),
            ]
          )
        )
      ),
    );
  }
}