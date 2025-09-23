class ProfilesController < ApplicationController
  before_action :set_profile , only: [:edit, :show]
  before_action :authenticate_user!

  def index
    @profiles = current_user.profiles
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

  def edit
  end

  def update
    profile = Profile.find(params[:id])
    profile.update(profile_params)
    redirect_to profiles_path
  end

  def show
  end

  def select
    session[:profile_id] = params[:profile_id]
    redirect_to profiles_path, notice: "プロフィールを切り替えました！"
  end
end


private

def profile_params
  params.require(:profile).permit(:nickname, :gender, :height, :weight, :medical_history, :birthday, :age).merge(user_id: current_user.id)
end

def set_profile
  @profile = Profile.find(params[:id])
end

