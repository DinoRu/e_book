import 'dart:convert';
import 'dart:developer';

import 'package:book_repository/src/models/model.dart';

import 'book_repo.dart';
import 'package:http/http.dart' as http;

class ApiBookRepository implements BookRepository {
  @override
  Future getEducationBooks() async {
    try {
      final response = await http.get(Uri.parse(
          "https://www.googleapis.com/books/v1/volumes?q=education&maxResults=2"));
      if (response.statusCode == 200) {
        var resp = response.body;
        return resp;
      }
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  @override
  getFictionBooks() async {
    try {
      final response = await http.get(Uri.parse(
          "https://www.googleapis.com/books/v1/volumes?q=fiction&maxResults=40&langRestrict=en"));
      var body = response.body;
      var data = jsonDecode(body);
      Book book = Book.fromJson(data);
      return book;
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  @override
  Future getProgramingBooks() async {
    try {
      final response = await http.get(Uri.parse(
          "https://www.googleapis.com/books/v1/volumes?q=programming&maxResults=40&langRestrict=en"));
      if (response.statusCode == 200) {
        var resp = response.body;
        return resp;
      }
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  @override
  Future getSelfHelpBooks() async {
    try {
      final response = await http.get(Uri.parse(
          "https://www.googleapis.com/books/v1/volumes?q=self+help&maxResults=40&langRestrict=en"));
      if (response.statusCode == 200) {
        var resp = response.body;
        return resp;
      }
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}
