class PagesController < ApplicationController
  def home
  end
  
  def fortune
    @fortunes = []
    File.open('./fortune.txt') { |fortune| @fortunes << fortune }
    @one_fortune = @fortunes.sample    
  end
  
  def lottery
    @lottery = []
    available_lottery_numbers = (1..47).to_a.shuffle
    5.times { |i| @lottery << available_lottery_numbers.pop }
    @mega = rand(27) + 1
  end
end
