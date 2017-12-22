class AccountsController < ApplicationController
  def new
    @account = Account.new
    # note that after you add this, it still won't show anything
    # need to go back to new.html.erb and fill out the form part so it shows stuff
  end
end
