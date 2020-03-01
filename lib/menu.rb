require_relative "./default_menu_list.rb"
class Menu
  def initialize(list = DEFAULT_MENU_LIST)
    @list = list
  end

  def print
    puts "Menu"
    puts ""
    @list.map{|item| puts "#{item[:name]}      £#{item[:price]}" }
  end

  def dish_exists?(dish)
    @list.map {|item| return true if item[:name] == dish}
    false
  end

  def dish_available?(dish:, quantity:)
    @list.map{ |item| 
    if item[:name] == dish
      return false if (item[:available] - quantity) < 0
      return true 
    end }
  end

end