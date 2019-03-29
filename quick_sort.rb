class Array
  def quick_sort
    return self if size <= 1
    pivot = choice_pivot
    smallers, biggers = partition { |item| item < pivot }
    push(pivot)
    smallers.quick_sort.concat([pivot]).concat(biggers.quick_sort)
  end

  #2つの数値からより大きいものをピボットとする
  def choice_pivot
    self[0] >= self[1] ? delete_at(0) : delete_at(1)
  end
end
