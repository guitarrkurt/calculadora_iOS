//
//  ViewController.h
//  calculadora7
//
//  Created by guitarrkurt on 07/09/14.
//  Copyright (c) 2014 David G. López. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DDMathParser.h"

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *labelPrincipal;
@property (weak, nonatomic) IBOutlet UILabel *labelSecundario;

@property (nonatomic) NSString *val1;
@property (nonatomic) NSString *val2;
@property (nonatomic) NSString *operador;


-(IBAction)numero:(id)sender;
-(IBAction)operacion:(id)sender;
-(IBAction)igual:(id)sender;
-(IBAction)clear:(id)sender;

@end
