class BlogsLoyalty < ApplicationLoyalty
  def edit?
    current_user.admin? || current_user == record.user
  end
end
