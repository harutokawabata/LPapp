class Public::SocialsController < ApplicationController
  def new
    @social = Social.new
  end
  
  def create
    social = Social.new(social_params)
    # @social.url = social_params(:url)
    # buybug
    social.save
    redirect_to public_socials_new_path
  end

  def index
    @socials = Social.all
  end
  

  def edit
  end

  def update
  end

  def destroy
  end
  
  private
  def social_params
    params.require(:social).permit(:snstype, :url, :user_id)
  end
end
