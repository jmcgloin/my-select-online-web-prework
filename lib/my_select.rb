def my_select(collection)
  if collection.empty? then return [] end
  i = 0
  newArray = []
  while i < collection.count do
    newArray = (yield collection[i], collection[i].even?, newArray)
    i += 1
  end
  newArray
end

my_select([1,2,3,4,5]) { |item, bool, ar| if bool then ar.push(item) end; ar }
