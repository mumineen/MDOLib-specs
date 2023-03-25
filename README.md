# MDOLib-specs

Podspec for "MDOLib-Apple" (Mumineen.org salaat library for Apple platforms).

Library usage:
Under normal circumstances, it should be possible to expand the xcframework once it is added to the workspace and then view the header file to see the method syntax.  However, a bug in the most recent version of Xcode (at the time of this writing) makes this not work.  Syntax completion, however, still works.

After adding the library to the workspace, the library can be imported into an Obj-C source file using an @import directive, for example:
`@import MDOLib; `

After this, it should be possible to call methods in the library.  All methods in MDOLib are static.  Below is a list of exported methods:

```
/**
 * salaatArrayForDate
 * Calculates an unrounded dictionary of salaat times as NSDates
 * @param dateIn - the desired NSDate
 * @param latIn - latitude component of the location
 * @param lonIn - longitude component of the location
 * @param altit - Altitude in meters at the desired location.
 * @return NSDictionary containing NSDates
 */
+ (NSDictionary*) salaatArrayForDate: (NSDate*) dateIn lat: (double) latIn lon: (double) lonIn altitude: (double) altit;

/**
 * roundedSalaatArrayForDate
 * Caluclates rounded salaat times to the minute, rounded up or down based upon the Islamically safer choice.
 * @param dateIn - the desired NSDate
 * @param latIn - latitude component of the location
 * @param lonIn - longitude component of the location
 * @param altit - Altitude in meters at the desired location.
 * @return NSDictionary containing NSDates
 */
+ (NSDictionary*) roundedSalaatArrayForDate: (NSDate*) dateIn lat: (double) latIn lon: (double) lonIn altitude: (double) altit;

/**
 * roundedSalaatArrayWithExtraTimesForDate
 * Caluclates rounded salaat times to the minute, rounded up or down based upon the Islamically safer choice.
 * @param dateIn - the desired NSDate
 * @param latIn - latitude component of the location
 * @param lonIn - longitude component of the location
 * @param altit - Altitude in meters at the desired location.
 * @param withPrevNL - include previous day's nisful layl and end in the returned dict
 * @param withNextSihori - include next day's sihori in the returned dict
 * @return NSDictionary containing NSDates
 */
+ (NSDictionary*) roundedSalaatArrayWithExtraTimesForDate: (NSDate*) dateIn lat: (double) latIn lon: (double) lonIn altitude: (double) altit withPreviousNL: (bool) withPrevNL withNextSihori: (bool) withNextSihori;

/**
 * getNextTimeForDate
 * Returns the next upcoming salaat time for the date.
 * @param dateIn - the desired NSDate
 * @param latIn - latitude component of the location
 * @param lonIn - longitude component of the location
 * @param altit - Altitude in meters at the desired location.
 * @return Dictionary containing the key-value pair for the upcoming time.
 */
+ (NSDictionary*) getNextTimeForDate: (NSDate*) dateIn lat: (double) latIn lon: (double) lonIn altitude: (double) altit;
    
/**
 * dateIslamicToGregorian
 * Calculates a Gregorian date from an Islamic date
 * @param islamicDateIn - The islamic date to be converted, in the format yyyy-mm-dd
 * @return NSDate - The Gregorian date represented as an NSDate
 */
+ (NSDate*) dateIslamicToGregorian: (NSString*) islamicDateIn;

/**
 * dateGregorianToIslamic
 * Calculates an Islamic date from a Gregorian date
 * @param gregDateIn - The Gregorian date to be converted, represented as an NSDate
 * @return NSString - The Islamic date, represented as a string in the format yyyy-mm-dd
 */
+ (NSString*) dateGregorianToIslamic: (NSDate*) gregDateIn;

/**
 * dateAddDaysToIslamic
 * Adds days to an Islamic date
 * @param islamicDateIn - The Islamic date, in the format yyyy-mm-dd
 * @param daysIn - The number of days to be added, can be positive or negative
 * @return NSString - The Islamic date, in the format yyyy-mm-dd
 */
+ (NSString*) dateAddDaysToIslamic: (NSString*) islamicDateIn days:(int) daysIn;
```
