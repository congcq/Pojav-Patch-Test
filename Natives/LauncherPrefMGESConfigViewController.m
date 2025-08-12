#import "LauncherPreferences.h"
#import "LauncherPreferencesViewController.h"
#import "LauncherPrefMGESConfigViewController.h"
#import "NSFileManager+NRFileManager.h"

@implementation LauncherPrefMGESConfigViewController

- (void)viewDidLoad {
   [super viewDidLoad];
   [self setTitle:localize(@"preference.title.mges_config", nil)];
}
@end