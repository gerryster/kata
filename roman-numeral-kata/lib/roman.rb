require 'pry'
require 'pry-byebug'

def to_roman(int, numeral='')
  return numeral if int == 0

  one_sym, five_sym, ten_sym = 'I', 'V', 'X'
  base = 1
  if int >= 1000
    # Let the nil references happen over 3,999 as this is not defined in Roman
    # Numerals:
    one_sym, five_sym, ten_sym = 'M', nil, nil
    base = 1000
  elsif int >= 100
    one_sym, five_sym, ten_sym = 'C', 'D', 'M'
    base = 100
  elsif int >= 10
    one_sym, five_sym, ten_sym = 'X', 'L', 'C'
    base = 10
  end

  if int >= 9 * base
    to_roman(int - 9 * base, numeral + one_sym + ten_sym)
  elsif int >= 5 * base
    to_roman(int - 5 * base, numeral + five_sym)
  elsif int >= 4 * base
    to_roman(int - 4 * base, numeral + one_sym + five_sym)
  else
    to_roman(int - 1 * base, numeral + one_sym)
  end
end
