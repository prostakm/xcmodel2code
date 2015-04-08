#import <Foundation/Foundation.h>

@class MCCodeEntityDetail;


@interface MCCodeRepresentationModel : NSObject


@property (nonatomic, strong) NSArray *entityDefinitions;
@property (nonatomic, strong) NSArray *entityDetails;

+ (MCCodeRepresentationModel *)codeModelFromDataModel:(NSManagedObjectModel *)model;

- (MCCodeEntityDetail *)entityDetailForEntityName:(NSString *)name;
@end