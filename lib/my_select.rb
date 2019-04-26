def my_select(collection)
  if collection.empty? then return [] end
  i = 0
  newArray = []
  while i < collection.count do
    newArray = yield collection[i], newArray
    i += 1
  end
  newArray
end

my_select([1,2,3,4,5]) { |item, newArray| puts newArray.count; return item.even? ? newArray.push(item) : newArray }
