//
//  TableViewController.m
//  NavigationProject
//
//  Created by Treinamento on 29/07/17.
//  Copyright © 2017 Treinamento. All rights reserved.
//

#import "TableViewController.h"
#import "CustomTableTableViewCell.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
      NSDictionary *dic = @{
                          @"name":@"Felipe Barbosa",
                          @"email":@"analista.barbosa@gmail.com",
                          @"street":@"Rua Alfredo Freire",
                          @"country":@"Brasil"};
    NSDictionary *dic2 = @{
                          @"name":@"David Barbosa",
                          @"email":@"teste@gmail.com",
                          @"street":@"Rua Maranguape",
                          @"country":@"Canadá"};
    
  self.array = @[dic, dic2];
    
    // Do any additional setup after loading the view.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.array.count;
}

-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    CustomTableTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier: @"customCell" forIndexPath:indexPath];
    NSDictionary *dic = self.array[indexPath.row];
    cell.nameLabel.text = dic[@"name"];
    cell.streetLabel.text = dic[@"street"];
    cell.countryLabel.text = dic[@"country"];
    cell.emailLabel.text=dic[@"email"];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
