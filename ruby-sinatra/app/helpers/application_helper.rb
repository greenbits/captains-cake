# Menu Examples
require_relative '../lib/strain_data'

helpers do
  def choice(arr)
    arr[(arr.length * rand).round]
  end

  def get_random_strain_name
    choice(StrainData::NAMES)
  end

  def random_number(min, max)
    rand * (max - min + 1) + min
  end
end
