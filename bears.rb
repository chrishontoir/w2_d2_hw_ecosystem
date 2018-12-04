class Bears

  def initialize(bear_name, bear_type, stomach_array)
    @bear_name = bear_name
    @bear_type = bear_type
    @stomach_array = stomach_array
  end

  def get_bear_name
    return @bear_name
  end

  def get_bear_type
    return @bear_type
  end

  def get_stomach_array
    return @stomach_array
  end

  def stomach_count
      return @stomach_array.length
  end

  def add_content_to_stomach(content)
    @stomach_array.push(content)
  end

  def remove_content_from_stomach(content)
    @stomach_array.delete(content)
  end

  def bear_roar
    return "Rawr!"
  end

end
