import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:umkm/Animation/fadeAnimation.dart';

import '../custom_text.dart';

class NotificationSetting extends StatefulWidget {
  const NotificationSetting({super.key});

  @override
  State<NotificationSetting> createState() => _NotificationSettingState();
}

class _NotificationSettingState extends State<NotificationSetting> {
  bool _Private = true;
  bool _Group = true;
  bool _Channel = true;
  bool _Channel2 = true;
  bool _Channel3 = true;
  bool _Badge1 = true;
  bool _incldmuted = false;
  bool _incldmuted2 = false;
  bool _Count1 = true;
  bool _Count2 = true;
  bool _inappS1 = true;
  bool _inappS2 = true;
  bool _inappV1 = true;
  bool _inappV2 = true;
  bool _inappCs1 = true;
  bool _inappCs2 = true;




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(90.0), // here the desired height
        child: Container(
          child: Stack(
            children: [
              Container(
                height: 90,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black87.withOpacity(0.2),
                        offset: const Offset(0, 2),
                        blurRadius: 20)
                  ],
                ),
                child: Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: CustomText(
                            text: "Notification ",
                            color: const Color(0xFF292D32).withOpacity(0.7),
                            fontSize: 12,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ]),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: 35,
                  height: 35,
                  margin: const EdgeInsets.only(top: 30, left: 20),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 2),
                          blurRadius: 10)
                    ],
                  ),
                  child: Icon(
                    Icons.arrow_back_ios_outlined,
                    color: const Color(0xFF292D32).withOpacity(0.9),
                    size: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              FadeAnimation(
                delay: 1,
                child: Container(
                  color: Colors.white,
                  width: double.infinity,
                  height: 210,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 25, top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              child: CustomText(
                                text: "Notification for chats",
                                color: Color.fromRGBO(43, 43, 43, 0.8),
                                fontSize: 12,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          margin: EdgeInsets.only(left: 25),
                          width: double.infinity,
                          height: 40,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 200,
                                      child: CustomText(
                                        text: "Private Chats",
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Container(
                                      width: 200,
                                      margin: EdgeInsets.only(top: 2),
                                      child: CustomText(
                                        text: "Tap to change",
                                        fontSize: 9,
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(160, 145, 145, 1),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                child: Switch(
                                  activeColor: Colors.white,
                                  activeTrackColor: Color.fromRGBO(56, 161, 238, 1),
                                  inactiveTrackColor:
                                      Color.fromRGBO(43, 43, 43, 0.9),
                                  value: _Private,
                                  onChanged: (value) {
                                    setState(() {
                                      _Private = value;
                                    });
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        color: Color.fromRGBO(204, 204, 204, 1),
                        thickness: 1,
                        indent: 25,
                        endIndent: 0,
                      ),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          margin: EdgeInsets.only(left: 25),
                          width: double.infinity,
                          height: 32,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 200,
                                      child: CustomText(
                                        text: "Group Chats",
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Container(
                                      width: 200,
                                      margin: EdgeInsets.only(top: 2),
                                      child: CustomText(
                                        text: "Tap to change",
                                        fontSize: 9,
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(160, 145, 145, 1),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                child: Switch(
                                  activeColor: Colors.white,
                                  activeTrackColor: Color.fromRGBO(56, 161, 238, 1),
                                  inactiveTrackColor:
                                      Color.fromRGBO(43, 43, 43, 0.9),
                                  value: _Group,
                                  onChanged: (value) {
                                    setState(() {
                                      _Group = value;
                                    });
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        color: Color.fromRGBO(204, 204, 204, 1),
                        thickness: 1,
                        indent: 25,
                        endIndent: 0,
                      ),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          margin: EdgeInsets.only(left: 25),
                          width: double.infinity,
                          height: 32,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 200,
                                      child: CustomText(
                                        text: "Channel Chats",
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Container(
                                      width: 200,
                                      margin: EdgeInsets.only(top: 2),
                                      child: CustomText(
                                        text: "Tap to change",
                                        fontSize: 9,
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(160, 145, 145, 1),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                child: Switch(
                                  activeColor: Colors.white,
                                  activeTrackColor: Color.fromRGBO(56, 161, 238, 1),
                                  inactiveTrackColor:
                                      Color.fromRGBO(43, 43, 43, 0.9),
                                  value: _Channel2,
                                  onChanged: (value) {
                                    setState(() {
                                      _Channel2 = value;
                                    });
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              FadeAnimation(
                delay: 1,
                child: Container(
                  height: 10,
                  width: double.infinity,
                  color: Color.fromRGBO(220, 220, 220, 1),
                ),
              ),

              // Calls

              FadeAnimation(
                delay: 1,
                child: Container(
                  height: 120,
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 25, top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              child: CustomText(
                                text: "Calls",
                                color: Color.fromRGBO(43, 43, 43, 0.8),
                                fontSize: 12,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          margin: EdgeInsets.only(left: 25, right: 25),
                          width: double.infinity,
                          height: 32,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Container(
                                  width: 200,
                                  child: CustomText(
                                    text: "Vibrate",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Container(
                                child: CustomText(
                                  text: "Default",
                                  color: Color.fromRGBO(160, 145, 145, 1),
                                  fontSize: 11,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        color: Color.fromRGBO(204, 204, 204, 1),
                        thickness: 1,
                        indent: 25,
                        endIndent: 0,
                      ),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          margin: EdgeInsets.only(left: 25, right: 25),
                          width: double.infinity,
                          height: 32,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Container(
                                  width: 200,
                                  child: CustomText(
                                    text: "Ringtone",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Container(
                                child: CustomText(
                                  text: "Default",
                                  color: Color.fromRGBO(160, 145, 145, 1),
                                  fontSize: 11,
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              FadeAnimation(
                delay: 1,
                child: Container(
                  height: 10,
                  width: double.infinity,
                  color: Color.fromRGBO(220, 220, 220, 1),
                ),
              ),

              // Badge Counter
              FadeAnimation(
                delay: 1,
                child: Container(
                  width: double.infinity,
                  height: 180,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 25, top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              child: CustomText(
                                text: "Badge Counter",
                                color: Color.fromRGBO(43, 43, 43, 0.8),
                                fontSize: 12,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          margin: EdgeInsets.only(left: 25, top: 5),
                          width: double.infinity,
                          height: 32,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 200,
                                      child: CustomText(
                                        text: "Channel Chats",
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Switch(
                                  activeColor: Colors.white,
                                  activeTrackColor: Color.fromRGBO(56, 161, 238, 1),
                                  inactiveTrackColor:
                                      Color.fromRGBO(43, 43, 43, 0.9),
                                  value: _Badge1,
                                  onChanged: (value) {
                                    setState(() {
                                      _Badge1 = value;
                                    });
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        color: Color.fromRGBO(204, 204, 204, 1),
                        thickness: 1,
                        indent: 25,
                        endIndent: 0,
                      ),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          margin: EdgeInsets.only(left: 25),
                          width: double.infinity,
                          height: 32,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 200,
                                      child: CustomText(
                                        text: "Include Muted Chats",
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Switch(
                                  activeColor: Colors.white,
                                  activeTrackColor: Color.fromRGBO(56, 161, 238, 1),
                                  inactiveTrackColor:
                                      Color.fromRGBO(43, 43, 43, 0.9),
                                  value: _incldmuted,
                                  onChanged: (value) {
                                    setState(() {
                                      _incldmuted = value;
                                    });
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        color: Color.fromRGBO(204, 204, 204, 1),
                        thickness: 1,
                        indent: 25,
                        endIndent: 0,
                      ),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          margin: EdgeInsets.only(left: 25),
                          width: double.infinity,
                          height: 32,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 200,
                                      child: CustomText(
                                        text: "Count Unsend Messages",
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Switch(
                                  activeColor: Colors.white,
                                  activeTrackColor: Color.fromRGBO(56, 161, 238, 1),
                                  inactiveTrackColor:
                                      Color.fromRGBO(43, 43, 43, 0.9),
                                  value: _Count1,
                                  onChanged: (value) {
                                    setState(() {
                                      _Count1 = value;
                                    });
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              FadeAnimation(
                delay: 1,
                child: Container(
                  height: 10,
                  width: double.infinity,
                  color: Color.fromRGBO(220, 220, 220, 1),
                ),
              ),

              // in app apli 1
              FadeAnimation(
                delay: 1,
                child: Container(
                  width: double.infinity,
                  height: 190,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 25, top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              child: CustomText(
                                text: "In-app notifications",
                                color: Color.fromRGBO(43, 43, 43, 0.8),
                                fontSize: 12,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          margin: EdgeInsets.only(left: 25, top: 5),
                          width: double.infinity,
                          height: 32,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 200,
                                      child: CustomText(
                                        text: "In-App Soundss",
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Switch(
                                  activeColor: Colors.white,
                                  activeTrackColor: Color.fromRGBO(56, 161, 238, 1),
                                  inactiveTrackColor:
                                      Color.fromRGBO(43, 43, 43, 0.9),
                                  value: _inappS1,
                                  onChanged: (value) {
                                    setState(() {
                                      _inappS1 = value;
                                    });
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        color: Color.fromRGBO(204, 204, 204, 1),
                        thickness: 1,
                        indent: 25,
                        endIndent: 0,
                      ),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          margin: EdgeInsets.only(left: 25),
                          width: double.infinity,
                          height: 32,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 200,
                                      child: CustomText(
                                        text: "In-App Vibrate",
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Switch(
                                  activeColor: Colors.white,
                                  activeTrackColor: Color.fromRGBO(56, 161, 238, 1),
                                  inactiveTrackColor:
                                      Color.fromRGBO(43, 43, 43, 0.9),
                                  value: _incldmuted,
                                  onChanged: (value) {
                                    setState(() {
                                      _incldmuted = value;
                                    });
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        color: Color.fromRGBO(204, 204, 204, 1),
                        thickness: 1,
                        indent: 25,
                        endIndent: 0,
                      ),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          margin: EdgeInsets.only(left: 25),
                          width: double.infinity,
                          height: 32,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 200,
                                      child: CustomText(
                                        text: "In-Chat Sounds",
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Switch(
                                  activeColor: Colors.white,
                                  activeTrackColor: Color.fromRGBO(56, 161, 238, 1),
                                  inactiveTrackColor:
                                      Color.fromRGBO(43, 43, 43, 0.9),
                                  value: _inappCs1,
                                  onChanged: (value) {
                                    setState(() {
                                      _inappCs1 = value;
                                    });
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        color: Color.fromRGBO(204, 204, 204, 1),
                        thickness: 1,
                        indent: 25,
                        endIndent: 0,
                      ),
                    ],
                  ),
                ),
              ),

              FadeAnimation(
                delay: 1,
                child: Container(
                  height: 10,
                  width: double.infinity,
                  color: Color.fromRGBO(220, 220, 220, 1),
                ),
              ),

              FadeAnimation(
                delay: 1,
                child: Container(
                  height: 120,
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 25, top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              child: CustomText(
                                text: "Calls",
                                color: Color.fromRGBO(43, 43, 43, 0.8),
                                fontSize: 12,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          margin: EdgeInsets.only(left: 25, right: 25),
                          width: double.infinity,
                          height: 32,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Container(
                                  width: 200,
                                  child: CustomText(
                                    text: "Vibrate",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Container(
                                child: CustomText(
                                  text: "Default",
                                  color: Color.fromRGBO(160, 145, 145, 1),
                                  fontSize: 11,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        color: Color.fromRGBO(204, 204, 204, 1),
                        thickness: 1,
                        indent: 25,
                        endIndent: 0,
                      ),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          margin: EdgeInsets.only(left: 25, right: 25),
                          width: double.infinity,
                          height: 32,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Container(
                                  width: 200,
                                  child: CustomText(
                                    text: "Ringtone",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Container(
                                child: CustomText(
                                  text: "Default",
                                  color: Color.fromRGBO(160, 145, 145, 1),
                                  fontSize: 11,
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              FadeAnimation(
                delay: 1,
                child: Container(
                  height: 10,
                  width: double.infinity,
                  color: Color.fromRGBO(220, 220, 220, 1),
                ),
              ),

              // Badge Counter
              FadeAnimation(
                delay: 1,
                child: Container(
                  width: double.infinity,
                  height: 180,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 25, top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              child: CustomText(
                                text: "Badge Counter",
                                color: Color.fromRGBO(43, 43, 43, 0.8),
                                fontSize: 12,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          margin: EdgeInsets.only(left: 25, top: 5),
                          width: double.infinity,
                          height: 32,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 200,
                                      child: CustomText(
                                        text: "Channel Chats",
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Switch(
                                  activeColor: Colors.white,
                                  activeTrackColor: Color.fromRGBO(56, 161, 238, 1),
                                  inactiveTrackColor:
                                      Color.fromRGBO(43, 43, 43, 0.9),
                                  value: _Channel3,
                                  onChanged: (value) {
                                    setState(() {
                                      _Channel3 = value;
                                    });
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        color: Color.fromRGBO(204, 204, 204, 1),
                        thickness: 1,
                        indent: 25,
                        endIndent: 0,
                      ),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          margin: EdgeInsets.only(left: 25),
                          width: double.infinity,
                          height: 32,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 200,
                                      child: CustomText(
                                        text: "Include Muted Chats",
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Switch(
                                  activeColor: Colors.white,
                                  activeTrackColor: Color.fromRGBO(56, 161, 238, 1),
                                  inactiveTrackColor:
                                      Color.fromRGBO(43, 43, 43, 0.9),
                                  value: _incldmuted2,
                                  onChanged: (value) {
                                    setState(() {
                                      _incldmuted2 = value;
                                    });
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        color: Color.fromRGBO(204, 204, 204, 1),
                        thickness: 1,
                        indent: 25,
                        endIndent: 0,
                      ),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          margin: EdgeInsets.only(left: 25),
                          width: double.infinity,
                          height: 32,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 200,
                                      child: CustomText(
                                        text: "Count Unsend Messages",
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Switch(
                                  activeColor: Colors.white,
                                  activeTrackColor: Color.fromRGBO(56, 161, 238, 1),
                                  inactiveTrackColor:
                                      Color.fromRGBO(43, 43, 43, 0.9),
                                  value: _Count2,
                                  onChanged: (value) {
                                    setState(() {
                                      _Count2 = value;
                                    });
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              FadeAnimation(
                delay: 1,
                child: Container(
                  height: 10,
                  width: double.infinity,
                  color: Color.fromRGBO(220, 220, 220, 1),
                ),
              ),

              FadeAnimation(
                delay: 1,
                child: Container(
                  width: double.infinity,
                  height: 190,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 25, top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              child: CustomText(
                                text: "In-app notifications",
                                color: Color.fromRGBO(43, 43, 43, 0.8),
                                fontSize: 12,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          margin: EdgeInsets.only(left: 25, top: 5),
                          width: double.infinity,
                          height: 32,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 200,
                                      child: CustomText(
                                        text: "In-App Sounds",
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Switch(
                                  activeColor: Colors.white,
                                  activeTrackColor: Color.fromRGBO(56, 161, 238, 1),
                                  inactiveTrackColor:
                                      Color.fromRGBO(43, 43, 43, 0.9),
                                  value: _inappS2,
                                  onChanged: (value) {
                                    setState(() {
                                      _inappS2 = value;
                                    });
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        color: Color.fromRGBO(204, 204, 204, 1),
                        thickness: 1,
                        indent: 25,
                        endIndent: 0,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 25),
                        width: double.infinity,
                        height: 32,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 200,
                                    child: CustomText(
                                      text: "In-App Vibrate",
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Switch(
                                activeColor: Colors.white,
                                activeTrackColor: Color.fromRGBO(56, 161, 238, 1),
                                inactiveTrackColor:
                                    Color.fromRGBO(43, 43, 43, 0.9),
                                value: _inappV2,
                                onChanged: (value) {
                                  setState(() {
                                    _inappV2 = value;
                                  });
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                      Divider(
                        color: Color.fromRGBO(204, 204, 204, 1),
                        thickness: 1,
                        indent: 25,
                        endIndent: 0,
                      ),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          margin: EdgeInsets.only(left: 25),
                          width: double.infinity,
                          height: 32,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 200,
                                      child: CustomText(
                                        text: "In-Chat Sounds",
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Switch(
                                  activeColor: Colors.white,
                                  activeTrackColor: Color.fromRGBO(56, 161, 238, 1),
                                  inactiveTrackColor:
                                      Color.fromRGBO(43, 43, 43, 0.9),
                                  value: _inappCs2,
                                  onChanged: (value) {
                                    setState(() {
                                      _inappCs2 = value;
                                    });
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        color: Color.fromRGBO(204, 204, 204, 1),
                        thickness: 1,
                        indent: 25,
                        endIndent: 0,
                      ),
                    ],
                  ),
                ),
              ),

              FadeAnimation(
                delay: 1,
                child: Container(
                  height: 10,
                  width: double.infinity,
                  color: Color.fromRGBO(220, 220, 220, 1),
                ),
              ),

              FadeAnimation(
                delay: 1,
                child: Container(
                  height: 150,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 25, top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              child: CustomText(
                                text: "Reset",
                                fontSize: 12,
                                color: Color.fromRGBO(43, 43, 43, 0.8),
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          margin: EdgeInsets.only(left: 25, right: 25, top: 5),
                          height: 50,
                          child: Column(
                            children: [
                              Container(
                                width: 500,
                                child: CustomText(
                                  text: "Reset All Notification",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Container(
                                width: 500,
                                child: CustomText(
                                  text: "Undo all custom notification settings for your contact group and channels.",
                                  fontSize: 9 ,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(160, 145, 145, 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              )
            ],
          )
        ],
      ),
    );
  }
}
