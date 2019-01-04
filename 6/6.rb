require "minitest/autorun"

regex = /\d{3}-\d{4}/
p regex.class

text = "123,456-789"
p text.split(/,|-/)

text2 = "123-4567"
p text2[/\d{3}-\d{4}/]
p text2[/\d{1}-\d{4}/]

def convert_hash_syntax(old_syntax)
  old_syntax.gsub(/:(\w+) *=> */, '\1: ')
end

class ConvertHashSyntaxTest < Minitest::Test
  def test_convert_hash_syntax
    old_syntax = <<~TEXT
      {
        :name => "Alice",
        :age => 20,
        :gender => :female
      }
    TEXT
    expected = <<~TEXT
      {
        name: "Alice",
        age: 20,
        gender: :female
      }
    TEXT
    puts convert_hash_syntax(old_syntax)
    assert_equal expected, convert_hash_syntax(old_syntax)
  end
end
