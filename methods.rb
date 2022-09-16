# 旅行プランの一覧表示
def plan_index(plans)
  puts "旅行プランを選択してください。"
  plans.each.with_index(1) do |plan, i|
    puts "#{i}. #{plan[:place]}旅行(#{plan[:price]}円)"
  end
end

# 旅行プランの選択
def plan_select(plans)
  while true
    puts "プランの番号を選択"
    select_plan = gets.to_i
    break if (1..3).include?(select_plan)

    puts "1〜3の番号を入力して下さい"
  end

  selected_plan = plans[select_plan - 1]
end

# 予約人数の選択
def plan_choose_number(plan_selected)# rubocop:disable all
  puts "#{plan_selected[:place]}旅行ですね"
  while true
    puts "何名で予約されますか？"
    puts "人数を入力"
    choose_number = gets.to_i
    break if (1..).include?(choose_number)

    puts "1以上を入力して下さい"
  end
  choose_number
end

# 合計料金の表示
def plan_total_price(plan_chose_number, plan_selected)# rubocop:disable all
  puts "#{plan_chose_number}名ですね"
  total_price = plan_selected[:price] * plan_chose_number

  if plan_chose_number >= 5
    total_price *= 0.9
    puts "#{plan_chose_number}名以上ですので10%割引となります"
  end

  puts "合計料金は#{total_price.floor}円になります"
end
