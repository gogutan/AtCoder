class Array
  # being_deleted must be sorted

  # 後ろから順番に削除（頭から削除すると、削除の度に添字がずれるため）
  # O(N^2)？
  def delete_ats_1(being_deleted)
    being_deleted.reverse.each do |deleted|
      self.delete_at(deleted)
    end
  end

  # being_deleted に self の index が含まれる場合は削除（線形探索）
  # O(N^2)
  def delete_ats_2(being_deleted)
    self.delete_if.with_index do |a, i|
      being_deleted.include?(i)
    end
  end

  # delete_ats_3 を改善
  # being_deleted に self の index が含まれる場合は削除（二分探索）
  # O(NlogN)
  def delete_ats_3(being_deleted)
    self.delete_if.with_index do |_, i|
      being_deleted.bsearch { |deleted| deleted >= i } == i
    end
  end

  # self と being_deleted を順番に回しつつ、削除しない物を tmp に詰める
  # O(N)
  def delete_ats_4(being_deleted)
    tmp = []
    current = 0
    self.each_with_index do |a, i|
      if being_deleted[current] == i
        current += 1
      else
        tmp << a
      end
    end
    self.replace(tmp)
  end
end
