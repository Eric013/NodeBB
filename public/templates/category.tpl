<div class="container">
	<ul class="breadcrumb">
		<li><a href="/">Home</a><span class="divider">/</span></li>
		<li class="active">{category_name}</li>
		<div id="category_active_users"></div>
	</ul>
</div>
<div class="category row">

	<div class="span9">
		<ul>
		<!-- BEGIN topics -->
		<a href="../../topic/{topics.slug}"><li>
			<div class="row-fluid">
				<div class="span12 topic-row img-polaroid">
					<div class="latest-post visible-desktop">
						<div class="pull-right">
							<img style="width: 48px; height: 48px; /*temporary*/" src="/graph/users/{topics.recent_author}/picture" />
							<p><strong>{topics.recent_author}</strong>: {topics.recent_post}</p>
						</div>
					</div>
					<div>
						<h3><span class="badge {topics.badgeclass}">{topics.post_count}</span> {topics.title} <small>24<i class="icon-star"></i><br />
							<strong><i class="{topics.pin-icon}"></i><i class="{topics.lock-icon}"></i></strong>
							Posted {topics.relativeTime} ago by 
							<strong>{topics.username}</strong>.</small></h3> 
					</div>
				</div>
			</div>
		</li></a>
		<!-- END topics -->
		</ul>
	</div>
	<div class="span3">
		<div class="sidebar-block img-polaroid">
			<div class="block-header">
				Recent Replies
			</div>
			<div class="block-content">
				
			</div>
		</div>
		<div class="sidebar-block img-polaroid">
			<div class="block-header">
				Active Participants
			</div>
			<div class="block-content">
				<!-- BEGIN active_users -->
				<a href="/users/{active_users.username}"><img style="width: 48px; height: 48px; /*temporary*/" src="/graph/users/{active_users.username}/picture" class="img-polaroid" /></a>
				<!-- END active_users -->
			</div>
		</div>
		<div class="sidebar-block img-polaroid {moderator_block_class}">
			<div class="block-header">
				Moderators
			</div>
			<div class="block-content">
				<!-- BEGIN moderators -->
				<a href="/users/{moderators.username}"><img style="width: 48px; height: 48px; /*temporary*/" src="/graph/users/{moderators.username}/picture" class="img-polaroid" /></a>
				<!-- END moderators -->
			</div>
		</div>
	</div>
</div>


<hr />
<button id="new_post" class="btn btn-primary btn-large {show_topic_button}">New Topic</button>


<script type="text/javascript">
var new_post = document.getElementById('new_post');
new_post.onclick = function() {
	app.open_post_window('topic', {category_id});
}
</script>