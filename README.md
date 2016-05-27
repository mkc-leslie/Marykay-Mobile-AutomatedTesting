# Prerequisite

## Android

Follow https://github.com/calabash/calabash-android/blob/master/documentation/installation.md to install JDK, Android SDK, Ruby, Ant and then calabash-android 

## Tools 
1. Guthub Desktop for version control
2. Android Studio or Sublime for scripting
3. Ansicon for running cucumber
4. UIautomatorviewer(under Android SDK) for locating controls 

Above tools could be downloaded from baidu share, http://pan.baidu.com/s/1pLtg5Wf

# Workflow
1. Fork the project to your own repro
2. Clone your repro to your local machine
3. Update your feature file and commit
4. Push your local change to your own repro
5. Request a pull request to merge your change to the original project

# Scripting Requirement
1. The feature should titled as number_featurename.feature, like 01_login.feature 
2. Use Connextra format for feature description such as 
   *
   * In order to [benefit] ...
   * As a [stakeholder]...
   * I wants to [feature] ...
   *  
   * In order to simulate login activities
    * As a valid consultant
    * I want to login, logout and re-login. 
3. Scenarios should be titled as number_scneario description, like 001 I can not log into my app with wrong password
4. Use cucumber keywords smartly. 
    |Given（给定)|setup(创建测试所需环境)|
    |When（当）	 |test（触发被测事件）   |
    |Then（则）	 |assert(断言，验证结果) |
    
# Next Goal
1. 提高抽象能力，抽象每一个Scenario， 避免在Scenario中将UI操作Step化， 针对用户界面控件的描述属于较低层次的领域描述，应该对其进行合理的抽象提高描述的领域层次
2. 提高设计能力，力求每个Scenario都有独立意义，能够不依赖其他任何场景独立运行
3. 提高代码能力，使用更加灵活的匹配、正则来实现Step的具体操作，http://coryschires.com/ten-tips-for-writing-better-cucumber-steps/