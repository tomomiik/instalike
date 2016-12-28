class InstalikesController < ApplicationController
  before_action :set_instum, only: [:edit, :update, :destroy]
  def index
    @instalikes = Instum.all
  end

  def new
    if params[:back]
      @instalike = Instum.new(instums_params)
    else
      @instalike = Instum.new
    end
  end

  def create
    @instalike = Instum.new(instums_params)
   if @instalike.save
    redirect_to instalikes_path, notice: "投稿が完了しました"
   else
     render 'new'
   end
  end

  def edit
  end

  def update
    if @instalike.update(instums_params)
      redirect_to instalikes_path, notice:"投稿を更新しました"
    else
      render 'edit'
    end
  end

  def destroy
    @instalike.destroy
    redirect_to instalikes_path, notice: "投稿を削除しました"
  end

  private
  def instums_params
    params.require(:instum).permit(:title, :content)
  end
  def set_instum
    @instalike = Instum.find(params[:id])
  end
end
