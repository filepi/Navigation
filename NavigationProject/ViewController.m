//
//  ViewController.m
//  NavigationProject
//
//  Created by Treinamento on 29/07/17.
//  Copyright © 2017 Treinamento. All rights reserved.
//

#import "ViewController.h"
#import "BlueViewController.h"
#import "YellowViewController.h"
#import "RedViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"segueAzul"])
    {
        BlueViewController *blueViewController = [segue destinationViewController];
        blueViewController.nome = @"Aew porra";
        
    } else if ([segue.identifier isEqualToString:@"segueAmarelo"])
    {
    }
    else
    {
        RedViewController * redPage = [segue destinationViewController];
        redPage.string = @"Lorem Ipsum Dolor";
    }
}

-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender  {
    //não navega pra tela azul
    if ([identifier isEqualToString:@"segueAzul"])
    {
        return false;
    }
    else{
        return true;
    }
}


@end
