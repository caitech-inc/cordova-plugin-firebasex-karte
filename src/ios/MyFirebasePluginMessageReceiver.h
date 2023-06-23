#import <Foundation/Foundation.h>

@interface MyFirebasePluginMessageReceiver : NSObject
- (bool) sendNotification:(NSDictionary *)userInfo;
@end
