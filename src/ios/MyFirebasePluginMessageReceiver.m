@import KarteRemoteNotification;
#import "MyFirebasePluginMessageReceiver.h"

@implementation MyFirebasePluginMessageReceiver

- (bool)sendNotification:(NSDictionary *)userInfo {
  bool isHandled = false;
  // KARTE経由のプッシュ通知であるか判定
  KRTRemoteNotification *notification = [[KRTRemoteNotification alloc] initWithUserInfo:userInfo];
  if (notification) {
    isHandled = true;
    // KARTE経由のプッシュ通知
    [notification handle];
  }
  return isHandled;
}

@end
