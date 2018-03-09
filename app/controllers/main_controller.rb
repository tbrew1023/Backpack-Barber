class MainController < ApplicationController
  #skip_before_action :authorize

  def tab1
    @promotions = Promotion.find(6)
    @currentView = action_name
    @selectedTab1 = "is-selected"
  end

  def tab2
    @currentView = action_name
    @selectedTab2 = "is-selected"
  end

  def tab3
    @currentView = action_name
    @selectedTab3 = "is-selected"
  end

  def tab4
    @currentView = action_name
    @selectedTab4 = "is-selected"
  end

  def help
    @currentView = action_name
  end

  def privacy
    @currentView = action_name
  end

  def search
    @results=0
    if !params[:searchinput].nil?
      @results=1
      @searchinput=params[:searchinput]
      @searchcriteria="%#{params[:searchinput]}%"
      @colorlist=ProductColor.where("color like ?",@searchcriteria)
    end
  end
end
