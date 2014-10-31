
#import "ViewController.h"

@interface ViewController ()

@end

static const NSString *LEAP_YEAR_FEBRUARY = @"29";
static const NSString *NORMAL_YEAR_FEBRUARY = @"28";
static const int MAX_YEAR = 2150;
static const int MIN_YEAR = 1800;


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    yearArray = [NSMutableArray arrayWithObjects:@"31", @"28",@"31",@"30",@"31",@"30",@"31",@"31",@"30",@"31",@"30",@"31", nil];
    nameOfMonths = [[NSArray alloc]initWithObjects:@"январь",@"февраль",@"март",@"апрель",@"май",@"июнь",@"июль",@"август",@"сентябрь",@"октябрь",@"ноябрь",@"декабрь", nil];
    self.displeyDays.text = @"0";

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)clearBtn:(id)sender {   //чистка
    self.displeyDays.text = @"0";
    self.year.text = @"";
    self.month.text = @"";
}

- (IBAction)startBtn:(id)sender {
    if ([self.year.text isEqual: @""]){
        allert = [[UIAlertView alloc]initWithTitle:@"Error" message:@"Аларма!!1" delegate:self cancelButtonTitle:@"Cпасти пингвинов" otherButtonTitles: nil];
        [allert show];
    }
// байда для високосного года (хз вошпе правильно я его определяю или нет) :
    if(_year.text.intValue > MIN_YEAR && _year.text.intValue < MAX_YEAR ){
        if((_year.text.intValue % 4 == 0 && _year.text.intValue % 100 != 0)|| _year.text.intValue % 400 == 0){
            yearArray[1] = LEAP_YEAR_FEBRUARY;
        }
    }
    else {
        self.displeyDays.text = @"0";
        self.year.text = @"";
        self.month.text = @"";
    }
// вываливаем все добро в лабел
    for(int i=0;i<[yearArray count];i++){
        if([self.month.text isEqual: nameOfMonths[i]]){
            self.displeyDays.text = yearArray[i];
        }
    }
    yearArray[1] = NORMAL_YEAR_FEBRUARY;
}
@end
