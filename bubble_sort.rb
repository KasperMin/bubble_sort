def bubble_sort collection
  i = 0

  while i < collection.length-1
    i += 1
    if collection[i-1] > collection[i]
      collection[i-1], collection[i] = collection[i], collection[i-1]
      bubble_sort collection
    end
  end

  collection
end

# bubble_sort ([4,3,78,2,0,2])

def bubble_sort_by collection
  noMatch = false

  until noMatch == true
    noMatch = true
    for n in 0..collection.length-2 do
       if (yield collection[n], collection[n+1]) > 0
         collection[n], collection[n+1] = collection[n+1], collection[n]
         noMatch = false
       end
     end
  end

  collection
end

=begin

bubble_sort_by(["hill","hello","hey", "hi"]) do |left, right|
  left.length - right.length
end

=end
