import 'package:flames/components/additional_info_list.dart';
import 'package:flames/components/basic_list.dart';
import 'package:flames/components/language_container.dart';
import 'package:flames/components/value_container.dart';
import 'package:flames/designs/photo_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditPage extends StatefulWidget {
  const EditPage({super.key});

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  // late Size mq;
  @override
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          // toolbarHeight: ,
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 8, top: 5),
            child: Container(
              //we can add gesture detector for functionality of back button but we are now focussing only on UI.
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(8)),
              child: const Center(
                child: Icon(
                  CupertinoIcons.back,
                  color: Colors.black87,
                ),
              ),
            ),
          )),
      body: SafeArea(
          child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          // const SizedBox(),
          Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: PhotoAdd(
                        height: mq.height * 0.26, width: mq.height * 0.26),
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: PhotoAdd(
                            height: mq.height * 0.125,
                            width: mq.height * 0.125),
                      ),
                      PhotoAdd(
                          height: mq.height * 0.125, width: mq.height * 0.125)
                    ],
                  )
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8, top: 8),
                    child: PhotoAdd(
                        height: mq.height * 0.16, width: mq.width * 0.37),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8, right: 8),
                    child: PhotoAdd(
                        height: mq.width * 0.5, width: mq.width * 0.37),
                  )
                ],
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8, top: 10, right: 10),
            child: Text(
              'About',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Colors.grey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 8),
            child: Container(
                height: mq.height * 0.15,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: const Color(0XFFFFF4F8),
                    borderRadius: BorderRadius.circular(10)),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 13, vertical: 15),
                  child: Text(
                    '"tell them about you"',
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10, top: 5),
                child: Text(
                  "0/200",
                  style: TextStyle(color: Colors.grey.shade700, fontSize: 15),
                ),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 8,
              top: 10,
            ),
            child: Text(
              'Basics',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Colors.grey),
            ),
          ),
          SizedBox(
            height: mq.height * 0.29,
            child: BasicList(),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 8,
              top: 10,
            ),
            child: Text(
              'Additional Information',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Colors.grey),
            ),
          ),
          SizedBox(
            height: mq.height * 0.84,
            child: AdditionalInfo(),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 8,
              top: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Languages',
                  style: TextStyle(
                      fontSize: 20,
                      height: 0.1,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey.shade200),
                    child: const Center(
                        child: Icon(CupertinoIcons.add,
                            size: 18, color: Colors.black54)),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(children: const [
              LanguageContainer(textString: 'Hindi'),
              SizedBox(
                width: 10,
              ),
              LanguageContainer(textString: 'English')
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 8,
              top: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Interests',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey.shade200),
                    child: const Center(
                        child: Icon(CupertinoIcons.add,
                            size: 18, color: Colors.black54)),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                MyValueContainer(
                    textString: "HipHop", icon: 'images/hiphop.png'),
                MyValueContainer(textString: "Rap", icon: 'images/rap.png'),
                MyValueContainer(textString: "Sufi", icon: 'images/sufu.png'),
                MyValueContainer(textString: "Chess", icon: 'images/chess.png'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                MyValueContainer(textString: "Anime", icon: 'images/anime.png'),
                MyValueContainer(
                    textString: "Mystery", icon: 'images/mystery.png'),
                MyValueContainer(
                    textString: "Documentary", icon: 'images/doc.png'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                MyValueContainer(
                    textString: "Historic", icon: 'images/historic.png'),
                MyValueContainer(
                    textString: 'SuperHero', icon: 'images/superhero.png')
              ],
            ),
          )
        ]),
      )),
    );
  }
}
