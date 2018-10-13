class Takeaway
  def initialize(menu_class, text_class, basket_class)
    @menu = menu_class.new
    @basket = basket_class.new
    @text = text_class
  end

  def list_dishes
    @menu.list_dishes
  end

  def add_dish(name, quantity)
    @basket.add_dish(name, quantity)
  end

  def place_order(total)
    raise "Incorrect total given!" if total != @basket.total
    send_text
    "Order placed! Look out for a confirmation text."
  end

  private

  def send_text
    @text.new.send
  end
end
