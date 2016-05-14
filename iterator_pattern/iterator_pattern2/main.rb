require './portfolio.rb'
require './account.rb'

my_portfolio = Portfolio.new
my_portfolio.add_account Account.new("one", 1000)
my_portfolio.add_account Account.new("two", 100)
p my_portfolio.any? {|account| account.balance > 2000}
