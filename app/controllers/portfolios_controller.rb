class PortfoliosController < ApplicationController
  before_action :set_portfolio_item, only: [:show, :edit, :update, :destroy]
  access all: [:show, :index, :ruby], user: {except: [:destroy, :new, :create,
                                            :update, :edit]}, site_admin: :all
  layout "portfolio"

  def index
    @portfolio_items = Portfolio.by_position
  end

  def sort
    params[:order].each do |key, value|
      Portfolio.find(value[:id]).update(position: value[:position])
    end
    render nothing: true
  end

  def ruby
    @ruby_portfolio_items = Portfolio.ruby
  end

  def new
    @portfolio_item = Portfolio.new
    3.times { @portfolio_item.technologies.build }
  end

  def create
    @portfolio_item = Portfolio.new(portfolio_params)

    if @portfolio_item.save
      flash[:success] = "Your portfolio item is now live"
      redirect_to portfolios_path
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @portfolio_item.update_attributes(portfolio_params)
      flash[:success] = "Your portfolio item is has been edited"
      redirect_to portfolios_path
    else
      render 'edit'
    end
  end

  def destroy
    @portfolio_item.destroy
    flash[:success] = "Your portfolio was deleted"
    redirect_to portfolios_path
  end


  private

    def portfolio_params
      params.require(:portfolio).permit(:title,
                                        :subtitle,
                                        :body,
                                        technologies_attributes: [:name]
                                        )
    end

    def set_portfolio_item
      @portfolio_item = Portfolio.find(params[:id])
    end

end
