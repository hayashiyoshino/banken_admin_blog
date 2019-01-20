class BlogsLoyalty < ApplicationLoyalty
  def edit?
    @user.admin? || @user == @record.user
  end
end
