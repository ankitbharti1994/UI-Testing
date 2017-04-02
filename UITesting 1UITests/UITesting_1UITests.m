//
//  UITesting_1UITests.m
//  UITesting 1UITests
//
//  Created by Ankit Bharti on 31/03/17.
//  Copyright © 2017 KaHa. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface UITesting_1UITests : XCTestCase

@end

@implementation UITesting_1UITests

- (void)setUp {
    [super setUp];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;
    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    [[[XCUIApplication alloc] init] launch];
    
    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // Use recording to get started writing UI tests.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

/*!
    @brief  Use this method to check for pushing view controller on pressing the button
    @discussion checking for switches if it turned on then only we are pushing the view controller otherwise not so for that case we have to get the XCUIApplication object and then once turned on the switch and then press the button to jump the view controller and check after pressing the button , the title of the navigation bar if the app screen changes it means the navigation title changed from <b>Menu</b> to <b>Details</b> and apply the same thing to switch on.
 */

-(void)testForPushingViewController {
    
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [app.switches[@"1"] tap];
    [app.buttons[@"Go To Details Page"] tap];
    XCTAssertTrue([app.navigationBars.element.identifier isEqualToString:@"Menu"],@"navigation title should be Details");
}

-(void)testAppForNavigation {
    
    XCUIApplication *app = [[XCUIApplication alloc] init];
    XCUIElement *goToDetailsPageButton = app.buttons[@"Go To Details Page"];
    [app.switches[@"1"] tap];
    [app.switches[@"0"] tap];
    [goToDetailsPageButton tap];
    NSLog(@"%@",app.navigationBars.element.identifier);
    NSString *navigationTitle=[NSString stringWithFormat:@"%@",app.navigationBars.element.identifier];
    BOOL isTrue=[navigationTitle isEqualToString:@"Details"];
    XCTAssertTrue(isTrue,@"navigation title should be Menu");
}

-(void)testOnTableView {
    XCUIApplication *app=[[XCUIApplication alloc] init];
    [app.tables.cells.staticTexts[@"ankit"] tap];
    NSString *navigationTitle=app.navigationBars.element.identifier;
    BOOL isTrue=[navigationTitle isEqualToString:@"Details"];
    XCTAssertTrue(isTrue,@"naviagation title should be Menu");
    if (isTrue) {
        [app.buttons[@"Go To Previous"] tap];
        XCTAssertTrue([app.navigationBars.element.identifier isEqualToString:@"Menu"],@"Navigation title should be Details");
    }
}

@end
