class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @posts = @user.posts.order(created_at: :desc) # ユーザの投稿を作成日時が新しい順に取得
    @post_count = @posts.count # 投稿数をカウント
  end
end
