# frozen_string_literal: true

class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    delimiter, numbers_string = extract_delimiter_and_numbers(numbers)
    numbers_string.split(delimiter).map(&:to_i).sum
  end

  private

  def extract_delimiter_and_numbers(input)
    if input.start_with?('//')
      delimiter_line, numbers_string = input.split("\n", 2)
      delimiter = Regexp.escape(delimiter_line[2])
      [/[,\n#{delimiter}]/, numbers_string]
    else
      [/[,\n]/, input]
    end
  end
end
