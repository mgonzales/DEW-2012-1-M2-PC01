class ProdutcsController < ApplicationController
  # GET /produtcs
  # GET /produtcs.json
  def index
    @produtcs = Produtc.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @produtcs }
    end
  end

  # GET /produtcs/1
  # GET /produtcs/1.json
  def show
    @produtc = Produtc.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @produtc }
    end
  end

  # GET /produtcs/new
  # GET /produtcs/new.json
  def new
    @produtc = Produtc.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @produtc }
    end
  end

  # GET /produtcs/1/edit
  def edit
    @produtc = Produtc.find(params[:id])
  end

  # POST /produtcs
  # POST /produtcs.json
  def create
    @produtc = Produtc.new(params[:produtc])

    respond_to do |format|
      if @produtc.save
        format.html { redirect_to @produtc, notice: 'Produtc was successfully created.' }
        format.json { render json: @produtc, status: :created, location: @produtc }
      else
        format.html { render action: "new" }
        format.json { render json: @produtc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /produtcs/1
  # PUT /produtcs/1.json
  def update
    @produtc = Produtc.find(params[:id])

    respond_to do |format|
      if @produtc.update_attributes(params[:produtc])
        format.html { redirect_to @produtc, notice: 'Produtc was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @produtc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /produtcs/1
  # DELETE /produtcs/1.json
  def destroy
    @produtc = Produtc.find(params[:id])
    @produtc.destroy

    respond_to do |format|
      format.html { redirect_to produtcs_url }
      format.json { head :no_content }
    end
  end
end
