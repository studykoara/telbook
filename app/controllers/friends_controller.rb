class FriendsController < ApplicationController
  # 友達一覧
  def index
    @friends = Friend.order("name")
      .page(params[:page]).per(15)
  end

  # 会員情報の詳細
  def show
    @friend = Friend.find(params[:id])
    @telephone = Telephone.find(params[:id])
  end

  # 新規作成フォーム
  def new
    @friend = Friend.new
    @telephone = Telephone.new
  end

  # 友達の編集
  def edit
    @friend = Friend.find(params[:id])
  end

  # 友達の新規登録
  def create
    @friend = Friend.new(params[:friend])
    if @friend.save
      redirect_to :friends, notice: "友達を登録しました。"
    else
      render "new"
    end
  end

  # 友達情報の更新
  def update
    @friend = Friend.find(params[:id])
    @friend.assign_attributes(params[:friend])
    if @friend.save
      redirect_to :friends, notice: "友達情報を更新しました。"
    else
      render "edit"
    end
  end

  # 友達の削除
  def destroy
    @friend = Friend.find(params[:id])
    @friend.destroy
    redirect_to :friends, notice: "友達を削除しました。"
  end
end
