class UsercleanerJob < ApplicationJob
  queue_as :default

  def perform(*args)
    @user = User.find_by "moneyspent < 10"
    @user.destroy
    puts "Destroying non-spender account"  end
end
