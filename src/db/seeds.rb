# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

# 管理者ユーザーを1人作成する
User.create!(name:  "Admin",
  email: "admin@example.com",
  password:              "Admin-0",
  password_confirmation: "Admin-0",
  admin: true)

# 一般ユーザーを20人作成する
for i in 1..20
  User.create!(name:  "User #{i}",
    email: "user#{i}@example.com",
    password:              "User-#{i}",
    password_confirmation: "User-#{i}",
    admin: false)
end

# ユーザーの一部を対象にマイクロポストを生成する
users = User.order(:created_at).take(5)
for i in 1..25
  content = "Sample Text #{i}"
  users.each { |user| user.microposts.create!(content: content) }
end

# サンプルデータにfollowing/followerの関係性を追加する 14.14
# 以下のリレーションシップを作成する
users = User.all
user  = users.first
following = users[2..10]
followers = users[5..20]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }

# Type-model を作成
CSV.foreach("db/type_id_name.csv") do |row|
  Type.create!(
    type_id: row[0],
    type_name: row[1]
  )
end

# Egg-model を作成
CSV.foreach("db/egg_id_name.csv") do |row|
  Egg.create!(
    egg_id: row[0],
    egg_name: row[1]
  )
end

# サンプルポケモンを作成
CSV.foreach("db/sample_pokemon.csv") do |row|
  Pokemon.create!(
    name_id: row[0],
    name: row[1],
    type1_id: row[2],
    type2_id: row[3],
    egg1_id: row[4],
    egg2_id: row[5],
    height: row[6],
    weight: row[7],
    h_param: row[8],
    a_param: row[9],
    b_param: row[10],
    c_param: row[11],
    d_param: row[12],
    s_param: row[13]
  )
end

# Color-model を作成
CSV.foreach("db/color_info.csv") do |row|
  Color.create!(
    name: row[0],
    code: row[1],
    brightness: row[2]
  )
end

# Eqp_n-model を作成
CSV.foreach("db/eqp_1.csv") do |row|
  Eqp1.create!(
    param_d: row[0].to_i,
    param_md: row[1].to_i,
    param_1: row[2].to_i,
    param_2: row[3].to_i,
    param_3: row[4].to_i,
    param_4: row[5].to_i,
    param_5: row[6].to_i
  )
end

CSV.foreach("db/eqp_2.csv") do |row|
  Eqp2.create!(
    param_d: row[0].to_i,
    param_md: row[1].to_i,
    param_1: row[2].to_i,
    param_2: row[3].to_i,
    param_3: row[4].to_i,
    param_4: row[5].to_i,
    param_5: row[6].to_i
  )
end

CSV.foreach("db/eqp_3.csv") do |row|
  Eqp3.create!(
    param_d: row[0].to_i,
    param_md: row[1].to_i,
    param_1: row[2].to_i,
    param_2: row[3].to_i,
    param_3: row[4].to_i,
    param_4: row[5].to_i,
    param_5: row[6].to_i
  )
end


# too many data
# # Eqp_total-model を作成
# model_1 = Eqp1.all
# model_2 = Eqp2.all
# model_3 = Eqp3.all

# model_1.each do |m1|
#   model_2.each do |m2|
#     model_3.each do |m3|
#       tmp_ary = []
#       tmp_ary.push(m1.param_d + m2.param_d + m3.param_d)
#       tmp_ary.push(m1.param_md + m2.param_md + m3.param_md)
#       tmp_ary.push(m1.param_1 + m2.param_1 + m3.param_1)
#       tmp_ary.push(m1.param_2 + m2.param_2 + m3.param_2)
#       tmp_ary.push(m1.param_3 + m2.param_3 + m3.param_3)
#       tmp_ary.push(m1.param_4 + m2.param_4 + m3.param_4)
#       tmp_ary.push(m1.param_5 + m2.param_5 + m3.param_5)
#       Eqptotal.create!(
#         param_d: tmp_ary[0].to_i,
#         param_md: tmp_ary[1].to_i,
#         param_1: tmp_ary[2].to_i,
#         param_2: tmp_ary[3].to_i,
#         param_3: tmp_ary[4].to_i,
#         param_4: tmp_ary[5].to_i,
#         param_5: tmp_ary[6].to_i
#       )
#     end
#   end
# end

# # Eqp_total-model を作成
# CSV.foreach("db/eqp_1.csv") do |row_1|
#   CSV.foreach("db/eqp_2.csv") do |row_2|
#     CSV.foreach("db/eqp_3.csv") do |row_3|
#       tmp_ary = []
#       tmp_ary.push(row_1[0].to_i + row_2[0].to_i + row_3[0].to_i)
#       tmp_ary.push(row_1[1].to_i + row_2[1].to_i + row_3[1].to_i)
#       tmp_ary.push(row_1[2].to_i + row_2[2].to_i + row_3[2].to_i)
#       tmp_ary.push(row_1[3].to_i + row_2[3].to_i + row_3[3].to_i)
#       tmp_ary.push(row_1[4].to_i + row_2[4].to_i + row_3[4].to_i)
#       tmp_ary.push(row_1[5].to_i + row_2[5].to_i + row_3[5].to_i)
#       tmp_ary.push(row_1[6].to_i + row_2[6].to_i + row_3[6].to_i)
#       Eqptotal.create!(
#         param_d: tmp_ary[0].to_i,
#         param_md: tmp_ary[1].to_i,
#         param_1: tmp_ary[2].to_i,
#         param_2: tmp_ary[3].to_i,
#         param_3: tmp_ary[4].to_i,
#         param_4: tmp_ary[5].to_i,
#         param_5: tmp_ary[6].to_i
#       )
#     end
#   end
# end

