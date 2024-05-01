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

  def edit
    @gossip = Gossip.find(params[:id])
  end

  def update
    @gossip = Gossip.find(params[:id])
    if @gossip.update(edit_params)
      redirect_to gossips_path
      flash[:success] = "Gossip successfully edited"
    else
      flash[:danger] = "Gossip didn't edit!"
      render :edit
    end
  end

  private

  def gossip_params
    params.require(:gossip).permit(:title, :description, :user_id)
  end

  def edit_params
    params.require(:gossip).permit(:title, :content)
  end
end