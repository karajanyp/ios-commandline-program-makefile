XCODE_BASE=/Users/admin/Downloads/Xcode.app/Contents
SIMULATOR_BASE=$(XCODE_BASE)/Developer/Platforms/iPhoneOS.platform
FRAMEWORKS=$(SIMULATOR_BASE)/Developer/SDKs/iPhoneOS.sdk/System/Library/Frameworks/
INCLUDES=$(SIMULATOR_BASE)/Developer/SDKs/iPhoneOS.sdk/usr/include/

window: main.m
	clang -I$(INCLUDES) -F$(FRAMEWORKS) -o window main.m -framework Foundation -framework UIKit -arch arm64 -miphoneos-version-min=10.0 -isysroot /Users/admin/Downloads/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk