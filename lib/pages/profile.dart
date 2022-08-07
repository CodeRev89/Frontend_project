import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:image_picker/image_picker.dart';
import 'package:travel_app/models/emptor.dart';
import 'package:travel_app/models/users.dart';
import 'package:travel_app/widget/appbar_widget.dart';

import '../widget/profile_widget.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [ProfileWidget(imagePath: emptor.imagePath, onClicked:() async{}),const SizedBox(height: 24,), buildName(emptor),],
      ),
    );
  }

Widget buildName(Emptor emptor) => Column( children: [ Text(emptor.name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),const SizedBox(height:4),Text(emptor.email,style: TextStyle(color:Colors.grey),))
   


],);

Widget buildUpgradeButton()=> ButtonWidget()

}
//fsd