@Leslie
Feature:Login Intouch App & Enter my order module

Scenario:
   Given I press the "Internal - UAT" button
   And I press the "否" button
   When I wait for progress
   Then I wait for 300 seconds
   Then I wait for 30 seconds
   When I see the text "消息"
   And I wait for 30 seconds
   Then take picture