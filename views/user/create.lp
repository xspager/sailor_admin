<?lua local form = require "sailor.form" ?>
<h2>Create user</h2>
<?lua if saved == false then ?>
	There was an error while saving.
<?lua end ?>
<form method="post">
	<div class="form-group">
		<label>id:</label>
		<%= form.text(user,'id', 'class="form-control" placeholder="id"') %>
		<span class="help-block"> <%= user.errors.id or '' %> </span>
	</div>
	<div class="form-group">
		<label>username:</label>
		<%= form.text(user,'username', 'class="form-control" placeholder="username"') %>
		<span class="help-block"> <%= user.errors.username or '' %> </span>
	</div>
	<div class="form-group">
		<label>password:</label>
		<%= form.text(user,'password', 'class="form-control" placeholder="password"') %>
		<span class="help-block"> <%= user.errors.password or '' %> </span>
	</div>
	<input type="submit" class="btn btn-primary"/>
</form>
<br/>
<a href="<%= page:make_url('user/index') %>"><- Back to View All</a>
