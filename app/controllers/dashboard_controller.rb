class DashboardController < ApplicationController
  def index
    @posts = current_user.posts.all.map(&:decorate)
    @comments = []
    @posts.each do |post|
      comments_arr = post.comments
      comments_arr.each { |comment| @comments << comment }
    end
  end
end
