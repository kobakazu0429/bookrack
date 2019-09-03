raise StandardError, "production環境では利用できません" if Rails.env.production?

Book.seed do |b|
  b.id = 1
  b.title = "鋼の錬金術師 1"
  b.author = "荒川弘"
  b.isbn = "9784757506206"
end

Book.seed do |b|
  b.id = 2
  b.title = "Naruto 巻ノ1"
  b.author = "岸本斉史"
  b.isbn = "9784088728407"
end

Book.seed do |b|
  b.id = 3
  b.title = "One piece 巻1"
  b.author = "尾田栄一郎"
  b.isbn = "9784088725093"
end

Book.seed do |b|
  b.id = 4
  b.title = "結界師 v.1"
  b.author = "田辺イエロウ"
  b.isbn = "9784091270610"
end
