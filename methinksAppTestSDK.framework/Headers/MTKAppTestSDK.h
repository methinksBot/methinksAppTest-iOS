//
//  MTKIPAPatchEntry.h
//  IPAPatch
//
//  Created by Philip Yun on 2017/3/17.
//
//

#import <Foundation/Foundation.h>
#import "MTKNavigationViewController.h"


//#import <HockeySDK/HockeySDK.h>
//#import <AppCenter/AppCenter.h>
//#import <AppCenterCrashes/AppCenterCrashes.h>


//#define MACRO_NAME(f) #f
//#define MACRO_VALUE(f)  MACRO_NAME(f)
//#define loginAlert 1
//#define reloginAlert 2
@interface MTKAppTestSDK : NSObject 
+ (id)shared;
- (void) initializeWithProjectId:(NSString*) projectId;
- (void) triggerEvent:(NSString*) event;
- (void) makeRecordingWithTitle:(NSString*) title length:(NSInteger) durationInSec;
- (void) startRecordingWithTitle:(NSString*) title;
- (void) endRecordingWithTitle:(NSString*) title;
- (void) pauseRecording;
- (void) resumeRecording;

@end
