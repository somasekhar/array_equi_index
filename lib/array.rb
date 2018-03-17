#Using existing Array class - Ruby Open Class to find equilibrium indexes of array
class Array
  def equilibrium_indexes
    left_sum = 0
    right_sum = inject(0, &:+)
    positions = []

    each_with_index do |val, i|
      right_sum -= val

      positions << i if right_sum == left_sum

      left_sum += val
    end

    positions
  end
end