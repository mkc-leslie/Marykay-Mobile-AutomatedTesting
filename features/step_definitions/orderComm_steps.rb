# 选择App测试环境
Then /^I select test environment "([^\"]*)"$/ do |text|
	tap_when_element_exists("* {text CONTAINS[c] '#{text}'}")
end


# 进入“我的订单”模块
Then /^I enter myOrdering (\d+)$/ do |index|
	tap_when_element_exists("android.widget.Button index:#{index.to_i-1}")
end


# 更改购买产品数量
Then /^I change product count (\d+) on position (\d+)$/ do |num, index|
  enter_text("android.widget.EditText index:#{index.to_i-1}", num)
end


# 清空shoppingCart并进入到productList
Then /^I clear shoppingCart product "([^\"]*)" "([^\"]*)" "([^\"]*)"$/ do |text, confirm, productList|
	while has_text?(text) do
  		tap_when_element_exists("* {text CONTAINS[c] '#{text}'}")
  		tap_when_element_exists("* {text CONTAINS[c] '#{confirm}'}")
	end
tap_when_element_exists("* {text CONTAINS[c] '#{productList}'}")
end


# 添加product到shoppingCart
Then /^I add product to shoppingCart (\d+)$/ do |index|
	tap_when_element_exists("android.widget.Button index:#{index.to_i-1}")
end


# 打开shoppingCart
Then /^I open shoppingCart (\d+)$/ do |index|
	tap_when_element_exists("android.widget.Button index:#{index.to_i-1}")
end


# 提交本地shoppingCart
Then /^I submit offline shoppingCart "([^\"]*)"$/ do |submitShoppingCart|
	tap_when_element_exists("* {text CONTAINS[c] '#{submitShoppingCart}'}")
end


# 点击“我的赠品”button
Then /^I click selectBonus button "([^\"]*)"$/ do |selectBonus|
	tap_when_element_exists("* {text CONTAINS[c] '#{selectBonus}'}")
end


# 选择赠品数量
Then /^I select Bonus count "([^\"]*)" "([^\"]*)"$/ do |bonusConfirmTab, hasFreeBonus|
	# 判断是否有“待确认赠品”，如有则切换到该Tab
	while has_text?(bonusConfirmTab) do
		tap_when_element_exists("* {text CONTAINS[c] '#{bonusConfirmTab}'}")
	end
	# 判断是否有必选的免费赠品
	while has_text?(hasFreeBonus) do
		tap_when_element_exists("* {text CONTAINS[c] '#{hasFreeBonus}'}")
	end
end