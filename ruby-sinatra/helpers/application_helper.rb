# Menu Examples
require_relative '../lib/data'

module ApplicationHelper
  def choice(arr)
    arr[Math.floor(arr.length * Math.random())]
  end

  # Round the number to the decimals nth idx, e.g:
  # round(1.005, 2) becomes # 1.01
  def to_fixed_int(floatValue, decimalIdx)
    Number(Math.round(floatValue + 'e' + decimalIdx) + 'e-' + decimalIdx)
  end

  def get_random_strain_name
    choice(StrainNames)
  end

  def random_number(min, max)
    rand * (max - min + 1) + min
  end
end
