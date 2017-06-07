class PortfoliosController < ApplicationController
  before_action :find_portfolio, only: [:show, :edit, :update, :destroy]

  def index
    @portfolio_items = Portfolio.all
  end

  def new
    @portfolio = Portfolio.new
  end

  def create
    @portfolio = Portfolio.new(portfolio_params)

    if @portfolio.save
      redirect_to @portfolio
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
      redirect_to @portfolio
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
      params.require(:portfolio).permit(:title, :subtitle, :body, :main_image,
                                        :thumb_image)
    end

    def find_portfolio
      @portfolio = Portfolio.find(params[:id])
    end

end
