class DomainsController < ApplicationController
  before_action :set_domain, only: [:edit, :update, :destroy]

  def index
    @domains = Domain.all
  end

  def show
    @domain = Domain.find_by!(subdomain: request.subdomain)
  end

  def new
    @domain = Domain.new
  end

  def edit
  end

  def create
    @domain = Domain.new(domain_params)

    respond_to do |format|
      if @domain.save
        format.html { redirect_to @domain, notice: 'Domain was successfully created.' }
        format.json { render :show, status: :created, location: @domain }
      else
        format.html { render :new }
        format.json { render json: @domain.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @domain.update(domain_params)
        format.html { redirect_to @domain, notice: 'Domain was successfully updated.' }
        format.json { render :show, status: :ok, location: @domain }
      else
        format.html { render :edit }
        format.json { render json: @domain.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @domain.destroy
    respond_to do |format|
      format.html { redirect_to domains_url, notice: 'Domain was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_domain
      @domain = Domain.find(params[:id])
    end


    def domain_params
      params.require(:domain).permit(:title, :subdomain, :description)
    end
end
