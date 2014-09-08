//
//  ViewController.m
//  calculadora7
//
//  Created by guitarrkurt on 07/09/14.
//  Copyright (c) 2014 David G. López. All rights reserved.
//

#import "ViewController.h"


@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    _val1 = @"";
    _val2 = @"";
    _operador = @"";
    
    [self actualiza];
}



-(IBAction)numero:(id)sender{
    UIButton *boton = (UIButton *) sender;
    
    if ([_operador isEqual:@""]) {
        _val1 = [NSString stringWithFormat:@"%@%@", _val1, boton.titleLabel.text];
    }else{
        _val2 = [NSString stringWithFormat:@"%@%@", _val2, boton.titleLabel.text];
    }
    
    [self actualiza];

}
-(IBAction)operacion:(id)sender{
    UIButton *boton = (UIButton *) sender;
    _operador = boton.titleLabel.text;
    
    [self actualiza];

}
-(IBAction)igual:(id)sender{
    
    if (![_operador isEqual:@""] && ![_val1 isEqual:@""] && ![_val2 isEqual:@""]) {
        NSString *expresion = [NSString stringWithFormat:@"%@%@%@", _val1, _operador, _val2];
        
        NSNumber *res = [expresion numberByEvaluatingString];
        float floatRes = [res floatValue];
        
        
        _operador = @"";
        _val2 = @"";
        _val1 = [NSString stringWithFormat:@"%.2f", floatRes];
        [self actualiza];
    }

}
-(IBAction)clear:(id)sender{
    _val1 = @"";
    _val2 = @"";
    _operador = @"";
    
    [self actualiza];
}

-(void)actualiza{
    if ([_val1 isEqual:@""]) {
        self.labelPrincipal.text = @"0";
    }else{
        if ([_operador isEqual:@""]) {
            self.labelPrincipal.text = _val1;
        }else{
            self.labelPrincipal.text = _val2;
        }
    }
    
    if (![_operador isEqual:@""] && ![_val1 isEqual:@""]) {
        self.labelSecundario.text = [NSString stringWithFormat:@"%@ %@", _val1, _operador];
    }else{
        self.labelSecundario.text = @"";
        
    }
}
@end
