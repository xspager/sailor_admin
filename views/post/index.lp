<style>
	.table td {
	    cursor: pointer;
	}
</style>
<h2>View all</h2>
<table class="table">
	<tr>
		<th>id</th>
		<th>body</th>
		<th>author_id</th>
	</tr>
	<?lua for k,v in pairs(posts) do ?>
		<tr onclick="location.href='<%= page:make_url('post/view',{id = v.id}) %>'" >
			<td> <%= v.id %> </td>
			<td> <%= v.body %> </td>
			<td> <%= v.author_id %> </td>
		</tr>
	<?lua end ?>
</table>
<br/>
<a href="<%= page:make_url('post/create') %>" class="btn btn-primary">Create new post</a>
