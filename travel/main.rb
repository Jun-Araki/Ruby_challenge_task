require "./methods"

# 旅行プランデータ
plans = [
  { place: "沖縄", price: 10_000 },
  { place: "北海道", price: 20_000 },
  { place: "九州", price: 15_000 }
]
# メソッドの呼び出し
disp_plans(plans)
selected_plan = select_plan(plans)
chose_plan_num = choose_plan_num(selected_plan)
total_charge(chose_plan_num, selected_plan)
