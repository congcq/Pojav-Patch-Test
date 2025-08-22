#import "LauncherNavigationController.h"
#import "LauncherPreferences.h"
#import "LauncherPreferencesViewController.h"
#import "LauncherPrefMGESConfigViewController.h"
#import "utils.h"

#define CONFIGS 0

@implementation LauncherPrefMGESConfigViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	[self setTitle:localize(@"preference.title.mges_config", nil)];

	[self setConfigList];
	[self setTableView];
}

- (void)setConfigList {
	self.configList = @{
		@(CONFIGS): @[
			@"preference.title.mges_config.enableAngle",
			@"preference.title.mges_config.ignoreError",
			@"preference.title.mges_config.enableExtComputeShader",
			@"preference.title.mges_config.enableExtGL43",
			@"preference.title.mges_config.enableExtTimerQuery",
			@"preference.title.mges_config.enableExtDirectStateAccess",
			@"preference.title.mges_config.maxGlslCacheSize",
			@"preference.title.mges_config.multidrawMode",
			@"preference.title.mges_config.angleDepthClearFixMode",
			@"preference.title.mges_config.bufferCoherentAsFlush",
			@"preference.title.mges_config.customGLVersion",
			@"preference.title.mges_config.fsr1Setting"
		]
	}.mutableCopy;

	self.sortedConfigKeys = @[@(CONFIGS)].mutableCopy;
}

- (void)setTableView {
	self.tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStyleInsetGrouped];
	self.tableView.dataSource = self;
	self.tableView.delegate = self;
	[self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
	[self.view addSubview:self.tableView];
}
@end