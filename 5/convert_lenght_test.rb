require "minitest/autorun"

UNITS = {m: 1.0, ft: 3.28, in: 39.37}

# round(2)は小数点第3位を四捨五入する
def convert_length(length, from:, to:)
  (length / UNITS[from] * UNITS[to]).round(2)
end

class ConvertLenghtTest < Minitest::Test
  def test_convert_lenght
    assert_equal 39.37, convert_length(1, from: :m, to: :in)
    assert_equal 0.38, convert_length(15, from: :in, to: :m)
    assert_equal 10670.73, convert_length(35000, from: :ft, to: :m)
  end
end

