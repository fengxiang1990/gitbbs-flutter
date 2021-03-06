import 'package:fish_redux/fish_redux.dart';
import 'package:gitbbs/model/GitIssue.dart';
import 'package:gitbbs/model/PagingData.dart';
import 'package:gitbbs/model/entry/midddle_issues_data.dart';
import 'package:gitbbs/model/event/comments_count_changed_event.dart';

enum PageInnerAction {
  loadInitData,
  refreshData,
  refreshMiddleData,
  loadMoreData,
  showMiddleProgress,
  onCommentsCountChanged
}

class PageInnerActionCreator {
  static Action loadInitData(List<GitIssue> data) {
    return Action(PageInnerAction.loadInitData, payload: data);
  }

  static Action refreshDataAction(PagingData<GitIssue> data) {
    return Action(PageInnerAction.refreshData, payload: data);
  }

  static Action onLoadMoreDataAction(PagingData<GitIssue> data) {
    return Action(PageInnerAction.loadMoreData, payload: data);
  }

  static Action refreshMiddleDataAction(
      MiddleIssuesData issueData, PagingData<GitIssue> data) {
    return Action(PageInnerAction.refreshMiddleData,
        payload: [issueData, data]);
  }

  static Action showMiddleProgress(MiddleIssuesData issuesData) {
    return Action(PageInnerAction.showMiddleProgress, payload: issuesData);
  }

  static Action onCommentsCountChangedAction(CommentCountChangedEvent event) {
    return Action(PageInnerAction.onCommentsCountChanged, payload: event);
  }
}
