# 旅行プランの一覧表示
def disp_plans(plans)
  puts "旅行プランを選択してください。"
  plans.each.with_index(1) do |plan, i|
    puts "#{i}. #{plan[:place]}旅行(#{plan[:price]}円)"
  end
end

# 旅行プランの選択
def select_plan(plans)
  while true
    puts "プランの番号を選択"
    select_plan_num = gets.to_i
    break if (1..3).include?(select_plan_num)

    puts "1〜3の番号を入力して下さい"
  end

  plans[select_plan_num - 1]
end

# 予約人数の選択
def choose_plan_num(selected_plan)# rubocop:disable all
  puts "#{selected_plan[:place]}旅行ですね"
  while true
    puts "何名で予約されますか？"
    puts "人数を入力"
    choose_num = gets.to_i
    break if (1..).include?(choose_num)

    puts "1以上を入力して下さい"
  end
  choose_num
end

# 合計料金の表示
def total_charge(chose_plan_num, selected_plan)# rubocop:disable all
  puts "#{chose_plan_num}名ですね"
  total_price = selected_plan[:price] * chose_plan_num

  if chose_plan_num >= 5
    total_price *= 0.9
    puts "#{chose_plan_num}名以上ですので10%割引となります"
  end

  puts "合計料金は#{total_price.floor}円になります"
end
