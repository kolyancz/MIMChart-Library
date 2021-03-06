//
//  DefaultInfoBoxTestClass.m
//  MIMChartLib
//
//  Created by Reetu Raj on 5/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DefaultInfoBoxTestClass.h"

@implementation DefaultInfoBoxTestClass

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

#pragma mark - Table
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

-(UILabel *)createLabelWithText:(NSString *)text
{
    UILabel *a=[[UILabel alloc]initWithFrame:CGRectMake(5, 220, 500, 20)];
    [a setBackgroundColor:[UIColor clearColor]];
    [a setText:text];
    a.numberOfLines=5;
    [a setTextAlignment:UITextAlignmentCenter];
    [a setTextColor:[UIColor blackColor]];
    [a setFont:[UIFont fontWithName:@"Helvetica" size:12]];
    [a setMinimumFontSize:8];
    return a;
    
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath;
{
  
        return 250;
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView;
{
    return  1;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return @"Default Info Box View For Pie Charts";
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return  5;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    
    
    UITableViewCell *cell;// = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    //if (cell == nil) 
    //{
    cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    
    switch (indexPath.row) 
    {
        case 0:
        {
            
            //How you can set the text properties
            
            myPieChart1=[[BasicPieChart alloc]initWithFrame:CGRectMake(5, 5, 500, 240)];
            myPieChart1.delegate=self;
            myPieChart1.showInfoBox=YES;
            myPieChart1.tint=GREENTINT; //Don't give colors in delegate method now,-(NSArray *)colorsForPie:(id)pieChart , return nil.
            myPieChart1.infoBoxSmoothenCorners=YES;
            myPieChart1.fontName=[UIFont fontWithName:@"TrebuchetMS" size:13];
            myPieChart1.fontColor=[MIMColorClass colorWithComponent:@"0.8,0.2,0.2"];
            [cell.contentView addSubview:myPieChart1];
            
            
            [myPieChart1 drawPieChart];
            
            [cell.contentView addSubview:[self createLabelWithText:@"Basic Pie Chart+Default Info Box with some customization + Non user pie"]];
            
            
            
        }
            break;
        case 1:
        {
            //This shows how to set offset,
            //if you are not happy with your default position of info box.
            myPieChart2=[[BasicPieChart alloc]initWithFrame:CGRectMake(5, 5, 500, 240)];
            myPieChart2.delegate=self;
            myPieChart2.showInfoBox=YES;
            myPieChart2.infoBoxOffset=CGPointMake(0, 30);
            
            [cell.contentView addSubview:myPieChart2];
            
            
            [myPieChart2 drawPieChart];
            
            [cell.contentView addSubview:[self createLabelWithText:@"Basic Pie Chart+Default Info Box with some customization + Non user pie"]];
            
            
        }
            break;
        case 2:
        {
            //How you can set the shadow behind the color squares of info box
            
            myPieChart3=[[BasicPieChart alloc]initWithFrame:CGRectMake(5, 5, 500, 240)];
            myPieChart3.delegate=self;
            myPieChart3.showInfoBox=YES;
            myPieChart3.shadowBehindBoxes=YES;

            
            [cell.contentView addSubview:myPieChart3];
            
            
            [myPieChart3 drawPieChart];
            
            
            [cell.contentView addSubview:[self createLabelWithText:@"Basic Pie Chart+Default Info Box with some customization + Non user pie"]];
            
            
        }
            break;
        case 3:
        {
            
            //How you can set the text properties
            
            myPieChart4=[[BasicPieChart alloc]initWithFrame:CGRectMake(5, 5, 500, 240)];
            myPieChart4.delegate=self;
            myPieChart4.showInfoBox=YES;
            myPieChart4.infoBoxSmoothenCorners=YES;
            myPieChart4.fontName=[UIFont fontWithName:@"TrebuchetMS" size:15];
            myPieChart4.fontColor=[MIMColorClass colorWithComponent:@"0.2,0.2,0.5"];
            
            [cell.contentView addSubview:myPieChart4];
            
            
            [myPieChart4 drawPieChart];
            
            [cell.contentView addSubview:[self createLabelWithText:@"Basic Pie Chart+Default Info Box with some customization + Non user pie"]];
            
            
        }
            break;
        case 4:
        {
            
           
            
            
            myPieChart=[[BasicPieChart alloc]initWithFrame:CGRectMake(5, 5, 500, 240)];
            myPieChart.delegate=self;
            myPieChart.showInfoBox=YES;
            
            [cell.contentView addSubview:myPieChart];
            
            [myPieChart drawPieChart];
            
            [cell.contentView addSubview:[self createLabelWithText:@"Basic Pie Chart+Default Info Box with some customization + Non user pie"]];
            
        }
            break;
            
    }
    
    
    return cell;
    
    
}



#pragma mark - PIECHART Delegate methods

-(float)radiusForPie:(id)pieChart
{
    return 100.0;
}


-(NSArray *)colorsForPie:(id)pieChart
{
    NSArray *colorsArray;
    
    if(pieChart != myPieChart1)
    {
        
        MIMColorClass *color1=[MIMColorClass colorWithComponent:@"137,215,234"];
        MIMColorClass *color2=[MIMColorClass colorWithComponent:@"239,95,100"];
        MIMColorClass *color3=[MIMColorClass colorWithComponent:@"127,186,140"];
        MIMColorClass *color4=[MIMColorClass colorWithComponent:@"247,144,187"];
        MIMColorClass *color5=[MIMColorClass colorWithComponent:@"249,219,122"];
        
        
        
        
        colorsArray=[NSArray arrayWithObjects:color1,color5,color2,color3,color4, nil];
        
    }
//    else if(pieChart==myPieChart1)
//    {
//        MIMColorClass *color1=[MIMColorClass colorWithComponent:@"137,215,234"];
//        MIMColorClass *color2=[MIMColorClass colorWithComponent:@"239,95,100"];
//        MIMColorClass *color3=[MIMColorClass colorWithComponent:@"127,186,140"];
//        MIMColorClass *color4=[MIMColorClass colorWithComponent:@"247,144,187"];
//        MIMColorClass *color5=[MIMColorClass colorWithComponent:@"249,219,122"];
//        MIMColorClass *color6=[MIMColorClass colorWithComponent:@"144,139,39"];
//        MIMColorClass *color7=[MIMColorClass colorWithComponent:@"208,195,135"];
//        MIMColorClass *color8=[MIMColorClass colorWithComponent:@"182,119,48"];
//        MIMColorClass *color9=[MIMColorClass colorWithComponent:@"183,142,50"];
//        MIMColorClass *color10=[MIMColorClass colorWithComponent:@"99,73,56"];
//        
//        
//        colorsArray=[NSArray arrayWithObjects:color1,color5,color2,color3,color4,color6,color7,color8,color9,color10, nil];
//    }
    else
        return nil;
    
    return colorsArray;
    
}


-(NSArray *)valuesForPie:(id)pieChart
{    
    if(pieChart != myPieChart1)
        return [NSArray arrayWithObjects:@"40000",@"21000",@"24000",@"11000",@"15000",nil];
    if(pieChart==myPieChart1)
        return [NSArray arrayWithObjects:@"40000",@"21000",@"24000",@"11000",@"15000",@"60000",@"18000",@"20000",@"9000",@"12000",nil];
    
}

-(NSArray *)titlesForPie:(id)pieChart
{
    if(pieChart != myPieChart1)
        return [NSArray arrayWithObjects:@"Men",@"Women",@"Teens",@"Infants",@"Old",nil];
    
    if(pieChart == myPieChart1)
        return [NSArray arrayWithObjects:@"0-10 Yrs",@"10-20 Yrs",@"20-30 Yrs",@"30-40 Yrs",@"40-50 Yrs",@"50-60 Yrs",@"60-70 Yrs",@"70-80 Yrs",@"80-90 Yrs",@"90-100 Yrs",nil];
        
}

/*
-(NSDictionary *)infoBoxProperties:(id)pieChart
{
    if(pieChart==myPieChart1)
    {
        myPieChart1.fontName=[UIFont fontWithName:@"TrebuchetMS" size:13];
        myPieChart1.fontColor=[MIMColorClass colorWithComponent:@"0.8,0.2,0.2"];
        return [NSDictionary dictionaryWithObjects:[NSArray arrayWithObjects:<#(id), ...#>, nil] forKeys:[NSArray arrayWithObjects:@"font",@"fontColor",nil]];
        
    }
    
}
 */
- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return YES;
}

@end
