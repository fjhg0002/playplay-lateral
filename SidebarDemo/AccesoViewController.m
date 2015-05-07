//
//  AccesoViewController.m
//  SidebarDemo
//
//  Created by Francisco José Herrera Garrido on 7/5/15.
//  Copyright (c) 2015 AppCoda. All rights reserved.
//

#import "AccesoViewController.h"

@interface AccesoViewController ()

@end

@implementation AccesoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) postNombre:(NSString*) nombre willEmail:(NSString *) email willContrasenia: (NSString *) contrasenia{
    if(nombre != nil && email != nil && contrasenia != nil){
        NSMutableString *postString = [NSMutableString stringWithString:kpostURL];
        
        [postString appendString:[NSString stringWithFormat:@"?%@=%@", knombre, nombre]];
        
        [postString appendString:[NSString stringWithFormat:@"?%@=%@", kemail, email]];
        
        [postString appendString:[NSString stringWithFormat:@"?%@=%@", kcontrasenia, contrasenia]];
        
        [postString setString:[postString stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
        
        NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:[NSURL URLWithString:postString]];
        
        postConnection = [[NSURLConnection alloc] initWithRequest:request delegate:self startImmediately:YES];
    }
}

-(IBAction)button:(id)sender{
    
    [self postNombre:tnombre.text willEmail:temail.text willContrasenia:tcontrasenia.text];
    [tnombre resignFirstResponder];
    tnombre.text = nil;
    temail.text = nil;
    tcontrasenia.text = nil;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
