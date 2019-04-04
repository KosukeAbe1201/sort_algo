class Array
  def build_heap!
    parent = (length - 1) / 2#親ノードのインデックス
    node_cnt = parent

    until node_cnt < 0
      l_child = 2 * parent + 1#左ノードのインデックス
      r_child = l_child + 1#右ノードのインデックス

      #右ノードが最大の場合
      if self[r_child] && self[r_child] >= self[l_child] && self[r_child] > self[parent]
          swap!(r_child, parent)
          parent = r_child
      #左ノードが最大の場合
      elsif self[l_child] && self[l_child] > self[parent]
          swap!(l_child, parent)
          parent = l_child
      else
        node_cnt -= 1
        parent = node_cnt
      end
    end
    self
  end

  def swap!(a, b)
    self[a], self[b] = self[b], self[a]
  end

  def heap_sort
    arr = self.dup
    res = []
    until arr.empty?
      heap = arr.build_heap!
      heap.swap!(-1, 0)
      res.unshift(heap.delete_at(-1))
    end
    res
  end
end
