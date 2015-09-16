//
//  WonderfulQuestionViewController.m
//  ASK
//
//  Created by zhuanghaishao on 15/4/18.
//  Copyright (c) 2015年 yiyaowang. All rights reserved.
//

#import "WonderfulQuestionViewController.h"
#import "SSWLoadMoreTableView.h"
#import "QuestionListTableViewCell.h"
#import "YWPageHelper.h"
#import "QuestionDetailViewController.h"

#import "YWExpertReplyListDataModels.h"

@interface WonderfulQuestionViewController ()<SSWLoadMoreTableViewDelegate,UITableViewDelegate,UITableViewDataSource,YWPageHelperDelegate>

@property (weak, nonatomic) IBOutlet SSWLoadMoreTableView *tableView;
@property (strong, nonatomic) YWPageHelper *pageHelper;
@property (strong, nonatomic) YWExpertReplyList *questionListModel;

@end

@implementation WonderfulQuestionViewController

static NSString *questionListCell = @"QuestionList";

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"精彩问答";
        _pageHelper = [[YWPageHelper alloc] init];
        _pageHelper.pageDelegate = self;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    _tableView.sswDelegate = self;
    _tableView.dataSource = self;
    _tableView.delegate = self;
    
    [self loadReplyList];
}

#pragma mark - Network Request

- (void)loadReplyList
{
    if (_professor) {
        
        NSMutableDictionary *params = [[YWHttpAssist shareAssist] processPublicReqPara];
        [params setObject:StringValue(_professor.doctorId) forKey:@"doctorId"];
        [params setObject:NumberValue(@(_professor.periods)) forKey:@"periods"];
        [params setObject:NumberValue(@(_pageHelper.nextPage)) forKey:@"curPage"];
        [params setObject:NumberValue(@(_pageHelper.pageSize)) forKey:@"pageSize"];
        NSString *url = [[YWHttpAssist shareAssist] createMainUrl:ASKHTTPAPI_EXPERTREPLY];
        [[YWAFHttpManager shareHttpManager] requestPostURL:url withParameters:params withUserInfo:nil withReqOverBlock:^(YWAFHttpResponse *response){
            if (response.ret==HTTPRetCodeOK)
            {
                _questionListModel = [YWExpertReplyList modelObjectWithDictionary:DictionaryValue(response.responseDic)];
                NSInteger totalNum = [[DictionaryValue(response.responseDic) objectForKey:@"totalPage"] integerValue];
                 _pageHelper.totalPage = totalNum;
                _pageHelper.nextPage ++;
                _tableView.isLoading = NO;
                [_tableView reloadData];
            }
        }];
    }
}

#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _questionListModel.data.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    QuestionListTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:questionListCell];
    if (cell == nil) {
        cell = [QuestionListTableViewCell createViewFromXib];
    }
    YWExpertReplyData *model;
    if (_questionListModel.data.count > indexPath.row)
    {
        model = _questionListModel.data[indexPath.row];
    }
    cell.titleLabel.text = model.content;
    [cell setNeedsUpdateConstraints];
    [cell updateConstraintsIfNeeded];
    cell.titleLabel.preferredMaxLayoutWidth = cell.frame.size.width;
    CGFloat height = [cell.contentView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize].height;
    height += 16;
    return height;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    QuestionListTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:questionListCell];
    if (cell == nil) {
        cell = [QuestionListTableViewCell createViewFromXib];
    }
    YWExpertReplyData *model;
    if (_questionListModel.data.count > indexPath.row)
    {
        model = _questionListModel.data[indexPath.row];
    }
    cell.titleLabel.text = model.content;
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:[model.questionTime integerValue]];
    NSString *dateStr = [date stringWithFormat:@"MM月dd日 HH:mm"];
    cell.subLabel.text = dateStr;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    YWExpertReplyData *model;
    if (_questionListModel.data.count > indexPath.row)
    {
        model = _questionListModel.data[indexPath.row];
    }
    QuestionDetailViewController *vc = [[QuestionDetailViewController alloc] init];
    vc.questionId = StringValue(model.questionId);
    self.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:vc animated:YES];
}

#pragma mark - YWPageHelperDelegate
- (void)pageCompleted:(YWPageHelper *)pageHelper
{
    _tableView.isCompleted = YES;
}
#pragma mark - SSWLoadMoreTableViewDelegate
- (void)didScrollToLastRowAndLoadingMore:(SSWLoadMoreTableView *)tableView
{
    [self loadReplyList];
}

@end
