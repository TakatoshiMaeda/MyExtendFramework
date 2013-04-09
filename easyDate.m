//
//  easyDate.m
//
//  Created by Sugamiya Yusuke on 12/03/05.
//
//
//  !!!!!!       Deprecated       !!!!!!
//  !!!!!! This class is obsolete !!!!!!
//

#import "easyDate.h"
#import "NSDate+utilsForJpTimezone.h"

@implementation easyDate

+ (NSInteger)nowJpYearInteger
{
    return [NSDate nowYearInteger];
}

+ (NSInteger)nowJpWeekdayInteger
{
    return [NSDate nowWeekdayInteger];
}

+ (NSString*)nowJpWeekdayStringFromDate:(NSDate*)date
{
    NSLocale*   jpLocale = [[[NSLocale alloc] initWithLocaleIdentifier:jpLocaleStr] autorelease];
    NSTimeZone* jpTimeZone = [NSTimeZone timeZoneWithName:jpTimeZoneStr];
    NSCalendar* calendar = [[[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar] autorelease];
    [calendar setLocale:jpLocale];
    [calendar setTimeZone:jpTimeZone];
    
    NSInteger unitFlags = NSWeekdayCalendarUnit;
    NSDateComponents* weekDayComponents = [calendar components:unitFlags fromDate:date];
    
    NSInteger weekNum = [weekDayComponents weekday]-1;
    NSDateFormatter* f = [[NSDateFormatter alloc] init];
    [f setLocale:jpLocale];
    [f setTimeZone:jpTimeZone];
    NSString* weekday = [[f shortWeekdaySymbols] objectAtIndex:weekNum];
    
    jpLocale = nil, jpTimeZone = nil, date = nil, weekDayComponents = nil;
    
    return weekday;
}

+ (NSInteger)nowJpWeekdayIntegerForSugojika
{
    NSInteger i = [self nowJpWeekdayInteger];
    i--; if (i == 0) i = 7;
    return i;
}

+ (NSString*)easyDateFormatterForJp:(NSString*)dateFormat date:(NSDate*)date
{
    if (!date) date = [NSDate date];
    
    return [date stringFromDateFormat:dateFormat];
}

+ (NSDate*)easyDateFormatterForJp:(NSString*)dateFormat dateString:(NSString*)dateString
{
    return [NSDate dateFromDateString:dateString dateFormat:dateFormat];
}

@end
