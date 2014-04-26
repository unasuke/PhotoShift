//
//  TitleViewController.h
//  PhotoShift
//
//  Created by yusuke on 4/2/14.
//
//

#import <UIKit/UIKit.h>

@interface TitleViewController : UIViewController <UINavigationControllerDelegate , UIImagePickerControllerDelegate >


//各Buttonが押された時呼ばれる関数の定義
- (IBAction)cameraButtonTaped:(id)sender;
- (IBAction)camerarollButtonTaped:(id)sender;
- (IBAction)challangeButtonTaped:(id)sender;

@end
