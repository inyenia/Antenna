//
//  ViewController.m
//  MJRemoteNSLog
//
//  Created by Jesús López on 20/08/14.
//
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	NSLog(@"Loading... ViewController");
}

#pragma mark - IBAction

- (IBAction)triggerNotification:(id)sender
{
    [[NSNotificationCenter defaultCenter] postNotificationName:MJRemoteNSLogExampleNotification object:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
