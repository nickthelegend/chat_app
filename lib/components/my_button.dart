import "package:flutter/material.dart";



class MyButton extends StatelessWidget {
  final String buttonText;
  final void Function()? onTap;
  const MyButton({super.key, required this.buttonText,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: onTap,
      child: Container(padding: EdgeInsets.all(25),
      margin: EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(10)),
      
        child: Center(child: Text(buttonText),
        ),
      ),
    );
  }
}
