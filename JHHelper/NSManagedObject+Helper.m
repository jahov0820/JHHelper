//
//  NSManagedObject+Helper.m
//
//  Created by JiaHao on 5/4/15.
//  Copyright (c) 2015 JH. All rights reserved.
//

#import "NSManagedObject+Helper.h"

@implementation NSManagedObject (Helper)
+ (NSArray *)fetchAllWithContext:(NSManagedObjectContext *)context entityName:(NSString *)entityName
{
    return [NSManagedObject fetchAllWithContext:context entityName:entityName sortDecriptors:nil];
}

+ (NSArray *)fetchAllWithContext:(NSManagedObjectContext *)context entityName:(NSString *)entityName sortDecriptors:(NSArray *)sortDescriptors
{
    NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:entityName];
    if (sortDescriptors) {
        request.sortDescriptors = sortDescriptors;
    }
    
    NSError *error = nil;
    return [context executeFetchRequest:request error:&error];
}

+ (id)createWithContext:(NSManagedObjectContext *)context entityName:(NSString *)entityName
{
    return [NSEntityDescription insertNewObjectForEntityForName:entityName inManagedObjectContext:context];
}

+ (id)fetchObjectWithContext:(NSManagedObjectContext *)context entityName:(NSString *)entityName predicate:(NSPredicate *)predicate
{
    NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:entityName];
    request.predicate = predicate;
    
    NSError *error = nil;
    NSArray *result = [context executeFetchRequest:request error:&error];
    if (result.count > 0) {
        return result.lastObject;
    } else {
        return nil;
    }
}
@end
