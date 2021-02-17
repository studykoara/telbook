names = %w(Taro Jiro Hana John Mike Sophy Bill Alex Mary Tom)
0.upto(9) do |idx|
  Friend.create(name: names[idx])
end

0.upto(29) do |idx|
  Friend.create(name: "John#{idx + 1}")
end
