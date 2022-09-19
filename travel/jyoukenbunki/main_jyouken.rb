puts <<~TEXT
       旅行プランを選択して下さい。

       1. 沖縄旅行（10000円）
       2. 北海道旅行（20000円）
       3. 九州旅行（15000円）

     TEXT

## ユーザーのキーワード入力を待機

while true
  puts "プランの番号を選択"
  select_plan = gets.to_i
  break if (1..3).include?(select_plan)
  puts "1〜3の番号を入力して下さい"
end

case select_plan
when 1 then
  plan_place = "沖縄"
  plan_price = 10000 
when 2 then
  plan_place = "北海道"
  plan_price = 20000 
when 3 then
  plan_place = "九州"
  plan_price = 15000 
end

puts "#{plan_place}旅行ですね"

while true
  puts "何名で予約されますか？"
  puts "人数を入力"
  choose_number = gets.to_i
  break if (1..).include?(choose_number)
  puts "1以上を入力して下さい"
end

case choose_number
when 1..4 then
  puts "#{choose_number}名ですね"
  total_charge = plan_price * choose_number
when 5.. then
  puts "#{choose_number}名ですね"
  puts "5名以上ですので10%割引となります"
  total_charge = (plan_price * choose_number * 0.9).to_i
end

puts "合計料金は#{total_charge}円になります"