import 'package:cloud_firestore/cloud_firestore.dart';

class PostModel {
 final String docid;
final  String imageURL;
final  String message;
 final String title;
 final Timestamp timestamp;
 final int likes;

  PostModel(
      {
      required  this.docid,
  required    this.imageURL,
   required   this.message,
    required  this.title,
    required  this.timestamp,
    required  this.likes});

  factory PostModel.fromJSON(Map<String, dynamic> map) {
    return PostModel(
        docid: map["docid"],
        imageURL: map["imageURL"],
        message: map["message"],
        title: map["title"],
        likes: map["likes"],
        timestamp: map["timestamp"]);
  }

  toMap() {
    Map<String, dynamic> map = Map();
    map['docid'] = docid;
    map['imageURL'] = imageURL;
    map['message'] = message;
    map['title'] = title;
    map['likes'] = likes;
    map["timestamp"] = FieldValue.serverTimestamp();
  }
}
