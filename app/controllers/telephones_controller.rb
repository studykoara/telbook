class TelephonesController < ApplicationController

  def index
    @friend = Friend.find(params[:friend_id])
    @telephones = @friend.telephones
    @telephone = Telephone.new(params[:telephone])
  end

  def create
    @telephone = Telephone.new(params[:telephone])
    @telephone.friend = Friend.find(params[:friend_id])
    if @telephone.save
      # redirect_to "/friends/#{params[:friend_id]}/telephones", notice: "電話番号を登録しました。"
      redirect_back(fallback_location: root_path, notice: "電話番号を登録しました。")
    else
      @friend = Friend.find(params[:friend_id])
      @telephone.friend = @friend
      @telephones = @friend.telephones
      render action: :index
    end
  end

  def destroy
    @telephone = Telephone.find(params[:id])
    @telephone.destroy
    redirect_back(fallback_location: root_path, notice: "電話番号を削除しました。")
    # redirect_to "root_path", notice: "電話番号を削除しました。"
    # render action: :index
  end
end
