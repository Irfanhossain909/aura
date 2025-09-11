import 'package:get/get.dart';

class EmailNotificationController extends GetxController {
  RxBool newMatchesNotification = true.obs;
  RxBool newMessagesNotification = true.obs;
  RxBool profileViewsNotification = true.obs;
  RxBool likesNotification = true.obs;
  RxBool superLikesNotification = true.obs;
  RxBool boostNotification = true.obs;
  RxBool eventsNotification = false.obs;
  RxBool marketingNotification = false.obs;

  void toggleNewMatches() {
    newMatchesNotification.value = !newMatchesNotification.value;
  }

  void toggleNewMessages() {
    newMessagesNotification.value = !newMessagesNotification.value;
  }

  void toggleProfileViews() {
    profileViewsNotification.value = !profileViewsNotification.value;
  }

  void toggleLikes() {
    likesNotification.value = !likesNotification.value;
  }

  void toggleSuperLikes() {
    superLikesNotification.value = !superLikesNotification.value;
  }

  void toggleBoost() {
    boostNotification.value = !boostNotification.value;
  }

  void toggleEvents() {
    eventsNotification.value = !eventsNotification.value;
  }

  void toggleMarketing() {
    marketingNotification.value = !marketingNotification.value;
  }
}
