#import <UIKit/UIKit.h>

@interface LauncherPrefMGESConfigViewController : UITableViewController <UITableDataViewSource, UITableViewDelegate>

@property(nonatomic, strong) NSMutableDictionary *configList;
@property(nonatomic, strong) NSMutableArray *sortedConfigKeys;
@property(nonatomic, strong) UITableView *tableView;
@property(nonatomic) NSArray<NSString *> *selectedRTTags;
@property(nonatomic) NSMutableDictionary<NSString *, NSString *> *selectedOption;

@end