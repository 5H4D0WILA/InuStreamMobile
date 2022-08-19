import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:inu_stream_ios/pages/home_page.dart';
import 'package:inu_stream_ios/pages/watch_page.dart';
import 'package:scroll_shadow_container/scroll_shadow_container.dart';

class InfoPage extends StatefulWidget {
  final String anilistID;
  final bool isScaffold;
  const InfoPage({Key? key, required this.anilistID, this.isScaffold = false})
      : super(key: key);

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  bool doneLoading = false;
  @override
  void initState() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff16151A),
      body: Container(
        color: Color(0xff16151A),
        child: Stack(
          children: [
            FutureBuilder<http.Response>(
              future: http.get(Uri.parse(
                  'https://consumet-api.herokuapp.com/meta/anilist/info/${widget.anilistID}?provider=zoro')),
              builder: (context, snapshot) {
                switch (snapshot.connectionState) {
                  case ConnectionState.waiting:
                    return CustomScrollView(
                      slivers: [
                        SliverToBoxAdapter(
                          child: Stack(
                            children: [
                              Hero(
                                tag: 'anime_bg',
                                child: Container(
                                  height: 560.0,
                                  width: double.infinity,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: const BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.vertical(
                                      bottom: Radius.circular(40.0),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 560.0,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xff16151A),
                                      Color(0xff16151A).withOpacity(0.3),
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                  ),
                                  borderRadius: BorderRadius.vertical(
                                    bottom: Radius.circular(40.0),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 100.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 20.0,
                                        width: 120.0,
                                        decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 6.0,
                                      ),
                                      Container(
                                        height: 24.0,
                                        width: 200.0,
                                        decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 14.0,
                                      ),
                                      Container(
                                        height: 24.0,
                                        width: 260.0,
                                        decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 14.0,
                                      ),
                                      Container(
                                        height: 20.0,
                                        width: 220.0,
                                        decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 30.0,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 20.0,
                                            width: 280.0,
                                            decoration: BoxDecoration(
                                              color: Colors.grey,
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 14.0,
                                          ),
                                          Container(
                                            height: 20.0,
                                            width: 280.0,
                                            decoration: BoxDecoration(
                                              color: Colors.grey,
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 14.0,
                                          ),
                                          Container(
                                            height: 20.0,
                                            width: 280.0,
                                            decoration: BoxDecoration(
                                              color: Colors.grey,
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 14.0,
                                          ),
                                          Container(
                                            height: 20.0,
                                            width: 180.0,
                                            decoration: BoxDecoration(
                                              color: Colors.grey,
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SliverToBoxAdapter(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 14.0, horizontal: 26.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 20.0,
                                      width: 180.0,
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 6.0,
                                    ),
                                    Container(
                                      height: 20.0,
                                      width: 140.0,
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                  ],
                                ),
                                CircleAvatar(
                                  radius: 24.0,
                                  backgroundColor: Colors.black,
                                  child: Icon(
                                    FontAwesomeIcons.plus,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  default:
                    if (snapshot.hasData) {
                      var json = jsonDecode(snapshot.data!.body);
                      return CustomScrollView(
                        slivers: [
                          SliverToBoxAdapter(
                            child: Stack(
                              children: [
                                Hero(
                                  tag: 'anime_bg',
                                  child: Container(
                                    height: 560.0,
                                    width: double.infinity,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: const BoxDecoration(
                                      color: Colors.deepPurple,
                                      borderRadius: BorderRadius.vertical(
                                        bottom: Radius.circular(40.0),
                                      ),
                                    ),
                                    child: Image(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(json['image'])),
                                  ),
                                ),
                                Container(
                                  height: 560.0,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Color(0xff16151A),
                                        Color(0xff16151A).withOpacity(0.3),
                                      ],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                    ),
                                    borderRadius: BorderRadius.vertical(
                                      bottom: Radius.circular(40.0),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 100.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          json['duration'].toString() +
                                              ' min / Episode',
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Text(
                                          json['title']['english'],
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 2,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 32.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          json['title']['native'],
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 2,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 26.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 14.0,
                                        ),
                                        RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'Episodes: ',
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              TextSpan(
                                                text: json['episodes']
                                                    .length
                                                    .toString(),
                                                style: const TextStyle(
                                                  color: Color(0xffDC1623),
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              TextSpan(
                                                text: ' - Status: ',
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              TextSpan(
                                                text: json['status'],
                                                style: const TextStyle(
                                                  color: Color(0xffDC1623),
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: double.infinity,
                                          height: 250.0,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20.0, vertical: 30.0),
                                          child: RichText(
                                            text: TextSpan(
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.w400,
                                              ),
                                              children: json['description']
                                                  .replaceAll('\n', '')
                                                  .toString()
                                                  .replaceAll('<br>', '\n')
                                                  .split('<i>')
                                                  .map((e) {
                                                if (e.contains('</i>')) {
                                                  return TextSpan(
                                                    children: e
                                                        .split('</i>')
                                                        .asMap()
                                                        .entries
                                                        .map(
                                                          (i) => i.key == 0
                                                              ? TextSpan(
                                                                  text: i.value,
                                                                  style: TextStyle(
                                                                      fontStyle:
                                                                          FontStyle
                                                                              .italic,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold))
                                                              : TextSpan(
                                                                  text: i.value,
                                                                  style:
                                                                      TextStyle(
                                                                    fontStyle:
                                                                        FontStyle
                                                                            .normal,
                                                                  ),
                                                                ),
                                                        )
                                                        .toList(),
                                                  );
                                                } else {
                                                  return TextSpan(text: e);
                                                }
                                              }).toList(),
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SliverToBoxAdapter(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 14.0, horizontal: 26.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Rating: ${json['rating'] / 10} / 10',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 6.0,
                                      ),
                                      Text(
                                        'Released: ${json['releaseDate']}',
                                        style: TextStyle(
                                          color: Color(0xff999999),
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  CircleAvatar(
                                    radius: 24.0,
                                    backgroundColor: Colors.black,
                                    child: Icon(
                                      FontAwesomeIcons.plus,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SliverToBoxAdapter(
                            child: EpisodeList(
                              json: json,
                            ),
                          )
                        ],
                      );
                    } else {
                      return CustomScrollView(
                        slivers: [
                          SliverToBoxAdapter(
                            child: Stack(
                              children: [
                                Hero(
                                  tag: 'anime_bg',
                                  child: Container(
                                    height: 560.0,
                                    width: double.infinity,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: const BoxDecoration(
                                      color: Colors.deepPurple,
                                      borderRadius: BorderRadius.vertical(
                                        bottom: Radius.circular(40.0),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 560.0,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Color(0xff16151A),
                                        Color(0xff16151A).withOpacity(0.3),
                                      ],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                    ),
                                    borderRadius: BorderRadius.vertical(
                                      bottom: Radius.circular(40.0),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 100.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          '0 min / Episode',
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Text(
                                          'Anime Title English',
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 2,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 32.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          'Anime Title Native',
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 2,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 26.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 14.0,
                                        ),
                                        RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'Episodes: ',
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              TextSpan(
                                                text: '0',
                                                style: const TextStyle(
                                                  color: Color(0xffDC1623),
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              TextSpan(
                                                text: ' - Status: ',
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              TextSpan(
                                                text: 'STATUS',
                                                style: const TextStyle(
                                                  color: Color(0xffDC1623),
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: double.infinity,
                                          height: 250.0,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20.0, vertical: 30.0),
                                          child: Text(
                                            'Anime Description',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w400,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SliverToBoxAdapter(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 14.0, horizontal: 26.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Rating: 10 / 10',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 6.0,
                                      ),
                                      Text(
                                        'Released: 2020',
                                        style: TextStyle(
                                          color: Color(0xff999999),
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  CircleAvatar(
                                    radius: 24.0,
                                    backgroundColor: Colors.black,
                                    child: Icon(
                                      FontAwesomeIcons.plus,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    }
                }
              },
            ),
            Positioned(
              top: 60.0,
              left: 20.0,
              child: GestureDetector(
                onTap: () {
                  if (widget.isScaffold) {
                    Get.offAll(
                      () => HomePage(),
                      transition: Transition.leftToRight,
                    );
                  } else {
                    Get.back();
                  }
                },
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: Icon(
                    FontAwesomeIcons.chevronLeft,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class EpisodeList extends StatefulWidget {
  dynamic json;
  EpisodeList({Key? key, required this.json}) : super(key: key);

  @override
  State<EpisodeList> createState() => _EpisodeListState();
}

class _EpisodeListState extends State<EpisodeList> {
  late TextEditingController _textEditingController;
  int episodeNumber = -1;

  @override
  void initState() {
    _textEditingController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: 26.0,
            right: 26.0,
          ),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Episodes',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  width: 140.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: TextField(
                      textAlignVertical: TextAlignVertical.center,
                      controller: _textEditingController,
                      keyboardType: const TextInputType.numberWithOptions(
                          signed: true, decimal: true),
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      decoration: InputDecoration.collapsed(
                        hintText: 'Number...',
                        hintStyle:
                            TextStyle(color: Colors.white.withOpacity(0.7)),
                        border: InputBorder.none,
                      ),
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      onChanged: (value) {
                        setState(() {
                          if (value == '' ||
                              value == '0' ||
                              int.parse(value) >
                                  widget.json['episodes'].length) {
                            episodeNumber = -1;
                            _textEditingController.clear();
                          } else {
                            episodeNumber = int.parse(value);
                          }
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: 600.0,
          padding: const EdgeInsets.symmetric(
            horizontal: 26.0,
          ),
          alignment: Alignment.topCenter,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(vertical: 20),
            itemCount: episodeNumber == -1 ? widget.json['episodes'].length : 1,
            itemBuilder: ((context, index) {
              return Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(
                        () => WatchPage(
                          episodeID: widget.json['episodes'][index +
                                  (episodeNumber != -1 ? episodeNumber - 1 : 0)]
                              ['id'],
                          json: widget.json,
                          episodeNumber: index +
                              (episodeNumber != -1 ? episodeNumber - 1 : 0),
                        ),
                      );
                    },
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: 150.0,
                              height: 150 / 16 * 9,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  12.0,
                                ),
                                color: Colors.black,
                              ),
                              clipBehavior: Clip.antiAlias,
                              child: Image(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(widget.json['episodes'][
                                          index +
                                              (episodeNumber != -1
                                                  ? episodeNumber - 1
                                                  : 0)]['image'] ??
                                      '')),
                            ),
                            Container(
                              width: 150.0,
                              height: 150 / 16 * 9,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    12.0,
                                  ),
                                  gradient: const LinearGradient(
                                    colors: [
                                      Colors.black,
                                      Colors.transparent,
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                  )),
                              clipBehavior: Clip.antiAlias,
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 14.0,
                        ),
                        SizedBox(
                          height: 150 / 16 * 9,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 160.0,
                                child: Text(
                                  widget.json['episodes'][index +
                                          (episodeNumber != -1
                                              ? episodeNumber - 1
                                              : 0)]['title'] ??
                                      widget.json['title']['english'],
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0,
                                  ),
                                ),
                              ),
                              Text(
                                'Episode ${index + (episodeNumber != -1 ? episodeNumber : 1)}',
                                style: TextStyle(
                                  color: Color(0xff999999),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                ],
              );
            }),
          ),
        ),
      ],
    );
  }
}