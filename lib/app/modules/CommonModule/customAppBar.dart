import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation:0,
      backgroundColor : Colors.transparent,
      centerTitle: true,
      leading:Padding(
        padding: const EdgeInsets.all(4.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Container(
                child:Image.asset("assets/images/user.jpeg",),
                ),
        ),
      ),
         title: Text("John Deo",style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500
          ),),
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.notifications))
      ],
    );
  }
}
