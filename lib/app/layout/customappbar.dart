
import 'package:badges/badges.dart';
import 'package:desgin_task_b/app/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget
{
  String screenName;
  CustomAppBar(this.screenName, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation:0,
      backgroundColor :appPrimaryColor,
      centerTitle: true,
      leading:Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Container(
            child:Image.asset("assets/images/user.jpeg",),
          ),
        ),
      ),
      title: Text("${screenName}",style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w500
      ),),
      actions: [

        Badge(
            position: BadgePosition.topStart(top: 15,start: 26),
            alignment: Alignment.centerRight,
            stackFit: StackFit.loose,
            elevation: 0,
            toAnimate: false,
            child: IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.bell,size: 24,)))
      ],
    );
  }
}