import 'package:coinz/Modules/News/NewsList.dart';
import 'package:flutter/material.dart';
// import 'package:share/share.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:share/share.dart';

class NewsDetails extends StatelessWidget {
  final String title;
  final String dis;
  final String img;
  final String date;

  const NewsDetails(this.title,
      this.dis,
      this.img,
      this.date, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                      builder: (context) => NewsList()));
                },
                child: const Text(
                  'عودة',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ))
          ],
          leading: TextButton(
              onPressed: () {},
              child: const Text(
                'مشاركة',
                style: TextStyle(
                  color: Colors.black,
                ),
              )),
        ),
        body:
        Directionality(
            textDirection: TextDirection.rtl,
            child: ListView.builder(
                itemCount: 1,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.only(
                                start: 27.0),
                            child: Text(
                              title,
                              style: const TextStyle(fontSize: 20.0),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(
                                start: 27.0),
                            child: Text(
                              date,
                              style: const TextStyle(
                                  color: Colors.grey, fontSize: 10),
                            ),
                          ),
                          Image.asset(
                            img,
                            fit: BoxFit.fill,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                      const SizedBox(height: 14.0),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                            start: 27.0),
                        child: Row(
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4)),
                                child: TextButton(
                                  onPressed: () {

                                  },
                                  style: TextButton.styleFrom(
                                      backgroundColor: const Color(0xFF2D609B)),
                                  child: const Text(
                                    'مشاركة عبر فيسبوك',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )),
                            const SizedBox(width: 7.0),
                            Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4)),
                                child: TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                      backgroundColor: const Color(
                                          0xFF00C3F3)),
                                  child: const Text(
                                    'مشاركة عبر تويتر',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )),
                            const SizedBox(width: 7.0),
                            Container(
                              width: MediaQuery
                                  .of(context)
                                  .size
                                  .width * .07,
                              height: MediaQuery
                                  .of(context)
                                  .size
                                  .height * .05,
                              decoration: BoxDecoration(
                                  color: const Color(0xFFD8D8D8),
                                  borderRadius: BorderRadius.circular(4)),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.share,
                                    size: 12,
                                    color: Color(0xFF6F6F6F),
                                  )),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsetsDirectional.only(
                              start: 27.0),
                          child: Text(
                            dis,
                            style: const TextStyle(fontSize: 11),
                          )),
                    ],
                  );
                }))
    );
  }

//   Future share(SocialMedia platform) async {
//
//     final urls = {
//       SocialMedia.facebook : ('face book shareable link')
//       ,SocialMedia.twitter : ('twitter shareable link')
//
//     };
//     final url = urls[platform]!;
//   }
//
//   }
//
// enum SocialMedia { facebook, twitter}

}
