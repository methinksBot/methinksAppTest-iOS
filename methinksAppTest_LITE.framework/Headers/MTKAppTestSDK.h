//
//  MTKAppTestSDK.h
//  methinks AppTest iOS
//
//  Created by methinks Technologies Inc. on 2017/3/17.
//
//

#import <Foundation/Foundation.h>
@interface MTKAppTestSDK : NSObject
/*
 Singleton instance
 */
+ (instancetype)shared;
/*
 Initailize with projectId provided by methinks
 */
- (void) initializeWithProjectId:(NSString*) projectId;
/*
 Triggering event which associated with timestamps or in-app surveys
 If the event is associated with in-app survey, need to configure in methinks dashboard.
 */
- (void) triggerEvent:(NSString*) event;

/*
 Recroding APIs only availbale in methinks App Test SDK Full version.
 */

- (void) makeRecordingWithTitle:(NSString*) title length:(NSInteger) durationInSec;
- (void) startRecordingWithTitle:(NSString*) title;
- (void) endRecordingWithTitle:(NSString*) title;
- (void) pauseRecording;
- (void) resumeRecording;

@end
