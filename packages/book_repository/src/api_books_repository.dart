import 'dart:developer';

import 'book_repo.dart';
import 'package:http/http.dart' as http;

class ApiBookRepository implements BookRepository {

  @override
  Future getEducationBooks() async {
    try {
      final response = await http.get(
            Uri.parse("https://www.googleapis.com/books/v1/volumes?q=education&maxResults=40")
          );
      if(response.statusCode == 200) {
        var resp = response.body;
        return resp;
      }
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  @override
  Future getFictionBooks() async {
    try {
      final response = await http.get(
        Uri.parse("https://www.googleapis.com/books/v1/volumes?q=fiction&maxResults=40&langRestrict=en")
      );
      if(response.statusCode == 200) {
        var resp = response.body;
        return resp;
      }
    } catch(e) {
      log(e.toString());
      rethrow;
    }
  }

  @override
  Future getProgramingBooks() async {
    try {
      final response = await http.get(Uri.parse(
        "https://www.googleapis.com/books/v1/volumes?q=programming&maxResults=40&langRestrict=en"
      ));
      if(response.statusCode == 200) {
        var resp = response.body;
        return resp;
      }
    } catch(e) {
      log(e.toString());
      rethrow;
    }
  }

  @override
  Future getSelfHelpBooks() async {
    try {
      final response = await http.get(Uri.parse(
        "https://www.googleapis.com/books/v1/volumes?q=self+help&maxResults=40&langRestrict=en"
      ));
      if(response.statusCode == 200) {
        var resp = response.body;
        return resp;
      }
    } catch(e) {
      log(e.toString());
      rethrow;
    }
  }

}