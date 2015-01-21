//
//  VFSQLiteDemon.m
//  FoundationTechenoligyDemon
//
//  Created by victor on 1/21/15.
//  Copyright (c) 2015 nero. All rights reserved.
//

#import "VFSQLiteDemon.h"
#import "VFPathUtility.h"

#define DB_NAME     @"mytest.sql";
#define TABLE_NAME  @"person";
#define PNAME       @"name";
#define PAGE        @"age";
#define PGENDER     @"gender";

@interface VFSQLiteDemon ()
{
    sqlite3 *db;
}

@end

@implementation VFSQLiteDemon

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self initDB];
    
    [self insertData];
}

- (void)initDB
{
    NSString *dbPath = [VFPathUtility CreateFileInDocumentPathWithFileName:@"mytest.sql"];
    
    if (sqlite3_open([dbPath UTF8String], &db) != SQLITE_OK) {
        sqlite3_close(db);
        NSLog(@"数据库打开失败！");
    }
    
}

@end
