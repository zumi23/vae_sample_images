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

# Color-model を作成
# CSV.foreach("db/color_info.csv") do |row|
#   Color.create!(
#     name: row[0],
#     code: row[1],
#     brightness: row[2]
#   )
# end


