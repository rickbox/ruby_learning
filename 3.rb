p "1".to_s
p 1.to_s
p nil.to_s

p 10.to_s(16)

# コメント

=begin
  複数行コメント
=end

# 空白文字でも動作する
p(5+  1)

# 変数名はスネーク
special_price = 200

# 多重代入
a,b = 1,2

# ダブルクオート
puts "こん\nにちは"

# シングルクオート
puts 'こん\nにちは'

name = "Alice"
p "HEllo,#{name}"
p "HEllo," + name 

# エスケープ
p "HEllo,\#{name}"
p 'Don\'t'

p "ruby" == "ruby"
p "a" < "b"

# 数値
p 1_000_000_000

# 正と負を反転
n = 1
p -n

# 整数同士の割り算は整数になる
p 1/2
p 1.0/2

# to_fメソッド 整数を少数にする
p n.to_f

p n += 1
p n -= 1

# 数値と文字列を演算子で加算などできない
p 1 + "10".to_i
p 1 + "10.5".to_f
number = 3
p "Number is " + number.to_s

p true

# nul = false
data = 1
if data != nil
  p "でーたあり"
else
  p "でーたなし"
end

data = 1
if data != nil
  p "でーたあり"
else
  p "でーたなし"
end

p true && false
p true || false

t1 = true
f1 = false
p !t1
p !f1

test = 3
testf = 
if test == 1
  p "t1"
elsif test == 2
  p "t2"
else
  p "t3"
end

p testf

# if文違う書き方
num = 7
day = 1
num *= 5 if day ==1
p num

# メソッド
def add(a,b)
  cul = a + b
  p cul
end

add(33,44)

#"こんにちは"または"hello"がメソッドの戻り値になる 
def greeting( country) 
  if country == 'japan' 
    'こんにちは' 
  else 
    'hello' 
  end 
end 
p greeting(' japan') 

# FizzBuzzプログラム
def fizz_buzz(n)
  if n % 3 == 0 && n % 5 == 0
    p "Fizz_Buzz"
  elsif n % 3 == 0
    p "Fizz"
  elsif n % 5 == 0
    p "Buzz"
  else
    p n
  end
end

fizz_buzz(1)
fizz_buzz(6)
fizz_buzz(20)
fizz_buzz(45)

# 文字列
p "ABC".class
# %q!はシングルクオートで囲んだことと同じ
p %q!He said,Don'tspeak.!
# %Q!はダブルクオートで囲んだことと同じ
p %Q!He said!

# 区切り文字(↑だったら→!)は任意の記号を使える
p %q?He said,Don'tspeak.?

# ヒアドキュメント
a =   <<-TEXT
これはヒアドキュメント
TEXT

puts a

p sprintf("%0.3f",1.2)

p "\u3042"

#p とputsの違い
p "あいう\nえお"
puts "あいう\nえお"

# 整数
p 10.class
# 少数
p 1.5.class
#  有理数
p 3r.class
# 複素数
p (0.3 - 0.5i).class
# 4つのクラスの親クラスはNumeric

# 最後に評価した式の値を返す
p 1 && 2
p 1 && 2 && 3
p 1 && nil && 2
p nil || 2 || false

status = "error"

unless status == "ok" then
  p "異常あり"
else
  p "正常です"
end

# 三項演算子
n = 11
p n > 10? "10より大きい":"10以下"
m = 90
message = m > 100? "100より大きい":"100以下"
p message

# デフォルト値付きの引数
def greeting(country = "japan")
  if country == "japan"
    p "こんにちは"
  else
    p "Hello"
  end
end

greeting
greeting("us")

p 1.odd?
p 222.even?
p 1.nil?

# bとcは同じオブジェクト
a = "hello"
b = "hello"
c = b
p a.object_id
p b.object_id
p c.object_id
b.upcase!
p c

# gem
require "date"
puts Date.today

# MiniTest
# aがbと等しければパスする 
# assert_ equal b, a 
# aが真であればパスする 
# assert a 
# aが偽であればパスする
# refute a
require 'minitest/autorun'

class FooTest < Minitest::Test
  def test_sample
    assert_equal 'RUBY', 'RUBY'.capitalize
    assert_equal 'RUBY', 'ruby'.upcase
  end
end

def fizz_buzz(n)
  if n % 3 == 0 && n % 5 == 0
    "Fizz_Buzz"
  elsif n % 3 == 0
    "Fizz"
  elsif n % 5 == 0
    "Buzz"
  else
    n.to_s
  end
end

class FizzBuzzTest < Minitest::Test
  def test_fizz_buzz
    assert_equal "1",fizz_buzz(1)
    assert_equal "2",fizz_buzz(2)
    assert_equal "Fizz",fizz_buzz(3)
    assert_equal "4",fizz_buzz(4)
    assert_equal "Buzz",fizz_buzz(5)
    assert_equal "Fizz_Buzz",fizz_buzz(30)
  end
end