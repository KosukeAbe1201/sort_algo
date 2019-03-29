class Array
  def build_heap(arr)
    parent = (arr.length - 1) / 2#親ノードのインデックス
    node_cnt = parent

    until node_cnt < 0
      l_child = 2 * parent + 1#左ノードのインデックス
      r_child = l_child + 1#右ノードのインデックス

      #右ノードが最大の場合
      if arr[r_child] && arr[r_child] >= arr[l_child] && arr[r_child] > arr[parent]
          arr.swap!(r_child, parent)
          parent = r_child
      #左ノードが最大の場合
      elsif arr[l_child] && arr[l_child] > arr[parent]
          arr.swap!(l_child, parent)
          parent = l_child
      else
        node_cnt -= 1
        parent = node_cnt
      end
    end
    arr
  end

  def swap!(a, b)
    self[a], self[b] = self[b], self[a]
  end

  def heap_sort
    arr = self.dup
    res = []
    until arr.empty?
      heap = build_heap(arr)
      heap.swap!(-1, 0)
      res.unshift(heap.delete_at(-1))
    end
    res
  end
end
