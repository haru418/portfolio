class PostsController < ApplicationController
  def index
    @posts = [
      "チキンのトマトソース煮込み",
      "肉じゃが",
      "麻婆豆腐",
      "チキンのパリパリ焼き",
    ]
  end
end
