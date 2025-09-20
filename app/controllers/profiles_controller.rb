class ProfilesController < ApplicationController

  def index
    @profiles = current_user.profiles
  end

  def show
    @profile = Profile.find(params[:id])
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = current_user.profiles.new(profile_params)  # user_id を current_user.id でセット
    if @profile.save
      redirect_to profiles_path, notice: "プロフィールを作成しました"
    else
      render :new
    end
  end

  def destroy
    profile = Profile.find(params[:id])
    profile.destroy
    redirect_to root_path
  end
end


private

def profile_params
  params.require(:profile).permit(:nickname, :gender, :height, :weight, :medical_history, :birthday, :age)
end