// Menu Example
import strainNames from './data';

function choice(arr) {
  return arr[Math.floor(arr.length * Math.random())];
}

// Round the number to the decimals nth idx, e.g:
// round(1.005, 2) becomes // 1.01
export function toFixedInt(floatValue, decimalIdx) {
  return Number(Math.round(floatValue + 'e' + decimalIdx) + 'e-' + decimalIdx);
}

export const getRandomStrainName = () => choice(strainNames);