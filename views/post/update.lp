<?lua local form = require "sailor.form" ?>
<h2>Update post</h2>
<?lua if saved == false then ?>
	There was an error while saving.
<?lua end ?>
<form method="post">
	<div class="form-group">
		<label>id:</label>
		<%= form.text(post,'id', 'class="form-control" placeholder="id"') %>
	</div>
	<div class="form-group">
		<label>body:</label>
		<%= form.text(post,'body', 'class="form-control" placeholder="body"') %>
	</div>
	<div class="form-group">
		<label>author_id:</label>
		<%= form.text(post,'author_id', 'class="form-control" placeholder="author_id"') %>
	</div>
	<input type="submit" class="btn btn-primary"/>
</form>
<br/>
<a href="<%= page:make_url('post/index') %>"><- Back to View All</a>
