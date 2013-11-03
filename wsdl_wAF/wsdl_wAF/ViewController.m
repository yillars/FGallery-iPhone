//
//  ViewController.m
//  wsdl_wAF
//
//  Created by SERDAR YILLAR on 9/24/13.
//  Copyright (c) 2013 SERDAR YILLAR. All rights reserved.
//

#import "ViewController.h"
#import "SYSoapClient.h"

@interface ViewController()

@end

@implementation ViewController

	- ( void )viewDidLoad {
		[super viewDidLoad];
		// Do any additional setup after loading the view, typically from a nib.


		SYSoapClient *soapClient = [SYSoapClient new];

		/*[soapClient callSoapServiceWithoutParameters__functionName:@"" callback:^(id o, BOOL b) {

		}];*/

		NSMutableArray *tags = [[NSMutableArray alloc] initWithObjects:@"dsa", nil];
		NSMutableArray *vars = [[NSMutableArray alloc] initWithObjects:@"dsada", nil];

		[soapClient callSoapServiceWithParameters__functionName:@"" tags:tags vars:vars callback:^(NSDictionary *result, BOOL response) {

		}];

		[soapClient callSoapServiceWithoutParameters__functionName:@"GetContainer" callback:^(NSDictionary *result, BOOL success) {

		}];

		[soapClient callSoapServiceWithoutParameters__functionName:@"" callback:^(NSDictionary *result, BOOL response) {

		}];

	}

	- ( void )didReceiveMemoryWarning {
		[super didReceiveMemoryWarning];
		// Dispose of any resources that can be recreated.
	}

@end
