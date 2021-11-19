import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  'https://firebasestorage.googleapis.com/v0/b/fluttertestabc.appspot.com/o/banner.png?alt=media&token=d69d4bbf-4513-4f8d-a2b0-2a17f417ff56',
  'https://firebasestorage.googleapis.com/v0/b/fluttertestabc.appspot.com/o/0.38.png?alt=media&token=cc021550-5fd3-41ac-9b5c-bdae663fcec6',
  'https://firebasestorage.googleapis.com/v0/b/fluttertestabc.appspot.com/o/0.04.png?alt=media&token=4dc6a38e-0e92-42fe-a95a-836d6bb3b77f',
];

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(2.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(item,
                        fit: BoxFit.cover, height: 200, width: 1000),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(),
                    ),
                  ],
                )),
          ),
        ))
    .toList();

int _current = 0;
final CarouselController _controller = CarouselController();

class SearchScreen extends StatefulWidget {
  SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      border:
                          Border(bottom: BorderSide(color: Colors.black12))),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        width: 350,
                        height: 40,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Icon(Icons.search),
                            SizedBox(
                              width: 5,
                            ),
                            Text("검색하기")
                          ],
                        ),
                      ),
                      Icon(Icons.qr_code, size: 34)
                    ],
                  ),
                ),
                SizedBox(height: 1),
                Expanded(
                  child: CarouselSlider(
                    items: imageSliders,
                    carouselController: _controller,
                    options: CarouselOptions(
                        autoPlay: true,
                        enlargeCenterPage: true,
                        aspectRatio: 2.4,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _current = index;
                          });
                        }),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: imgList.asMap().entries.map((entry) {
                    return GestureDetector(
                      onTap: () => _controller.animateToPage(entry.key),
                      child: Container(
                        width: 8.0,
                        height: 8.0,
                        margin: EdgeInsets.symmetric(
                            vertical: 2.0, horizontal: 6.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                                (Theme.of(context).brightness == Brightness.dark
                                        ? Colors.white
                                        : Colors.black)
                                    .withOpacity(
                                        _current == entry.key ? 0.9 : 0.4)),
                      ),
                    );
                  }).toList(),
                ),
                SizedBox(height: 10),
                Container(
                  child: Row(
                    children: [
                      MaterialButton(
                        shape: CircleBorder(),
                        color: Colors.white,
                        padding: EdgeInsets.all(5),
                        onPressed: () {},
                        child: Icon(Icons.tag_rounded,
                            size: 30, color: Colors.black),
                      ),
                      const Text.rich(
                        TextSpan(children: <TextSpan>[
                          TextSpan(
                              text: 'SMILE',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17)),
                          TextSpan(
                              text: '\n인기 해시태그',
                              style: TextStyle(
                                  fontStyle: FontStyle.normal,
                                  fontSize: 12,
                                  color: Colors.black45)),
                        ]),
                      ),
                      SizedBox(width: 190),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        width: 70,
                        height: 30,
                        child: Center(
                          child: Text("2.3M >",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 150,
                        decoration: BoxDecoration(
                            color: Colors.black26,
                            border:
                                Border.all(color: Colors.white70, width: .5)),
                        child: FittedBox(
                          child: CachedNetworkImage(
                            fit: BoxFit.fill,
                            imageUrl:
                                "https://images.unsplash.com/photo-1535546125792-dd417e0f8f87?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1374&q=80",
                            placeholder: (context, url) => Padding(
                              padding: const EdgeInsets.all(35.0),
                              child: CircularProgressIndicator(),
                            ),
                            errorWidget: (context, url, error) =>
                                Icon(Icons.error),
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 150,
                        decoration: BoxDecoration(
                            color: Colors.black26,
                            border:
                                Border.all(color: Colors.white70, width: .5)),
                        child: FittedBox(
                          child: CachedNetworkImage(
                            fit: BoxFit.fill,
                            imageUrl:
                                "https://images.unsplash.com/photo-1599566219227-2efe0c9b7f5f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1374&q=80",
                            placeholder: (context, url) => Padding(
                              padding: const EdgeInsets.all(35.0),
                              child: CircularProgressIndicator(),
                            ),
                            errorWidget: (context, url, error) =>
                                Icon(Icons.error),
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 150,
                        decoration: BoxDecoration(
                            color: Colors.black26,
                            border:
                                Border.all(color: Colors.white70, width: .5)),
                        child: FittedBox(
                          child: CachedNetworkImage(
                            fit: BoxFit.fill,
                            imageUrl:
                                "https://images.unsplash.com/photo-1512485694743-9c9538b4e6e0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1374&q=80",
                            placeholder: (context, url) => Padding(
                              padding: const EdgeInsets.all(35.0),
                              child: CircularProgressIndicator(),
                            ),
                            errorWidget: (context, url, error) =>
                                Icon(Icons.error),
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 150,
                        decoration: BoxDecoration(
                            color: Colors.black26,
                            border:
                                Border.all(color: Colors.white70, width: .5)),
                        child: FittedBox(
                          child: CachedNetworkImage(
                            fit: BoxFit.fill,
                            imageUrl:
                                "https://firebasestorage.googleapis.com/v0/b/fluttertestabc.appspot.com/o/%E1%84%83%E1%85%A1%E1%84%8B%E1%85%AE%E1%86%AB%E1%84%85%E1%85%A9%E1%84%83%E1%85%B3.jpeg?alt=media&token=92f01f81-859a-43d9-b9bc-cc85f0cc67ac",
                            placeholder: (context, url) => Padding(
                              padding: const EdgeInsets.all(35.0),
                              child: CircularProgressIndicator(),
                            ),
                            errorWidget: (context, url, error) =>
                                Icon(Icons.error),
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 6),
                Divider(thickness: 1, color: Colors.black12),
                SizedBox(height: 4),
                Container(
                  child: Row(
                    children: [
                      MaterialButton(
                        shape: CircleBorder(),
                        color: Colors.white,
                        padding: EdgeInsets.all(5),
                        onPressed: () {},
                        child: Icon(Icons.tag_rounded,
                            size: 30, color: Colors.black),
                      ),
                      const Text.rich(
                        TextSpan(children: <TextSpan>[
                          TextSpan(
                              text: 'ANGRY',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17)),
                          TextSpan(
                              text: '\n인기 해시태그',
                              style: TextStyle(
                                  fontStyle: FontStyle.normal,
                                  fontSize: 12,
                                  color: Colors.black45)),
                        ]),
                      ),
                      SizedBox(width: 190),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        width: 70,
                        height: 30,
                        child: Center(
                          child: Text("1.2M >",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 150,
                        decoration: BoxDecoration(
                            color: Colors.black26,
                            border:
                                Border.all(color: Colors.white70, width: .5)),
                        child: FittedBox(
                          child: CachedNetworkImage(
                            fit: BoxFit.fill,
                            imageUrl:
                                "https://images.unsplash.com/photo-1621111877412-a22d07dd6f0f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1374&q=80",
                            placeholder: (context, url) => Padding(
                              padding: const EdgeInsets.all(35.0),
                              child: CircularProgressIndicator(),
                            ),
                            errorWidget: (context, url, error) =>
                                Icon(Icons.error),
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 150,
                        decoration: BoxDecoration(
                            color: Colors.black26,
                            border:
                                Border.all(color: Colors.white70, width: .5)),
                        child: FittedBox(
                          child: CachedNetworkImage(
                            fit: BoxFit.fill,
                            imageUrl:
                                "https://images.unsplash.com/photo-1529323871863-75303b5737ec?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1374&q=80",
                            placeholder: (context, url) => Padding(
                              padding: const EdgeInsets.all(35.0),
                              child: CircularProgressIndicator(),
                            ),
                            errorWidget: (context, url, error) =>
                                Icon(Icons.error),
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 150,
                        decoration: BoxDecoration(
                            color: Colors.black26,
                            border:
                                Border.all(color: Colors.white70, width: .5)),
                        child: FittedBox(
                          child: CachedNetworkImage(
                            fit: BoxFit.fill,
                            imageUrl:
                                "https://images.unsplash.com/photo-1610441995419-a673724a8224?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1664&q=80",
                            placeholder: (context, url) => Padding(
                              padding: const EdgeInsets.all(35.0),
                              child: CircularProgressIndicator(),
                            ),
                            errorWidget: (context, url, error) =>
                                Icon(Icons.error),
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 150,
                        decoration: BoxDecoration(
                            color: Colors.black26,
                            border:
                                Border.all(color: Colors.white70, width: .5)),
                        child: FittedBox(
                          child: CachedNetworkImage(
                            fit: BoxFit.fill,
                            imageUrl:
                                "https://images.unsplash.com/photo-1590420485404-f86d22b8abf8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1374&q=80",
                            placeholder: (context, url) => Padding(
                              padding: const EdgeInsets.all(35.0),
                              child: CircularProgressIndicator(),
                            ),
                            errorWidget: (context, url, error) =>
                                Icon(Icons.error),
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 6),
                Divider(thickness: 1, color: Colors.black12),
              ],
            )));
  }
}
