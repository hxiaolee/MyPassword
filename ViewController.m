//
//  ViewController.m
//  MyPassword
//
//  Created by hxiaolee on 16/4/24.
//  Copyright © 2016年 hxiaolee. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
/*
-(NSArray *app){
    if(!_app)
}*/

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.text=[[UITextView alloc]initWithFrame:CGRectMake(20, 25, 200, 30)];
    [self.view addSubview:_text];
    self.text.backgroundColor = [UIColor greenColor];
    self.text.textColor = [UIColor blackColor];
    self.text.font = [UIFont systemFontOfSize:20];
    self.text.keyboardAppearance = UIKeyboardAppearanceDefault;
    
    self.button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.button.frame = CGRectMake(245, 25, 30, 30);
    [self.button setTitle:@"加密" forState:UIControlStateNormal];
    [self.view addSubview:_button];
    self.button.backgroundColor = [UIColor yellowColor];
  //  [self.button addTarget:self action:@selector(shuzi:) forControlEvents:UIControlEventTouchUpInside];
    [self.button addTarget:self action:@selector(enquript:) forControlEvents:UIControlEventTouchUpInside];
    
    
    self.button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.button.frame = CGRectMake(295, 25, 30, 30);
    [self.button setTitle:@"添加" forState:UIControlStateNormal];
    [self.view addSubview:_button];
    self.button.backgroundColor = [UIColor yellowColor];
    //  [self.button addTarget:self action:@selector(shuzi:) forControlEvents:UIControlEventTouchUpInside];
    [self.button addTarget:self action:@selector(add:) forControlEvents:UIControlEventTouchUpInside];
    
    //nsstring *path = [[NSBundle mainBundle]pathForResource:@"buttonGroup.xib" ofType:nil];
    //self.lable.text=@"view load"    ;
    /*
    self.lable =[[UILabel alloc]initWithFrame:CGRectMake(25, 60, 200, 30)];
    [self.view addSubview:_lable];
    self.lable.backgroundColor =[UIColor greenColor];
    self.lable.textColor =[UIColor blackColor];
    self.lable.font = [UIFont systemFontOfSize:20];
    self.lable.numberOfLines = 1;
    self.lable.adjustsFontSizeToFitWidth = YES;
*/
    self.info1=[[UITextView alloc]initWithFrame:CGRectMake(20, 60, 120, 30)];
    [self.view addSubview:_info1];
    self.info1.backgroundColor = [UIColor greenColor];
    self.info1.textColor = [UIColor blackColor];
    self.info1.font = [UIFont systemFontOfSize:20];
    self.info1.keyboardAppearance = UIKeyboardAppearanceDefault;
    
    self.lable1 =[[UILabel alloc]initWithFrame:CGRectMake(150, 60, 200, 30)];
    [self.view addSubview:_lable1];
    self.lable1.backgroundColor =[UIColor greenColor];
    self.lable1.textColor =[UIColor blackColor];
    self.lable1.font = [UIFont systemFontOfSize:20];
    self.lable1.numberOfLines = 1;
    self.lable1.adjustsFontSizeToFitWidth = YES;
 
    self.info2=[[UITextView alloc]initWithFrame:CGRectMake(20, 95, 120, 30)];
    [self.view addSubview:_info2];
    self.info2.backgroundColor = [UIColor greenColor];
    self.info2.textColor = [UIColor blackColor];
    self.info2.font = [UIFont systemFontOfSize:20];
    self.info2.keyboardAppearance = UIKeyboardAppearanceDefault;
    
    self.lable2 =[[UILabel alloc]initWithFrame:CGRectMake(150, 95, 200, 30)];
    [self.view addSubview:_lable2];
    self.lable2.backgroundColor =[UIColor greenColor];
    self.lable2.textColor =[UIColor blackColor];
    self.lable2.font = [UIFont systemFontOfSize:20];
    self.lable2.numberOfLines = 1;
    self.lable2.adjustsFontSizeToFitWidth = YES;
 
    self.info3=[[UITextView alloc]initWithFrame:CGRectMake(20, 130, 120, 30)];
    [self.view addSubview:_info3];
    self.info3.backgroundColor = [UIColor greenColor];
    self.info3.textColor = [UIColor blackColor];
    self.info3.font = [UIFont systemFontOfSize:20];
    self.info3.keyboardAppearance = UIKeyboardAppearanceDefault;
    
    self.lable3 =[[UILabel alloc]initWithFrame:CGRectMake(150, 130, 200, 30)];
    [self.view addSubview:_lable3];
    self.lable3.backgroundColor =[UIColor greenColor];
    self.lable3.textColor =[UIColor blackColor];
    self.lable3.font = [UIFont systemFontOfSize:20];
    self.lable3.numberOfLines = 2;
    self.lable3.adjustsFontSizeToFitWidth = YES;
 
    self.info4=[[UITextView alloc]initWithFrame:CGRectMake(20, 165, 120, 30)];
    [self.view addSubview:_info4];
    self.info4.backgroundColor = [UIColor greenColor];
    self.info4.textColor = [UIColor blackColor];
    self.info4.font = [UIFont systemFontOfSize:20];
    self.info4.keyboardAppearance = UIKeyboardAppearanceDefault;
    
    self.lable4 =[[UILabel alloc]initWithFrame:CGRectMake(150, 165, 200, 30)];
    [self.view addSubview:_lable4];
    self.lable4.backgroundColor =[UIColor greenColor];
    self.lable4.textColor =[UIColor blackColor];
    self.lable4.font = [UIFont systemFontOfSize:20];
    self.lable4.numberOfLines = 2;
    self.lable4.adjustsFontSizeToFitWidth = YES;
 
    self.info5=[[UITextView alloc]initWithFrame:CGRectMake(20, 200, 120, 30)];
    [self.view addSubview:_info5];
    self.info5.backgroundColor = [UIColor greenColor];
    self.info5.textColor = [UIColor blackColor];
    self.info5.font = [UIFont systemFontOfSize:20];
    self.info5.keyboardAppearance = UIKeyboardAppearanceDefault;
    
    self.lable5 =[[UILabel alloc]initWithFrame:CGRectMake(150, 200, 200, 30)];
    [self.view addSubview:_lable5];
    self.lable5.backgroundColor =[UIColor greenColor];
    self.lable5.textColor =[UIColor blackColor];
    self.lable5.font = [UIFont systemFontOfSize:20];
    self.lable5.numberOfLines = 1;
    self.lable5.adjustsFontSizeToFitWidth = YES;
 
    self.info6=[[UITextView alloc]initWithFrame:CGRectMake(20, 235, 120, 30)];
    [self.view addSubview:_info6];
    self.info6.backgroundColor = [UIColor greenColor];
    self.info6.textColor = [UIColor blackColor];
    self.info6.font = [UIFont systemFontOfSize:20];
    self.info6.keyboardAppearance = UIKeyboardAppearanceDefault;
    
    self.lable6 =[[UILabel alloc]initWithFrame:CGRectMake(150, 235, 200, 30)];
    [self.view addSubview:_lable6];
    self.lable6.backgroundColor =[UIColor greenColor];
    self.lable6.textColor =[UIColor blackColor];
    self.lable6.font = [UIFont systemFontOfSize:20];
    self.lable6.numberOfLines = 1;
    self.lable6.adjustsFontSizeToFitWidth = YES;
 
    self.info7=[[UITextView alloc]initWithFrame:CGRectMake(20, 270, 120, 30)];
    [self.view addSubview:_info7];
    self.info7.backgroundColor = [UIColor greenColor];
    self.info7.textColor = [UIColor blackColor];
    self.info7.font = [UIFont systemFontOfSize:20];
    self.info7.keyboardAppearance = UIKeyboardAppearanceDefault;
    
    self.lable7 =[[UILabel alloc]initWithFrame:CGRectMake(150, 270, 200, 30)];
    [self.view addSubview:_lable7];
    self.lable7.backgroundColor =[UIColor greenColor];
    self.lable7.textColor =[UIColor blackColor];
    self.lable7.font = [UIFont systemFontOfSize:20];
    self.lable7.numberOfLines = 1;
    self.lable7.adjustsFontSizeToFitWidth = YES;
    
    self.info8=[[UITextView alloc]initWithFrame:CGRectMake(20, 305, 120, 30)];
    [self.view addSubview:_info8];
    self.info8.backgroundColor = [UIColor greenColor];
    self.info8.textColor = [UIColor blackColor];
    self.info8.font = [UIFont systemFontOfSize:20];
    self.info8.keyboardAppearance = UIKeyboardAppearanceDefault;
    
    self.lable8 =[[UILabel alloc]initWithFrame:CGRectMake(150, 305, 200, 30)];
    [self.view addSubview:_lable8];
    self.lable8.backgroundColor =[UIColor greenColor];
    self.lable8.textColor =[UIColor blackColor];
    self.lable8.font = [UIFont systemFontOfSize:20];
    self.lable8.numberOfLines = 1;
    self.lable8.adjustsFontSizeToFitWidth = YES;

    self.info9=[[UITextView alloc]initWithFrame:CGRectMake(20, 340, 120, 30)];
    [self.view addSubview:_info9];
    self.info9.backgroundColor = [UIColor greenColor];
    self.info9.textColor = [UIColor blackColor];
    self.info9.font = [UIFont systemFontOfSize:20];
    self.info9.keyboardAppearance = UIKeyboardAppearanceDefault;
    
    self.lable9 =[[UILabel alloc]initWithFrame:CGRectMake(150, 340, 200, 30)];
    [self.view addSubview:_lable9];
    self.lable9.backgroundColor =[UIColor greenColor];
    self.lable9.textColor =[UIColor blackColor];
    self.lable9.font = [UIFont systemFontOfSize:20];
    self.lable9.numberOfLines = 1;
    self.lable9.adjustsFontSizeToFitWidth = YES;
    
    self.info10=[[UITextView alloc]initWithFrame:CGRectMake(20, 375, 120, 30)];
    [self.view addSubview:_info10];
    self.info10.backgroundColor = [UIColor greenColor];
    self.info10.textColor = [UIColor blackColor];
    self.info10.font = [UIFont systemFontOfSize:20];
    self.info10.keyboardAppearance = UIKeyboardAppearanceDefault;
    
    self.lable10 =[[UILabel alloc]initWithFrame:CGRectMake(150, 375, 200, 30)];
    [self.view addSubview:_lable10];
    self.lable10.backgroundColor =[UIColor greenColor];
    self.lable10.textColor =[UIColor blackColor];
    self.lable10.font = [UIFont systemFontOfSize:20];
    self.lable10.numberOfLines = 1;
    self.lable10.adjustsFontSizeToFitWidth = YES;
    
    self.info11=[[UITextView alloc]initWithFrame:CGRectMake(20, 410, 120, 30)];
    [self.view addSubview:_info11];
    self.info11.backgroundColor = [UIColor greenColor];
    self.info11.textColor = [UIColor blackColor];
    self.info11.font = [UIFont systemFontOfSize:20];
    self.info11.keyboardAppearance = UIKeyboardAppearanceDefault;
    
    self.lable11 =[[UILabel alloc]initWithFrame:CGRectMake(150, 410, 200, 30)];
    [self.view addSubview:_lable11];
    self.lable11.backgroundColor =[UIColor greenColor];
    self.lable11.textColor =[UIColor blackColor];
    self.lable11.font = [UIFont systemFontOfSize:20];
    self.lable11.numberOfLines = 1;
    self.lable11.adjustsFontSizeToFitWidth = YES;
    
    self.info12=[[UITextView alloc]initWithFrame:CGRectMake(20, 445, 120, 30)];
    [self.view addSubview:_info12];
    self.info12.backgroundColor = [UIColor greenColor];
    self.info12.textColor = [UIColor blackColor];
    self.info12.font = [UIFont systemFontOfSize:20];
    self.info12.keyboardAppearance = UIKeyboardAppearanceDefault;
    
    self.lable12 =[[UILabel alloc]initWithFrame:CGRectMake(150, 445, 200, 30)];
    [self.view addSubview:_lable12];
    self.lable12.backgroundColor =[UIColor greenColor];
    self.lable12.textColor =[UIColor blackColor];
    self.lable12.font = [UIFont systemFontOfSize:20];
    self.lable12.numberOfLines = 1;
    self.lable12.adjustsFontSizeToFitWidth = YES;
    
    self.info13=[[UITextView alloc]initWithFrame:CGRectMake(20, 480, 120, 30)];
    [self.view addSubview:_info13];
    self.info13.backgroundColor = [UIColor greenColor];
    self.info13.textColor = [UIColor blackColor];
    self.info13.font = [UIFont systemFontOfSize:20];
    self.info13.keyboardAppearance = UIKeyboardAppearanceDefault;
    
    self.lable13 =[[UILabel alloc]initWithFrame:CGRectMake(150, 480, 200, 30)];
    [self.view addSubview:_lable13];
    self.lable13.backgroundColor =[UIColor greenColor];
    self.lable13.textColor =[UIColor blackColor];
    self.lable13.font = [UIFont systemFontOfSize:20];
    self.lable13.numberOfLines = 1;
    self.lable13.adjustsFontSizeToFitWidth = YES;
    
    self.info14=[[UITextView alloc]initWithFrame:CGRectMake(20, 515, 120, 30)];
    [self.view addSubview:_info14];
    self.info14.backgroundColor = [UIColor greenColor];
    self.info14.textColor = [UIColor blackColor];
    self.info14.font = [UIFont systemFontOfSize:20];
    self.info14.keyboardAppearance = UIKeyboardAppearanceDefault;
    
    self.lable14 =[[UILabel alloc]initWithFrame:CGRectMake(150, 515, 200, 30)];
    [self.view addSubview:_lable14];
    self.lable14.backgroundColor =[UIColor greenColor];
    self.lable14.textColor =[UIColor blackColor];
    self.lable14.font = [UIFont systemFontOfSize:20];
    self.lable14.numberOfLines = 1;
    self.lable14.adjustsFontSizeToFitWidth = YES;
    
    self.info15=[[UITextView alloc]initWithFrame:CGRectMake(20, 550, 120, 30)];
    [self.view addSubview:_info15];
    self.info15.backgroundColor = [UIColor greenColor];
    self.info15.textColor = [UIColor blackColor];
    self.info15.font = [UIFont systemFontOfSize:20];
    self.info15.keyboardAppearance = UIKeyboardAppearanceDefault;
    
    self.lable15 =[[UILabel alloc]initWithFrame:CGRectMake(150, 550, 200, 30)];
    [self.view addSubview:_lable15];
    self.lable15.backgroundColor =[UIColor greenColor];
    self.lable15.textColor =[UIColor blackColor];
    self.lable15.font = [UIFont systemFontOfSize:20];
    self.lable15.numberOfLines = 1;
    self.lable15.adjustsFontSizeToFitWidth = YES;
}


