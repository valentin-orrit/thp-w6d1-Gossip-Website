class GossipsController < ApplicationController
  def show
    @gossip = Gossip.find(params[:id])
    # @user = User.find(params[:id])
  end

  def new
    @gossip = Gossip.new
  end

  def create
    @gossip = Gossip.new(gossip_params)
    if @gossip.save
      redirect_to gossips_path(@gossip)
      flash[:success] = "Gossip successfully registered"
    else
      flash[:danger] = "Gossip didn't register!"
      render :new
    end
  end

  def index
    redirect_to root_path
  end

  private

  def gossip_params
    params.require(:gossip).permit(:title, :description, :user_id)
  end
end