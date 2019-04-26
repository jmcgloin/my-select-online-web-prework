def my_select(collection)
  if collection.empty? then return [] end
  i = 0
  newArray = []
  while i < collection.count do
    if yield(collection[i]) then newArray.push(collection[i]) end
    i += 1
  end
  newArray
end

my_select([1,2,3,4,5]) { |item| item.even? }