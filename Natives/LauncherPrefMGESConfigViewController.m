#import "LauncherNavigationController.h"
#import "LauncherPreferences.h"
#import "LauncherPreferencesViewController.h"
#import "LauncherPrefMGESConfigViewController.h"

@interface LauncherPrefMGESConfigViewController ()<UIContextMenuInteractionDelegate>
@property(nonatomic) NSMultableDictionary<NSNumber *, NSMultableArray *> *mgesConfigs;
@property(nonatomic) NSMultableDictionary<NSNumber *> *options;
@end

@implementation LauncherPrefMGESConfigViewController

- (void)viewDidLoad {
   [super viewDidLoad];
   [self setTitle:NSLocalizedString(@"preference.title.mges_config", nil)];
   //self.title = @"MobileGlues Config";
}
   self.tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStyleInsetGrouped];

   self.mgesConfigs = @{
      @(0):
         @[@"preference.mges_config.option1",
         @"preference.mges_config.option2",
         @"preference.mges_config.option3"
         ]
   }.mutableCopy;
@end