require "led/version"

module Led
  DIGITS = {
    0 => [' _ ',
          '| |',
          '|_|'],
    1 => ['   ',
          ' | ',
          ' | '],
    2 => [' _ ',
          ' _|',
          '|_ '],
    3 => [' _ ',
          ' _|',
          ' _|'],
    4 => ['   ',
          '|_|',
          '  |'],
    5 => [' _ ',
          '|_ ',
          ' _|'],
    6 => [' _ ',
          '|_ ',
          '|_|'],
    7 => [' _ ',
          '  |',
          '  |'],
    8 => [' _ ',
          '|_|',
          '|_|'],
    9 => [' _ ',
          '|_|',
          ' _|']
  }.freeze

  class << self
    def to_led(n)
      digits = n.to_s.split('').map(&:to_i).map(&DIGITS)
      (0..2).map do |line|
        digits.map { |d| d[line] }.join(' ')
      end.join("\n")
    end
  end
end
