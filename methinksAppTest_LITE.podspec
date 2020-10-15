#
#  Be sure to run `pod spec lint methinksSDK-iOS.podspec.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name             = 'methinksAppTest_LITE'
  s.version          = "0.1.3"
  s.summary          = 'methinks App Test iOS SDK for internal testing or unmoderated product test.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = "methinks AppTest SDK LITE is for in-depth app usability testing SDK for apps in pre-launch period."

  s.homepage         = 'https://www.methinks.io'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'methinks Technologies Inc.' => 'hi@methinks.io' }
  s.source           = { :git => 'https://github.com/methinksBot/methinksAppTest-iOS.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  s.platform         = "ios"
  s.ios.deployment_target = '10.0'
  s.vendored_frameworks = 'methinksAppTest_LITE.framework'
  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
    'GCC_PREPROCESSOR_DEFINITIONS' =>'$(inherited) MTK_PATCHER=1 MTK_AT_SDK=1 MTK_PATCHER_LITE=1' 
  }
  s.xcconfig = {
    'ENABLE_BITCODE' => 'NO'
  }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
