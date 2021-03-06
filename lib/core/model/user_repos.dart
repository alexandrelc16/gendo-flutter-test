import 'models.dart';

class UserRepos {
  int id;
  String nodeId;
  String name;
  String fullName;
  bool private;
  Owner owner;
  String htmlUrl;
  String description;
  bool fork;
  String url;
  String forksUrl;
  String keysUrl;
  String collaboratorsUrl;
  String teamsUrl;
  String hooksUrl;
  String issueEventsUrl;
  String eventsUrl;
  String assigneesUrl;
  String branchesUrl;
  String tagsUrl;
  String blobsUrl;
  String gitTagsUrl;
  String gitRefsUrl;
  String treesUrl;
  String statusesUrl;
  String languagesUrl;
  String stargazersUrl;
  String contributorsUrl;
  String subscribersUrl;
  String subscriptionUrl;
  String commitsUrl;
  String gitCommitsUrl;
  String commentsUrl;
  String issueCommentUrl;
  String contentsUrl;
  String compareUrl;
  String mergesUrl;
  String archiveUrl;
  String downloadsUrl;
  String issuesUrl;
  String pullsUrl;
  String milestonesUrl;
  String notificationsUrl;
  String labelsUrl;
  String releasesUrl;
  String deploymentsUrl;
  String createdAt;
  String updatedAt;
  String pushedAt;
  String gitUrl;
  String sshUrl;
  String cloneUrl;
  String svnUrl;
  String homepage;
  int size;
  int stargazersCount;
  int watchersCount;
  String language;
  bool hasIssues;
  bool hasProjects;
  bool hasDownloads;
  bool hasWiki;
  bool hasPages;
  int forksCount;
  String mirrorUrl;
  bool archived;
  bool disabled;
  int openIssuesCount;
  License license;
  int forks;
  int openIssues;
  int watchers;
  String defaultBranch;

  UserRepos({
    this.id,
    this.nodeId,
    this.name,
    this.fullName,
    this.private,
    this.owner,
    this.htmlUrl,
    this.description,
    this.fork,
    this.url,
    this.forksUrl,
    this.keysUrl,
    this.collaboratorsUrl,
    this.teamsUrl,
    this.hooksUrl,
    this.issueEventsUrl,
    this.eventsUrl,
    this.assigneesUrl,
    this.branchesUrl,
    this.tagsUrl,
    this.blobsUrl,
    this.gitTagsUrl,
    this.gitRefsUrl,
    this.treesUrl,
    this.statusesUrl,
    this.languagesUrl,
    this.stargazersUrl,
    this.contributorsUrl,
    this.subscribersUrl,
    this.subscriptionUrl,
    this.commitsUrl,
    this.gitCommitsUrl,
    this.commentsUrl,
    this.issueCommentUrl,
    this.contentsUrl,
    this.compareUrl,
    this.mergesUrl,
    this.archiveUrl,
    this.downloadsUrl,
    this.issuesUrl,
    this.pullsUrl,
    this.milestonesUrl,
    this.notificationsUrl,
    this.labelsUrl,
    this.releasesUrl,
    this.deploymentsUrl,
    this.createdAt,
    this.updatedAt,
    this.pushedAt,
    this.gitUrl,
    this.sshUrl,
    this.cloneUrl,
    this.svnUrl,
    this.homepage,
    this.size,
    this.stargazersCount,
    this.watchersCount,
    this.language,
    this.hasIssues,
    this.hasProjects,
    this.hasDownloads,
    this.hasWiki,
    this.hasPages,
    this.forksCount,
    this.mirrorUrl,
    this.archived,
    this.disabled,
    this.openIssuesCount,
    this.license,
    this.forks,
    this.openIssues,
    this.watchers,
    this.defaultBranch,
  });

