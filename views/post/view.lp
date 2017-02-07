<h2>
	View post #<%= post.id %>
	<small>(<a href="<%= page:make_url('post/update', {id = post.id} ) %>" >update</a>)</small>
	<small>(<a href="<%= page:make_url('post/delete', {id = post.id} ) %>" >delete</a>)</small>
</h2>
<table class="table">
	<tr><td>id</td><td><%= post.id %> </td></tr>
	<tr><td>body</td><td><%= post.body %> </td></tr>
	<tr><td>author_id</td><td><%= post.author_id %> </td></tr>
</table>
<br/>
<a href="<%= page:make_url('post/index') %>"><- Back to View All</a>
