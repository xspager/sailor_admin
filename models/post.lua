-- Uncomment this to use validation rules
-- local val = require "valua"
local M = {}

-- Attributes and their validation rules
M.attributes = {
	-- {<attribute> = <validation function, valua required>}
	-- Ex. {id = val:new().integer()}
	{ id = "safe" },
	{ body = "safe" },
	{ author_id = "safe" },
}

M.db = {
	key = 'id',
	table = 'post'
}

M.relations = {
	author = {relation = "BELONGS_TO", model = "user", attribute = "author_id"},
	--categories = {relation = "MANY_MANY", model = "category", table = "post_category", attributes = {"post_id","category_id"}},
	--comments = {relation = "HAS_MANY", model = "comment", attribute = "post_id"}
}

return M

