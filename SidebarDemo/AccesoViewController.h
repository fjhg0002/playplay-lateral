//
//  AccesoViewController.h
//  SidebarDemo
//
//  Created by Francisco José Herrera Garrido on 7/5/15.
//  Copyright (c) 2015 AppCoda. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kpostURL @"ftp://ftp.byethost15.com/tutorialTestcopia2.php"
#define knombre @"nombre"
#define kemail @"email"
#define kcontrasenia @"contrasenia"

@interface AccesoViewController : UIViewController{
IBOutlet UITextField *tnombre;
IBOutlet UITextField *temail;
IBOutlet UITextField *tcontrasenia;
NSURLConnection *postConnection;
}
- (IBAction)button:(id)sender;


@end
