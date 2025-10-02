class MemosController < ApplicationController
 before_action :set_profile

  def index
    @memos = @profile.memos.order(created_at: :desc)
  end

  def create
    @memo = @profile.memos.build(memo_params)
    if @memo.save
      redirect_to profile_path(@profile), notice: "メモを保存しました"
    else
      render :new, alert: "保存に失敗しました"
    end
  end

  private

  def set_profile
    @profile = Profile.find(params[:profile_id])
  end

   def memo_params
    params.require(:memo).permit(:title, :content)
  end
end

