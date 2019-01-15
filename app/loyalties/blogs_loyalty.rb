class BlogsLoyalty < ApplicationLoyalty
  def edit?
    # binding.pry
    user.admin? || user == record.user
  end
end