  UserRepos.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nodeId = json['node_id'];
    name = json['name'];
    fullName = json['full_name'];
    private = json['private'];
    owner = json['owner'] != null ? Owner.fromJson(json['owner']) : null;
    htmlUrl = json['html_url'];
    description = json['description'];
    fork = json['fork'];
    url = json['url'];
    forksUrl = json['forks_url'];
    keysUrl = json['keys_url'];
    collaboratorsUrl = json['collaborators_url'];
    teamsUrl = json['teams_url'];
    hooksUrl = json['hooks_url'];
    issueEventsUrl = json['issue_events_url'];
    eventsUrl = json['events_url'];
    assigneesUrl = json['assignees_url'];
    branchesUrl = json['branches_url'];
    tagsUrl = json['tags_url'];
    blobsUrl = json['blobs_url'];
    gitTagsUrl = json['git_tags_url'];
    gitRefsUrl = json['git_refs_url'];
    treesUrl = json['trees_url'];
    statusesUrl = json['statuses_url'];
    languagesUrl = json['languages_url'];
    stargazersUrl = json['stargazers_url'];
    contributorsUrl = json['contributors_url'];
    subscribersUrl = json['subscribers_url'];
    subscriptionUrl = json['subscription_url'];
    commitsUrl = json['commits_url'];
    gitCommitsUrl = json['git_commits_url'];
    commentsUrl = json['comments_url'];
    issueCommentUrl = json['issue_comment_url'];
    contentsUrl = json['contents_url'];
    compareUrl = json['compare_url'];
    mergesUrl = json['merges_url'];
    archiveUrl = json['archive_url'];
    downloadsUrl = json['downloads_url'];
    issuesUrl = json['issues_url'];
    pullsUrl = json['pulls_url'];
    milestonesUrl = json['milestones_url'];
    notificationsUrl = json['notifications_url'];
    labelsUrl = json['labels_url'];
    releasesUrl = json['releases_url'];
    deploymentsUrl = json['deployments_url'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    pushedAt = json['pushed_at'];
    gitUrl = json['git_url'];
    sshUrl = json['ssh_url'];
    cloneUrl = json['clone_url'];
    svnUrl = json['svn_url'];
    homepage = json['homepage'];
    size = json['size'];
    stargazersCount = json['stargazers_count'];
    watchersCount = json['watchers_count'];
    language = json['language'];
    hasIssues = json['has_issues'];
    hasProjects = json['has_projects'];
    hasDownloads = json['has_downloads'];
    hasWiki = json['has_wiki'];
    hasPages = json['has_pages'];
    forksCount = json['forks_count'];
    mirrorUrl = json['mirror_url'];
    archived = json['archived'];
    disabled = json['disabled'];
    openIssuesCount = json['open_issues_count'];
    license =
        json['license'] != null ? License.fromJson(json['license']) : null;
    forks = json['forks'];
    openIssues = json['open_issues'];
    watchers = json['watchers'];
    defaultBranch = json['default_branch'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nodeId': nodeId,
      'owner': owner != null ? owner.toJson() : null,
      'license': license != null ? license.toJson() : null,
      'name': name,
      'fullName': fullName,
      'private': private,
      'htmlUrl': htmlUrl,
      'description': description,
      'fork': fork,
      'url': url,
      'forksUrl': forksUrl,
      'keysUrl': keysUrl,
      'collaboratorsUrl': collaboratorsUrl,
      'teamsUrl': teamsUrl,
      'hooksUrl': hooksUrl,
      'issueEventsUrl': issueEventsUrl,
      'eventsUrl': eventsUrl,
      'assigneesUrl': assigneesUrl,
      'branchesUrl': branchesUrl,
      'tagsUrl': tagsUrl,
      'blobsUrl': blobsUrl,
      'gitTagsUrl': gitTagsUrl,
      'gitRefsUrl': gitRefsUrl,
      'treesUrl': treesUrl,
      'statusesUrl': statusesUrl,
      'languagesUrl': languagesUrl,
      'stargazersUrl': stargazersUrl,
      'contributorsUrl': contributorsUrl,
      'subscribersUrl': subscribersUrl,
      'subscriptionUrl': subscriptionUrl,
      'commitsUrl': commitsUrl,
      'gitCommitsUrl': gitCommitsUrl,
      'commentsUrl': commentsUrl,
      'issueCommentUrl': issueCommentUrl,
      'contentsUrl': contentsUrl,
      'compareUrl': compareUrl,
      'mergesUrl': mergesUrl,
      'archiveUrl': archiveUrl,
      'downloadsUrl': downloadsUrl,
      'issuesUrl': issuesUrl,
      'pullsUrl': pullsUrl,
      'milestonesUrl': milestonesUrl,
      'notificationsUrl': notificationsUrl,
      'labelsUrl': labelsUrl,
      'releasesUrl': releasesUrl,
      'deploymentsUrl': deploymentsUrl,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'pushedAt': pushedAt,
      'gitUrl': gitUrl,
      'sshUrl': sshUrl,
      'cloneUrl': cloneUrl,
      'svnUrl': svnUrl,
      'homepage': homepage,
      'size': size,
      'stargazersCount': stargazersCount,
      'watchersCount': watchersCount,
      'language': language,
      'hasIssues': hasIssues,
      'hasProjects': hasProjects,
      'hasDownloads': hasDownloads,
      'hasWiki': hasWiki,
      'hasPages': hasPages,
      'forksCount': forksCount,
      'mirrorUrl': mirrorUrl,
      'archived': archived,
      'disabled': disabled,
      'openIssuesCount': openIssuesCount,
      'forks': forks,
      'openIssues': openIssues,
      'watchers': watchers,
      'defaultBranch': defaultBranch,
    };
  }
}
