def my_select(collection)
  if collection.empty then return [] end
  i = 0
  newArray = []
  while i < collection.count do
    newArray = yield collection[i], newArray
  end
  newArray
end


