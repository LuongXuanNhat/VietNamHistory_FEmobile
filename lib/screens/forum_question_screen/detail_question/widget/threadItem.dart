import 'package:flutter/material.dart';

class ThreadItem extends StatefulWidget {
  final BuildContext parentContext;
  final bool isFromThread;
  final Function threadItemAction;
  final int commentCount;
  const ThreadItem(
      {super.key,
      required this.parentContext,
      required this.isFromThread,
      required this.threadItemAction,
      required this.commentCount});
  @override
  State<StatefulWidget> createState() => _ThreadItem();
}

class _ThreadItem extends State<ThreadItem> {
  @override
  void initState() {
    super.initState();
  }

  void _updateLikeCount(bool isLikePost) async {
    // MyProfileData _newProfileData = await Utils.updateLikeCount(widget.data,widget.myData.myLikeList != null && widget.myData.myLikeList.contains(widget.data['postID']) ? true : false,widget.myData,widget.updateMyDataToMain,true);
    // setState(() {
    //   _currentMyData = _newProfileData;
    // });
    // setState(() {
    //   isLikePost ? _likeCount-- : _likeCount++;
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(2.0, 2.0, 2.0, 6),
      child: Card(
        elevation: 2.0,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              GestureDetector(
                onTap: () =>
                    widget.isFromThread ? widget.threadItemAction() : null,
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(6.0, 2.0, 10.0, 2.0),
                      child: SizedBox(
                          width: 48,
                          height: 48,
                          child: Image.network(
                              'https://scontent.fsgn5-5.fna.fbcdn.net/v/t39.30808-6/317811595_173785965330069_3486262861802797261_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeEpi9RNbZocW3uFVIm0GWDFjw7dHnRnTiuPDt0edGdOK01DJvpzNozAdcAKD7UwRzi0PxAV6OIf8ZxUXpf9LBXw&_nc_ohc=UqB6DOOZFsoAX-eVtOn&_nc_ht=scontent.fsgn5-5.fna&oh=00_AfBoYKffaeo-UvUKAjBUwscoNAW8d1Hmbw5nLIr7iaNh7A&oe=656B1A06')),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text(
                          'vuanhpham',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Text(
                            DateTime.now().toIso8601String(),
                            style: const TextStyle(
                                fontSize: 16, color: Colors.black87),
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    PopupMenuButton<int>(
                      itemBuilder: (context) => [
                        const PopupMenuItem(
                          value: 1,
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 8.0, left: 8.0),
                                child: Icon(Icons.report),
                              ),
                              Text("Report"),
                            ],
                          ),
                        ),
                      ],
                      initialValue: 1,
                      onCanceled: () {
                        print("You have canceled the menu.");
                      },
                      onSelected: (value) {
                        // showDialog(
                        //     context: widget.parentContext,
                        //     builder: (BuildContext context) => ReportPost(postUserName: widget.data['userName'],postId:widget.data['postID'],content:widget.data['postContent'],reporter: widget.myData.myName,));
                      },
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () =>
                    widget.isFromThread ? widget.threadItemAction() : null,
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(8, 10, 4, 10),
                  child: Text(
                    ('Hello my name vu'),
                    // .length > 200 ? '${widget.data['postContent'].substring(0, 132)} ...' : widget.data['postContent'],
                    style: TextStyle(
                      fontSize: 16,
                    ),
                    maxLines: 3,
                  ),
                ),
              ),
              // widget.data['postImage'] != 'NONE' ? GestureDetector(
              //     onTap: () => widget.isFromThread ? widget.threadItemAction(widget.data) : widget.threadItemAction(),
              //     child: Utils.cacheNetworkImageWithEvent(context,widget.data['postImage'],0,0)) :

              Container(),
              const Divider(
                height: 2,
                color: Colors.black,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6.0, bottom: 2.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    GestureDetector(
                      //  onTap: () => _updateLikeCount(_currentMyData.myLikeList != null && _currentMyData.myLikeList.contains(widget.data['postID']) ? true : false),
                      child: const Row(
                        children: <Widget>[
                          //  Icon(Icons.thumb_up,size: 18,color: widget.myData.myLikeList != null && widget.myData.myLikeList.contains(widget.data['postID']) ? Colors.blue[900] : Colors.black),
                          // Padding(
                          //   padding: const EdgeInsets.only(left:8.0),
                          //   child: Text('Like ( ${widget.isFromThread ? widget.data['postLikeCount'] : _likeCount} )',
                          //     style: TextStyle(fontSize: 16,
                          //         fontWeight: FontWeight.bold,
                          //         color: widget.myData.myLikeList != null && widget.myData.myLikeList.contains(widget.data['postID']) ? Colors.blue[900] : Colors.black),),

                          // ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      //  onTap: () => widget.isFromThread ? widget.threadItemAction(widget.data) : null,
                      child: Row(
                        children: <Widget>[
                          const Icon(Icons.mode_comment, size: 18),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              'Comment ( ${widget.commentCount} )',
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
