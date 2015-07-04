//
//  DetailControllerViewController.m
//  
//
//  Created by John Mercouris on 7/3/15.
//
//

#import "DetailControllerViewController.h"
#import "ColorGenerator.h"
#import "QueryPacket.h"
#import "TripViewController.h"

@interface DetailControllerViewController ()
@property (weak, nonatomic) IBOutlet UIView *headerView;
@property (weak, nonatomic) IBOutlet UITextField *departureAddress;
@property (weak, nonatomic) IBOutlet UITextField *arrivalAddress;
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;
@property (weak, nonatomic) IBOutlet UIStepper *luggageStepper;
@property (weak, nonatomic) IBOutlet UITextField *luggageCount;

@end

@implementation DetailControllerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [_headerView setBackgroundColor:([ColorGenerator colorWithHexString:@"163876" ])];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.destinationViewController respondsToSelector:@selector(setQueryPacket:)]) {
        
        QueryPacket *packet;
        packet = [[QueryPacket alloc]init];
        
        packet.departureAddress = _departureAddress.text;
        packet.arrivalAddress = _arrivalAddress.text;
        
        
        // Set Date
        NSDate *date = _datePicker.date;
        NSDateFormatter *df = [[NSDateFormatter alloc] init];
        [df setDateFormat:@"yyyy-MM-dd'T'HH:mm '+0200'"];
        packet.date = [df stringFromDate:date];
        packet.luggageCount = _luggageCount.text;
        

        [segue.destinationViewController performSelector:@selector(setQueryPacket:)
                                              withObject:packet];
    }
}

@end
