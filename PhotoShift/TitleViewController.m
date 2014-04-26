//
//  TitleViewController.m
//  PhotoShift
//
//  Created by yusuke on 4/2/14.
//
//

#import "TitleViewController.h"

@interface TitleViewController ()

@end

@implementation TitleViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(void)notImplementedAleat{
    //未実装を警告するアラートを表示
    UIAlertView *aleat = [[UIAlertView alloc]initWithTitle:@"警告"
                                                   message:@"まだ実装されていません"
                                                  delegate:self
                                         cancelButtonTitle:nil
                                         otherButtonTitles:@"OK", nil];
    [aleat show];
}

-(void)aleatMessage:(NSString *)string title:(NSString *)title{
    //メッセージを指定してアラートを出す
    UIAlertView *aleat = [[UIAlertView alloc]initWithTitle:title
                                                   message:string
                                                  delegate:self
                                         cancelButtonTitle:nil
                                         otherButtonTitles:@"OK", nil];
    [aleat show];
}

- (IBAction)cameraButtonTaped:(id)sender {
    [self notImplementedAleat];
}

- (IBAction)camerarollButtonTaped:(id)sender {
    NSLog(@"camerarollButton taped");
    
    //フォトライブラリにアクセスできるかどうかのチェック
    if ([UIImagePickerController isSourceTypeAvailable:
         UIImagePickerControllerSourceTypePhotoLibrary]) {
        
        //PickerControllerの初期化
        UIImagePickerController *camerarollPickerUI = [[UIImagePickerController alloc] init];
        
        //選択するメディアのタイプを選択
        camerarollPickerUI.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
        
        //delegateを自分自身に(移譲先が自分自身となることで選択された画像を取得する)
        //.hに追記が必要
        camerarollPickerUI.delegate = self;
        
        //画面の呼び出し
        [self presentViewController:camerarollPickerUI animated:YES completion:NULL];
        
        
    }
    else {
        [self aleatMessage:@"フォトライブラリにアクセスできません" title:@"エラー"];
        
    }
    
}

- (IBAction)challangeButtonTaped:(id)sender {
    [self notImplementedAleat];
}
@end
