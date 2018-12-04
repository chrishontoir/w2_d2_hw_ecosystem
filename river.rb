class River

  def initialize(river_name, fish_array)
    @river_name = river_name
    @fish_array = fish_array
  end

  def get_river_name
    return @river_name
  end

  def get_fish_array
    return @fish_array
  end

  def fish_count
    return @fish_array.length
  end
end
