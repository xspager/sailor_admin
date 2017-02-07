--local inspect = require"inspect"

rawnext = next
function next(t,k)
  local m = getmetatable(t)
  local n = m and m.__next or rawnext
  return n(t,k)
end

__entryes = {}
thing = {
    __c = 1
}
thing.mt = {
    __newindex = function(t, k, v)
        table.insert(__entryes, t.__c, {k, v})
        t.__c = t.__c + 1
    end,
    __next = function(t, k)
        --print(k)
        a, b = next(__entryes, k)
        return a, b 
    end
}
setmetatable(thing, thing.mt)

thing.name = "Daniel"
thing.age = 29
thing.thing = 342351235

--print(inspect(thing))

for k, v in next, thing do
    print(unpack(v))
end
