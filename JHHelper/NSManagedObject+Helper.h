//
//  NSManagedObject+Helper.h
//
//  Created by JiaHao on 5/4/15.
//  Copyright (c) 2015 JH. All rights reserved.

#import <CoreData/CoreData.h>

@interface NSManagedObject (Helper)
+ (NSArray *)fetchAllWithContext:(NSManagedObjectContext *)context entityName:(NSString *)entityName;
+ (NSArray *)fetchAllWithContext:(NSManagedObjectContext *)context entityName:(NSString *)entityName  sortDecriptors:(NSArray *)sortDescriptors;
+ (id)fetchObjectWithContext:(NSManagedObjectContext *)context entityName:(NSString *)entityName predicate:(NSPredicate *)predicate;
+ (id)createWithContext:(NSManagedObjectContext *)context entityName:(NSString *)entityName;
@end
