import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tiktok_flutter/utils/tik_tok_icons_icons.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.black12))),
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.person_add_alt_1_outlined),
                  Text(
                    "만두아빠",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    icon: Icon(Icons.menu_outlined),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SettingScreen()),
                      );
                    },
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipOval(
                        child: CachedNetworkImage(
                          imageUrl:
                              "https://firebasestorage.googleapis.com/v0/b/fluttertestabc.appspot.com/o/%E1%84%83%E1%85%A1%E1%84%8B%E1%85%AE%E1%86%AB%E1%84%85%E1%85%A9%E1%84%83%E1%85%B3.jpeg?alt=media&token=92f01f81-859a-43d9-b9bc-cc85f0cc67ac",
                          height: 100.0,
                          width: 100.0,
                          placeholder: (context, url) =>
                              CircularProgressIndicator(),
                          errorWidget: (context, url, error) =>
                              Icon(Icons.error),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "@Mandoopapa",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text(
                            "232",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "팔로잉",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      Container(
                        color: Colors.black54,
                        width: 1,
                        height: 15,
                        margin: EdgeInsets.symmetric(horizontal: 15),
                      ),
                      Column(
                        children: [
                          Text(
                            "1.3k",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "팔로워",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      Container(
                        color: Colors.black54,
                        width: 1,
                        height: 15,
                        margin: EdgeInsets.symmetric(horizontal: 15),
                      ),
                      Column(
                        children: [
                          Text(
                            "12k",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "좋아요",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      new InkWell(
                        onTap: () {},
                        child: new Container(
                          width: 140,
                          height: 47,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black12)),
                          child: Center(
                            child: Text(
                              "프로필 편집",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 45,
                        height: 47,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black12)),
                        child: Center(child: Icon(Icons.bookmark_border)),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                      child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 4, 10, 0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.code_rounded),
                          SizedBox(width: 5),
                          Text("프론트엔드, iOS/안드로이드 앱 전문 블록체인 개발자",
                              style: TextStyle(fontSize: 14))
                        ]),
                  )),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 45,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(Icons.menu),
                            SizedBox(
                              height: 7,
                            ),
                            Container(
                              color: Colors.black,
                              height: 2,
                              width: 55,
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.favorite_border,
                              color: Colors.black26,
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Container(
                              color: Colors.transparent,
                              height: 2,
                              width: 55,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 130,
                          decoration: BoxDecoration(
                              color: Colors.black26,
                              border:
                                  Border.all(color: Colors.white70, width: .5)),
                          child: FittedBox(
                            child: CachedNetworkImage(
                              fit: BoxFit.fill,
                              imageUrl:
                                  "https://mandoopapa.github.io/react-portfolio/images/portfolio/port1/p1.jpg",
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
                          height: 130,
                          decoration: BoxDecoration(
                              color: Colors.black26,
                              border:
                                  Border.all(color: Colors.white70, width: .5)),
                          child: FittedBox(
                            child: CachedNetworkImage(
                              fit: BoxFit.fill,
                              imageUrl:
                                  "https://mandoopapa.github.io/react-portfolio/images/portfolio/photography/p1.jpg",
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
                          height: 130,
                          decoration: BoxDecoration(
                              color: Colors.black26,
                              border:
                                  Border.all(color: Colors.white70, width: .5)),
                          child: FittedBox(
                            child: CachedNetworkImage(
                              fit: BoxFit.fill,
                              imageUrl:
                                  "https://mandoopapa.github.io/react-portfolio/images/portfolio/adventure/p1.jpg",
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
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 130,
                          decoration: BoxDecoration(
                              color: Colors.black26,
                              border:
                                  Border.all(color: Colors.white70, width: .5)),
                          child: FittedBox(
                            child: CachedNetworkImage(
                              fit: BoxFit.fill,
                              imageUrl:
                                  "https://mandoopapa.github.io/react-portfolio/images/portfolio/github_ext/p1.jpg",
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
                          height: 130,
                          decoration: BoxDecoration(
                              color: Colors.black26,
                              border:
                                  Border.all(color: Colors.white70, width: .5)),
                          child: FittedBox(
                            child: CachedNetworkImage(
                              fit: BoxFit.fill,
                              imageUrl:
                                  "https://mandoopapa.github.io/react-portfolio/images/portfolio/gogin/p1.jpg",
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
                          height: 130,
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget SettingScreen() {
  return Scaffold(
      body: SingleChildScrollView(
    child: Column(
      children: [
        SizedBox(height: 40),
        Container(
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.black12))),
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.arrow_back_ios),
              Text(
                "설정 및 개인 정보",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Container(width: 10)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Container(
              alignment: Alignment.topLeft,
              child: Text('계정',
                  style: TextStyle(fontSize: 12, color: Colors.grey))),
        ),
        ListTile(
          leading: Icon(Icons.person_outline),
          title: Text('계정 관리'),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          leading: Icon(Icons.lock_outline),
          title: Text('개인 정보'),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          leading: Icon(Icons.security),
          title: Text('보안'),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          leading: Icon(Icons.person_search_outlined),
          title: Text('크리에이터 툴'),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          leading: Icon(Icons.account_balance_wallet_outlined),
          title: Text('지갑'),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          leading: Icon(Icons.stars_outlined),
          title: Text('라이브 구독'),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          leading: Icon(Icons.qr_code_2),
          title: Text('QR 코드'),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          leading: Icon(Icons.reply_outlined),
          title: Text('프로필 공유'),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        Divider(height: 2),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Container(
              alignment: Alignment.topLeft,
              child: Text('콘텐츠 및 활동',
                  style: TextStyle(fontSize: 12, color: Colors.grey))),
        ),
        ListTile(
          leading: Icon(Icons.notifications_outlined),
          title: Text('푸시 알림'),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          leading: Icon(Icons.explicit_outlined),
          title: Text('앱 언어'),
          trailing: Wrap(spacing: 2, children: <Widget>[
            Text('한국어(대한민국)'),
            Icon(Icons.arrow_forward_ios)
          ]),
        ),
        ListTile(
          leading: Icon(Icons.mode_night_outlined),
          title: Text('다크 모드'),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          leading: Icon(Icons.videocam_outlined),
          title: Text('콘텐츠 기본 설정'),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          leading: Icon(Icons.volume_mute_outlined),
          title: Text('광고'),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          leading: Icon(Icons.deck_outlined),
          title: Text('디지털 웰빙'),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          leading: Icon(Icons.health_and_safety_outlined),
          title: Text('세이프티 페어링'),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          leading: Icon(Icons.settings_accessibility_outlined),
          title: Text('접근성'),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        Divider(height: 2),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Container(
              alignment: Alignment.topLeft,
              child: Text('캐시 및 셀룰러 데이터',
                  style: TextStyle(fontSize: 12, color: Colors.grey))),
        ),
        ListTile(
          leading: Icon(Icons.delete_outline),
          title: Text('캐시 지우기'),
          trailing: Text('47 M'),
        ),
        ListTile(
          leading: Icon(Icons.data_saver_on_outlined),
          title: Text('데이터 절약'),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        Divider(height: 2),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Container(
              alignment: Alignment.topLeft,
              child: Text('지원',
                  style: TextStyle(fontSize: 12, color: Colors.grey))),
        ),
        ListTile(
          leading: Icon(Icons.border_color_outlined),
          title: Text('문제 신고'),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          leading: Icon(Icons.help_outline_outlined),
          title: Text('고객 지원 센터'),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          leading: Icon(Icons.health_and_safety_outlined),
          title: Text('안전 센터'),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        Divider(height: 2),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Container(
              alignment: Alignment.topLeft,
              child: Text('정보',
                  style: TextStyle(fontSize: 12, color: Colors.grey))),
        ),
        ListTile(
          leading: Icon(Icons.device_hub_outlined),
          title: Text('커뮤니티 가이드라인'),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          leading: Icon(Icons.book_outlined),
          title: Text('서비스 약관'),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          leading: Icon(Icons.task_outlined),
          title: Text('개인정보 보호정책'),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          leading: Icon(Icons.copyright_outlined),
          title: Text('저작권 정책'),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          leading: Icon(Icons.science_outlined),
          title: Text('TikTok 테스터 참여'),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        Divider(height: 2),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Container(
              alignment: Alignment.topLeft,
              child: Text('로그인',
                  style: TextStyle(fontSize: 12, color: Colors.grey))),
        ),
        ListTile(
          leading: Icon(Icons.transfer_within_a_station_outlined),
          title: Text('계정 전환'),
          trailing: Wrap(spacing: 2, children: <Widget>[
            Icon(Icons.person),
            Icon(Icons.arrow_forward_ios)
          ]),
        ),
        ListTile(
          leading: Icon(Icons.logout_outlined),
          title: Text('로그아웃'),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        Divider(height: 2),
        SizedBox(height: 70),
        Text('Made by Mandoopapa'),
        SizedBox(height: 70)
      ],
    ),
  ));
}
