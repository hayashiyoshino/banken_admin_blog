class BlogsLoyalty < ApplicationLoyalty
  def edit?
    # binding.pry
    record = @blog
    user.admin? || user == record.user
  end
end
