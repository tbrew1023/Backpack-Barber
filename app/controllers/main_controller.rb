class MainController < ApplicationController

  def tab1
    @time = Time.now
    @currentView = action_name;
    @selectedTab1 = "is-selected"
  end

  def tab2
    @time = Time.now
    @currentView = action_name;
    @selectedTab2 = "is-selected"
  end

  def tab3
    @time = Time.now
    @currentView = action_name;
    @selectedTab3 = "is-selected"
  end
end
