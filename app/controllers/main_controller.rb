class MainController < ApplicationController
  skip_before_action :authorize

  def tab1
    @promotions = Promotion.find(6)
    @currentView = action_name
    @selectedTab1 = "is-selected"
    session[:cart_prod] = []
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
      @searchinput = params[:searchinput]
      @searchcriteria = "%#{params[:searchinput]}%"
      @productlist = StoreProduct.where("description like ?", @searchcriteria)
    end
  end

  def filter
    @results=0
    if !params[:searchinput].nil?
      @results=1
      @searchinput = params[:searchinput]
      @searchcriteria = "%#{params[:searchinput]}%"
      @productlist = StoreProduct.where("description like ?", @searchcriteria)
    end
  end

  def cart
    @selectedCart = "is-selected"
  end

  def buy
    @prodid = params[:prodid].to_i;
    @qty = params[:qty].to_i;

    session[:cart_prod] << @prodid
    session[:cart_qty] << @qty

    redirect_to main_cart_path
  end

  def update_cart
    cartid = params[:cartid].to_i;

    session[:cart_prod].delete_at(cartid)
    session[:cart_qty].delete_at(cartid)

    redirect_to main_cart_path
  end

  def checkout
    @cartlen = session[:cart_prod].length
    i = 0
    if @cartlen > 0
      orderid = Order.create(account_id: session[:user_id], salesdate: Date.today, salesnotes: session[:cart_prod].to_s)
      while i < @cartlen
        OrderItem.create(order_id: orderid.id, product_id: session[:cart_prod][i].to_i, salesprice: StoreProduct.find(session[:cart_prod][i].to_i).price, prod_qty: session[:cart_qty][i])
        i = i + 1
      end

      session[:cart_prod] = Array.new
      session[:cart_qty] = Array.new

      redirect_to main_checkout_path
    end
  end
end
