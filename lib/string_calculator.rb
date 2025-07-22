class StringCalculator

  def self.add(input)
    return 0 if input.strip.empty?
    if input.start_with?("//")
      header, input = input.split("\n", 2)
      delimiter = Regexp.escape(header[2..])
      numbers = input.split(/#{delimiter}/).map(&:to_i)
    else
      numbers = input.split(/,|\n/).map(&:to_i)
    end
    numbers.sum
  end
end
