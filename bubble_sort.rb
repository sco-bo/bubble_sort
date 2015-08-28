
def recursive_sort(array)
  something_changed = false
  array[0...-1].each_with_index do |element, i|
    if element > array[i+1] 
      array[i], array[i+1] = array[i+1], array[i]
      something_changed = true
    end
  end
  if something_changed == true
    recursive_sort (array)
  end
  array
end

p recursive_sort ([4,3,78,2,0,2])