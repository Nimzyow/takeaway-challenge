require_relative "./default_menu_list.rb"
class Menu
  def initialize(list = DEFAULT_MENU_LIST)
    @list = list
  end

  def print
    puts "Menu"
    puts ""
    @list.map{|item|
    puts "#{item[:name]}      £#{item[:price]}"
    }
  end

  def dish_exists?(dish)
    
  end

  def dish_available?(dish:, quantity:)
    
  end
end