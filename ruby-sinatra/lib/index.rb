# Menu Example
import strainNames from './data';

module ApplicationHelper
  def choice(arr)
    arr[Math.floor(arr.length * Math.random())]
  end

  # Round the number to the decimals nth idx, e.g:
  # round(1.005, 2) becomes # 1.01
  def toFixedInt(floatValue, decimalIdx) {
    Number(Math.round(floatValue + 'e' + decimalIdx) + 'e-' + decimalIdx);
  end

  # export const getRandomStrainName = () => choice(strainNames);

  def randomNumber(min, max) {
    Math.random() * (max - min + 1) + min;
  end

end