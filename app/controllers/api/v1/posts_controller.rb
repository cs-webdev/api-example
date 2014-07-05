class API::V1::PostsController < API::V1::ApplicationController
  def index
    respond_with(Post.all)
  end
end
