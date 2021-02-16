require_relative '../lib/roman'

RSpec.describe 'Roman Numerals' do
  describe 'to_roman' do
    EXAMPLES = {
      0 => '',
      1 => 'I',
      2 => 'II',
      3 => 'III',
      4 => 'IV',
      5 => 'V',
      6 => 'VI',
      7 => 'VII',
      8 => 'VIII',
      9 => 'IX',
      10 => 'X',
      11 => 'XI',
      12 => 'XII',
      13 => 'XIII',
      14 => 'XIV',
      15 => 'XV',
      16 => 'XVI',
      17 => 'XVII',
      18 => 'XVIII',
      19 => 'XIX',
      20 => 'XX',
      21 => 'XXI',
      24 => 'XXIV',
      29 => 'XXIX',
      30 => 'XXX',
      39 => 'XXXIX',
      40 => 'XL',
      41 => 'XLI',
      42 => 'XLII',
      43 => 'XLIII',
      44 => 'XLIV',
      45 => 'XLV',
      46 => 'XLVI',
      47 => 'XLVII',
      48 => 'XLVIII',
      49 => 'XLIX',
      50 => 'L',
      51 => 'LI',
      55 => 'LV',
      60 => 'LX',
      89 => 'LXXXIX',
      90 => 'XC',
      91 => 'XCI',
      94 => 'XCIV',
      100 => 'C',
      101 => 'CI',
      145 => 'CXLV',
      200 => 'CC',
      244 => 'CCXLIV',
      300 => 'CCC',
      400 => 'CD',
      700 => 'DCC',
      744 => 'DCCXLIV',
      999 => 'CMXCIX',
      1000 => 'M',
      1999 => 'MCMXCIX',
      2000 => 'MM',
      2001 => 'MMI',
    }.freeze

    EXAMPLES.each do |int, roman|
      specify("#{int} => #{roman}") { expect(to_roman(int)).to eq roman }
    end
  end
end

=begin

19

'' + to_roman(9, 'X')
  'X' + to_roman(-1, 'X')
    'IX'

40

'' + to_roman(-10, 'L')
  'IIIIIIIIIIIL'

=end
