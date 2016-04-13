class PagesController < ApplicationController
  def home
  end
  
  def fortune
    @fortunes = ['You will be hungry for Chinese food very soon.',
                 'You will die in 3 days unless you e-mail this message to 50 other people.',
                 'You will make a lot of money investing in farm equipment.']
    # File.open('./fortune.txt') { |fortune| @fortunes << fortune }
    @one_fortune = @fortunes.sample    
  end
  
  def lottery
    @lottery = (1..47).to_a.shuffle.pop 5
    @mega = rand(27) + 1
  end
end
