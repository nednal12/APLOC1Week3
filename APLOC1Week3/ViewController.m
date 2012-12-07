//
//  ViewController.m
//  APLOC1Week3
//
//  Created by Brent Marohnic on 12/6/12.
//  Copyright (c) 2012 Brent Marohnic. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    // 4. Call the Append function with two NSStrings.
    // Capture the result and display a UIAlertView with the appended string using displayAlertWithString.
    
    [self displayAlertWithString : [self Append:@"This is the first part " secondString:@"and this is the second part."]];
    
    
    // 6. Call the Add function passing in two integer values. Capture the return of this function into a variable.
    
    int returnedFromAdd = [self Add:22 secondIntToAdd:44];
    
    // 7. Bundle the returned integer into an NSNumber and then convert it to a NSString and pass it to the DisplayAlertWithString function.
    
    // 8. Give it some text for the title. The message will read, "The number is 00". Replace the 00 with the integer passed into the function.
    
    NSNumber *number = [[NSNumber alloc] initWithInt:returnedFromAdd];
    [self displayAlertWithString:[NSString stringWithFormat:@"The number is %@", number]];
    
    // 9. Call the Compare function with two integer values.
    // If Compare returns YES, display an UIAlertView both with the input values and the result using the DisplayAlertWithString function
    
    int thisOneFirst = 22;
    int thisOneLast = 22;
    
    if ([self Compare:thisOneFirst secondIntToCompare:thisOneLast])
    {
        [self displayAlertWithString:[NSString stringWithFormat:@"%i + %i = %i", thisOneFirst, thisOneLast, [self Add:thisOneFirst secondIntToAdd:thisOneLast]]];
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// 1. Create a function called Add.
// This function will take two NSInteger or int types and return the result of an addition between these two.

-(int) Add : (NSInteger)firstIntToAdd secondIntToAdd:(NSInteger)secondIntToAdd
{
    int returnInt = firstIntToAdd + secondIntToAdd;
    return returnInt;
}

// 2. Create a BOOL function called Compare that takes two NSInteger values.
// Return YES or NO based on whether the values are equal.

-(bool) Compare : (NSInteger)firstIntToCompare secondIntToCompare:(NSInteger)secondIntToCompare
{
    
    if (firstIntToCompare == secondIntToCompare)
    {
        return YES;
    }
    else
    {
        return NO;
    }

}

// 3. Create a function called Append.
// This function will take two NSStrings and return a new NSString containing the appended strings using an NSMutableString and the Append method.

-(NSString *) Append : (NSString *)firstString secondString:(NSString *)secondString
{
    NSMutableString *combinedString = [[NSMutableString alloc] initWithString:firstString];
    
    [combinedString appendString: secondString];
    
    return combinedString;
                                
}


// 5. Create a function called DisplayAlertWithString. This function will take as a parameter an NSString.
// 5.1 Take the passed in NSString and display it in the alert view
// 5.2 Create an UIAlertView

-(void) displayAlertWithString : (NSString *)stringForDisplay
{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Created Within displayAlertWithString" message:stringForDisplay delegate:nil cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
    
    if (alertView != nil) {
        [alertView show];
    }

}

@end















