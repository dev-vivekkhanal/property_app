import 'package:flutter/material.dart';
import 'package:porperty_app/theme/color.dart';
import 'package:porperty_app/utils/data.dart';
import 'package:porperty_app/widgets/custom_image.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          backgroundColor: appBgColor,
          pinned: true,
          snap: true,
          floating: true,
          title: getHeader(),
        ),
        SliverToBoxAdapter(child: getBody())
      ],
    );
  }

  getHeader() {
    return Container(
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Profile  Info",
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 17,
                    fontWeight: FontWeight.w600),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: primary)))),
                onPressed: () {},
                child: Text(
                  'Save',
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  getBody() {
    return SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(profile),
                radius: 50,
              ),
              Expanded(
                  child: Column(
                children: [],
              ))
            ],
          ),
        )
      ]),
    );
  }
}

class FlatButton {}
