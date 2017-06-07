class PortfoliosController < ApplicationController
  before_action :find_portfolio, only: [:show, :edit, :update, :destroy]

  def index
    @portfolio_items = Portfolio.all
  end

  def new
    @portfolio_item = Portfolio.new
  end

  def create
    @portfolio = Portfolio.new(portfolio_params)

    if @portfolio.save
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
    if @portfolio.update_attributes(portfolio_params)
      flash[:success] = "Your portfolio item is now live"
      redirect_to portfolios_path
    else
      render 'edit'
    end
  end

  def destroy
    @portfolio.destroy

    render 'index'
  end

  private

    def portfolio_params
      params.require(:portfolio).permit(:title, :subtitle, :body)
    end

    def find_portfolio
      @portfolio = Portfolio.find(params[:id])
    end

end
