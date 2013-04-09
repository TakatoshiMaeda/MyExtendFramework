//
//  easyDate.h
//
//  Created by Sugamiya Yusuke on 12/03/05.
//

#import <UIKit/UIKit.h>

@interface easyDate : NSObject

+ (NSInteger)nowJpYearInteger;
+ (NSInteger)nowJpWeekdayInteger;
+ (NSString*)nowJpWeekdayStringFromDate:(NSDate*)date;
+ (NSInteger)nowJpWeekdayIntegerForSugojika;

@end
