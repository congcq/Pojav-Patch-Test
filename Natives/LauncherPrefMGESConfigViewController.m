#import "LauncherNavigationController.h"
#import "LauncherPreferences.h"
#import "LauncherPreferencesViewController.h"
#import "LauncherPrefMGESConfigViewController.h"
#import "utils.h"

@interface LauncherPrefMGESConfigViewController ()<UIContextMenuInteractionDelegate>
@property(nonatomic) NSMutableDictionary<NSNumber *, NSMutableArray *> *mgesConfigs;
@property(nonatomic) NSMutableArray<NSNumber *> *options;
@property(nonatomic) UIMenu *currentMenu;
@end

@implementation LauncherPrefMGESConfigViewController

- (void)viewDidLoad {
   [super viewDidLoad];
   [self setTitle:localize(@"preference.title.mges_config", nil)];
   //self.title = @"MobileGlues Config";

   self.tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStyleInsetGrouped];

   self.mgesConfigs = @{
      @(0):
         @[@"preference.mges_config.option1",
         @"preference.mges_config.option2",
         @"preference.mges_config.option3"
         ]
   }.mutableCopy;
   self.options = @[@(0)].mutableCopy;
}

#pragma mark Table view

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
   return self.options.count;
}

@end