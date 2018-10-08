//
//  ViewController.m
//  itms-services
//
//  Created by zhongding on 2018/10/8.
//

#import "ViewController.h"
#import <WebKit/WebKit.h>
@interface ViewController ()
@property (strong, nonatomic)  WKWebView *webView;
@property (weak, nonatomic) IBOutlet UIButton *downloadBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    self.webView = [[WKWebView alloc] initWithFrame:self.view.bounds];
//    [self.view addSubview:self.webView];
//
//    NSString *path = [[NSBundle mainBundle] pathForResource:@"test.html" ofType:nil];
//
//    [_webView loadRequest:[NSURLRequest requestWithURL:[NSURL fileURLWithPath:path]]];
}

- (IBAction)clickDown:(id)sender {
    
    NSString *url = @"itms-services://?action=download-manifest&url=https://github.com/lxj916904395/itms-services/blob/master/btc.plist";
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:url] options:@{} completionHandler:nil];
}

@end
