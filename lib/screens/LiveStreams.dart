import 'package:flutter/material.dart';

class LiveStreams extends StatefulWidget {
  LiveStreams();
  @override
  _LiveStreamsState createState() => _LiveStreamsState();
}

class _LiveStreamsState extends State<LiveStreams> {
  var formkey = new GlobalKey<FormState>();

  var fonkcat;
  bool initscrol = false;

  ScrollController _scrollController = new ScrollController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromRGBO(
          27,
          34,
          46,
          1,
        ),
        child: Column(
          children: [
            Expanded(
                child: Container(
                    color: Color.fromRGBO(
                      27,
                      34,
                      46,
                      1,
                    ),
                    child: /*widget.deals.length == 0 && emptylist == false
                  ? Center(
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation(Colors.white),
                      ),
                    )
                  :*/
                        ListView.builder(
                      key: PageStorageKey<String>('catpageList'),
                      controller: _scrollController,
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: 12,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(children: [
                          FlatButton(
                              padding: EdgeInsets.all(0.0),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Text("test"),
                                    ));
                              },
                              child: (Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3),
                                  color: Color.fromRGBO(
                                    27,
                                    34,
                                    46,
                                    1,
                                  ),
                                  border: Border.all(
                                    width: 2,
                                    color: Color.fromRGBO(167, 130, 233, 0.06),
                                  ),
                                ),
                                padding: EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 5.0),
                                margin: EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 5.0),
                                child: Row(
                                  children: <Widget>[
                                    Flexible(
                                      flex: 25,
                                      child: Container(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  10, 5, 0, 5),
                                              color: Color.fromRGBO(
                                                27,
                                                34,
                                                46,
                                                1,
                                              ),
                                              child: Text(
                                                index.toString(),
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                            Row(
                                              /* crossAxisAlignment:
                                                CrossAxisAlignment.baseline,*/
                                              children: [
                                                Flexible(
                                                  flex: 6,
                                                  child: Column(
                                                    children: [],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 16,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(3),
                                          boxShadow: [
                                            BoxShadow(
                                                color: (Colors.grey[850])!,
                                                spreadRadius: 1),
                                          ],
                                        ),
                                        child: true != null
                                            ? Image.network(
                                                "https://media.istockphoto.com/vectors/live-stream-banner-vector-id1306922705?k=20&m=1306922705&s=612x612&w=0&h=GxSiBE-KNttx0pQ6jx21IJCmkGLE21GEGCzI9BFHEDs=",
                                                fit: BoxFit.fill)
                                            : Image.asset(
                                                'assets/no-stream.png',
                                                width: 100,
                                                height: 100,
                                                fit: BoxFit.fill),
                                      ),
                                    ),
                                  ],
                                ),
                              )))
                        ]);
                      },
                    )))
          ],
        ));
  }
}
