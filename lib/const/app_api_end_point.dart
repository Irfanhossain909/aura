import 'package:aura/widgets/app_log/error_log.dart';
import 'package:flutter/foundation.dart';

class AppApiEndPoint {
  AppApiEndPoint._privateConstructor();
  static final AppApiEndPoint _instance = AppApiEndPoint._privateConstructor();
  static AppApiEndPoint get instance => _instance;

  //app use base
  static final String domain = _getDomain();
  final String baseUrl = "$domain/api/v1";

  ////////////Auth/////////
  final String signUp = "/users/create-user";
  final String login = "/auth/login";
  final String forgetPassword = "/auth/forgot-password";
  final String resetPassword = "/auth/reset-password";
  final String chnagePassword = "/auth/change-password";
  final String verifyOtp = "/auth/verify-otp";
  final String socialLogin = "/auth/social-login";
  final String phoneLogin = "/auth/phone-login";
  final String phoneVerify = "/auth/verify-phone";

  /////////////////base end poin///////////////////////
  final String profile = "/users/profile";
  final String post = "/posts";
  final String user = "/users/";
  final String myPostToLike = "/posts/my-liked-posts";
  final String trip = "/trips";
  final String myTrip = "/trips/my-matched";
  final String allTrip = "/trips/all-matched";
  final String populerTrip = "/trips/popular-trips";
  final String postReaction = "/post-reactions";
  final String gelary = "/gallery";
  final String chat = "/chats";
  final String chatOnline = "/chats/online";
   String disclaimer ({required String type}) => "/disclaimer/$type";


  final String sendMsg = "/messages";
  static String searchByuserTyoe(
    var page,
    var limit,
    var gender,
    var minAge,
    var maxAge,
    var interest,
  ) =>
      "/users?searchTerm=&page=$page&limit=$limit&gender=$gender&minAge=$minAge&maxAge=$maxAge&interest=$interest";
  static String allPost(var page, var limit) =>
      "/posts?page=$page&limit=$limit";
  static String message(var chatId, var page, var limit) =>
      "/messages/$chatId?page=$page&limit=$limit";
}

// Move this function outside the class
String _getDomain() {
  String liveServer = "https://api.flxbookonline.com";
  String localServer = "http://10.10.7.7:5000";
  try {
    if (kDebugMode) {
      return localServer;
    }
    return liveServer;
  } catch (e) {
    errorLog("_getDomain", e);
    return liveServer;
  }
  // return liveServer;
}
