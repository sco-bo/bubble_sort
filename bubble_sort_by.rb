def bubble_sort_by(array)
  something_changed = false
  array[0...-1].each_with_index do |element, i|
    if yield(element, array[i+1]) > 0
      array[i], array[i+1] = array[i+1], array[i]
      something_changed = true
    end
  end
  if something_changed == true
    bubble_sort_by(array) do |x,y|
      x.length - y.length
    end
  end  
  array
end

p (bubble_sort_by(["hi","hello","hey","I","foo","bar"]) do |x,y| 
  x.length - y.length
end)