import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class BannerWidget extends StatefulWidget {
  const BannerWidget({super.key});

  @override
  State<BannerWidget> createState() => _BannerWidgetState();
}

class _BannerWidgetState extends State<BannerWidget> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  final List _bannerImage = [];

  getBanner() {
    return _firestore
        .collection('banner')
        .get()
        .then((QuerySnapshot querySnapshot) {
      querySnapshot.docs.forEach((result) {
        setState(() {
          _bannerImage.add(result['image']);
        });
      });
    });
  }

  @override
  void initState() {
    getBanner();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: MediaQuery.of(context).size.width,
      child: PageView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _bannerImage.length,
        itemBuilder: (context, index) {
          return Image.network(_bannerImage[index]);
        },
      ),
    );
  }
}
