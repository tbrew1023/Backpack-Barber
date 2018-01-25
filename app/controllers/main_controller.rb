class MainController < ApplicationController

  def tab1
    @currentView = action_name;
    @selectedTab1 = "is-selected"
  end

  def tab2
    @currentView = action_name;
    @selectedTab2 = "is-selected"
  end

  def tab3
    @currentView = action_name;
    @selectedTab3 = "is-selected"
  end

  def help
    @currentView = action_name;
  end

  def privacy
    @currentView = action_name;
  end
end
