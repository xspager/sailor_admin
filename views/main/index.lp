<div class="page-header">
	<h1>Welcome to your first Sailor application</h1>
</div>
<p class="lead">This is the default view file, you will find it under <code>/views/main/index.lp</code>.
It is rendered by a controller, you will find it under <code>/controllers/main.lua</code>. This layout is provided by <a href="http://getbootstrap.com/">Twitter Bootstrap</a>, an open source front-end framework. You can use this layout as is, modify it, or get new layouts and place them under <code>/layouts/</code>. Further documenation of Sailor MVC can be found <a href="http://sailorproject.org/?r=docs">here.</a></p>
<p>We have <%= user_count %> users</p>

<h2>Models</h2>
<ul>
<?
    for name, model in pairs(models) do
        page:print("<li>"..name)
        page:print("<ul>")
        page:print("<table class='table'><thead><tr>")
        for _, value_table in pairs(model.attributes) do
            for i, v in pairs(value_table) do
                page:print("<th>"..i.."</th>")
            end
        end 
        page:print("</tr></thead><tbody>")
        for _, entry in ipairs(entries[name]) do
            page:print("<tr>")
            for _, value_table in pairs(model.attributes) do
                for ii, v in pairs(value_table) do
                    page:print("<td>"..entry[ii].."</td>")
                end
            end
            page:print("</tr>")
        end
        page:print("</tbody></table>")
        page:print("</ul>")
        page:print("</li>")
    end
?>
</ul>
