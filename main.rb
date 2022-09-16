require "./methods"

# 旅行プランデータ
plans = [
  { place: "沖縄", price: 10_000 },
  { place: "北海道", price: 20_000 },
  { place: "九州", price: 15_000 }
]
# メソッドの呼び出し
plan_index(plans)
plan_selected = plan_select(plans)
plan_chose_number = plan_choose_number(plan_selected)
plan_total_price(plan_chose_number, plan_selected)
