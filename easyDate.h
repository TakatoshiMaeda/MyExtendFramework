//
//  easyDate.h
//
//  Created by Sugamiya Yusuke on 12/03/05.
//
//
//  !!!!!!       Deprecated       !!!!!!
//  !!!!!! This class is obsolete !!!!!!
//

#import <UIKit/UIKit.h>

@interface easyDate : NSObject

+ (NSInteger)nowJpYearInteger;
+ (NSInteger)nowJpWeekdayInteger;
+ (NSString*)nowJpWeekdayStringFromDate:(NSDate*)date;
+ (NSInteger)nowJpWeekdayIntegerForSugojika;

+ (NSString*)easyDateFormatterForJp:(NSString*)dateFormat date:(NSDate*)date;
+ (NSDate*)easyDateFormatterForJp:(NSString*)dateFormat dateString:(NSString*)dateString;

@end
