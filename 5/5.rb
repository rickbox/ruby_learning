currencies = {"japan" => "yen"}
currencies["us"] = "dollar" 
p currencies
p currencies.class

a = {"x" => 1, "y" => 2, "z" => 3}
b = {"z" => 3, "x" => 1, "y" => 2,}
p a == b

p :apple.class
p :apple.object_id
p :apple.object_id
p :apple.methods

c = {z: 3, x: 1, y: 2,}
d = {x: 1, y: 2, z: 3,}
p c == d

e = {z: :abc, x: :def, y: :ghi,}
f = {x: :def, y: :ghi, z: :abc,}
p e == f

p f.keys