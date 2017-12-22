class AccountsController < ApplicationController
  def new
    @account = Account.new
    # note that after you add this, it still won't show anything
    # need to go back to new.html.erb and fill out the form part so it shows stuff
  end
  
  def create
#     render plain: params[:account].inspect
    # ^^ allows us to see that when you hit submit, shit is getting passed through appropriately
    # NOW we need to save that - need to whitelist it first, so make private below
    #### OOOOH AND B/C OF VALIDATION MAKE AN IF CLAUSE AROUND ALL THIS SHIT
    
    if @account.save
#     @account = Account.new(account_params)
#     @account.save
      # after saving, we need to show something to the user, so let's redirect!
      # do rake routes and see that accounts#show is the right path for:
      flash[:notice] = "Account was successfully created"
      redirect_to account_path(@account)
      # but we still need to build that show action first...whoops
    else
      render :new
    end
   
  end
  
  private
    def account_params
      params.require(:account).permit(:title, :description)
      #require top level key, then "permit" the params we want - only title and description!
      # only this shit will then be saved per the create action above
    end 
end
