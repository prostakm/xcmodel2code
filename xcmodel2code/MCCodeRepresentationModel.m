

#import <CoreData/CoreData.h>
#import "MCCodeRepresentationModel.h"
#import "MCCodeEntityDetail.h"


@implementation MCCodeRepresentationModel
{

}
+ (MCCodeRepresentationModel *)codeModelFromDataModel:(NSManagedObjectModel *)model
{
    return nil;
}

- (MCCodeEntityDetail *)entityDetailForEntityName:(NSString *)name
{
    return NULL;
}
@end