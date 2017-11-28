books = %w(吾輩は猫である 坊っちゃん 草枕 二百十日 野分 虞美人草 坑夫 三四郎 それから 門)

books.each.with_index(1) do |title, index|
  Book.create(id: index, title: title, price: Random.rand(1000..2000))
end
