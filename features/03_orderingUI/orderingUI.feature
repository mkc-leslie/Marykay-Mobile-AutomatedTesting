@Leslie
Feature: 01 submit a native order
          In order to simulate login activities
          As a valid consultant
          I want to login,enter my ordering module and submit an ordering
             And I press the "Internal - UAT" button
   And I enter "000000000060" into input field number 1
   And I enter "pink2015" into input field number 2

  @p1
  Scenario: 002 enter my order module and submit an order
  Then I wait for 3 seconds
  Then I select test environment "UAT"
  And I press the "否" button
  Then I wait for progress
  And I wait for 20 seconds
  Then I wait for the "登录" button to appear
  Then I wait for 3 seconds
   Then I clear input field number 1
   Then I enter "000000000060" and "pink2015"
   Then I press the "登录" button
   And I wait for 20 seconds
   When I see the text "欢迎回来"
   And I wait for 30 seconds
   Then I wait for the "更新日志" view to appear
   Then I click on screen 90% from the left and 20% from the top
   When I see the text "我的订单"
   Then I enter myOrdering 4
   And I wait for 3 seconds
Then I click on screen 50% from the left and 50% from the top
And I wait for 10 seconds
Then I open shoppingCart 14
And I wait for 3 seconds
Then I clear shoppingCart product "删除" "确 定" "去添加商品"
And I wait for 3 seconds
Then I add product to shoppingCart 7
Then I open shoppingCart 14

Then I submit offline shoppingCart "提交购物车"
Then I click selectBonus button "选择赠品"
Then I take a screenshot
