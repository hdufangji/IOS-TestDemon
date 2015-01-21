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
    
    [self initTable];
    
    [self insertData];
}

- (void)initDB
{
    NSString *dbPath = [VFPathUtility CreateFileInDocumentPathWithFileName:@"mytest.sql"];
    
    if (sqlite3_open([dbPath UTF8String], &db) != SQLITE_OK) {
        sqlite3_close(db);
        NSLog(@"数据库打开失败！");
    }
    
    NSLog(@"%@", dbPath);
    
}

- (void)initTable
{
  const char *sql = "CREATE TABLE IF NOT EXISTS person (id integer PRIMARY KEY AUTOINCREMENT, name text NOT NULL, age integer NOT NULL, gender text NOT NULL) ";
    char *errCode = NULL;
    int result = sqlite3_exec(db, sql, NULL, NULL, &errCode);
    
    if (result == SQLITE_OK) {
        NSLog(@"创建成功！");
    }else{
        NSLog(@"创建失败！");
    }
}

- (void)insertData
{
    const char *sql = "";
}

@end