- (void)add:(id)sender
{
    self.lable.text = @"fuck";              //保存输入的数值
    NSLog(@"self.num1  is  d");
    /*
    UIAlertView *alert  =[[UIAlertView alloc]initWithTitle:@"提示" message:@"你点击了添加按钮" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil];
    [alert show];
    
    CGRect frame = CGRectMake(25, 90, 60,30);
    [self.view addSubview:_text];
    self.text.backgroundColor = [UIColor greenColor];
    self.text.textColor = [UIColor blackColor];
    self.text.font = [UIFont systemFontOfSize:20];
    self.text.keyboardAppearance = UIKeyboardAppearanceDefault;
    self.text.frame = frame;
    self.text.text = @"fuckyou";
    self.viewDidLoad;*/
    
    
}

- (void) enquript:(id) sender{
    NSLog(@"you had clicked button");
   // self.lable.text = self.text.text;
    
   // self.lable.text = [self enquriptionFunction:@"126" codeDetails:self.text.text ];
    if (self.info1.text.length>0)
        self.lable1.text = [self enquriptionFunction:self.info1.text codeDetails:self.text.text ];
    if (self.info2.text.length>0)
        self.lable2.text = [self enquriptionFunction:self.info2.text codeDetails:self.text.text ];
    if (self.info3.text.length>0)
        self.lable3.text = [self enquriptionFunction:self.info3.text codeDetails:self.text.text ];
    if (self.info4.text.length>0)
        self.lable4.text = [self enquriptionFunction:self.info4.text codeDetails:self.text.text ];
    if (self.info5.text.length>0)
        self.lable5.text = [self enquriptionFunction:self.info5.text codeDetails:self.text.text ];
    if (self.info6.text.length>0)
        self.lable6.text = [self enquriptionFunction:self.info6.text codeDetails:self.text.text ];
    if (self.info7.text.length>0)
        self.lable7.text = [self enquriptionFunction:self.info7.text codeDetails:self.text.text ];
    if (self.info8.text.length>0)
        self.lable8.text = [self enquriptionFunction:self.info8.text codeDetails:self.text.text ];
    if (self.info9.text.length>0)
        self.lable9.text = [self enquriptionFunction:self.info9.text codeDetails:self.text.text ];
    if (self.info10.text.length>0)
        self.lable10.text = [self enquriptionFunction:self.info10.text codeDetails:self.text.text ];
    if (self.info11.text.length>0)
        self.lable11.text = [self enquriptionFunction:self.info11.text codeDetails:self.text.text ];
    if (self.info12.text.length>0)
        self.lable12.text = [self enquriptionFunction:self.info12.text codeDetails:self.text.text ];
    if (self.info13.text.length>0)
        self.lable13.text = [self enquriptionFunction:self.info13.text codeDetails:self.text.text ];
    if (self.info14.text.length>0)
        self.lable14.text = [self enquriptionFunction:self.info14.text codeDetails:self.text.text ];
    if (self.info15.text.length>0)
        self.lable15.text = [self enquriptionFunction:self.info15.text codeDetails:self.text.text ];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSString*) enquriptionFunction:(NSString*) key codeDetails:(NSString*) enqcode{
    NSString *returnValue =@"";
    int desLength = 10;
    char charPerString[5000];
    int  intPerEnqucodeStringAscII[5000];
    int  intPerKeyInAscII[50];
    NSLog(@"key is %@, code is %@",key,enqcode);
/*加密细节*/
    returnValue = [[NSString alloc] initWithCString:(const char*)charPerString encoding:NSASCIIStringEncoding];
    return returnValue;
}





@end
