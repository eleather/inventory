class StockUsesController < ApplicationController
  # GET /stock_uses
  # GET /stock_uses.xml
  def index
    @stock_uses = StockUse.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @stock_uses }
    end
  end

  # GET /stock_uses/1
  # GET /stock_uses/1.xml
  def show
    @stock_use = StockUse.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @stock_use }
    end
  end

  # GET /stock_uses/new
  # GET /stock_uses/new.xml
  def new
    @stock_use = StockUse.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @stock_use }
    end
  end

  # GET /stock_uses/1/edit
  def edit
    @stock_use = StockUse.find(params[:id])
  end

  # POST /stock_uses
  # POST /stock_uses.xml
  def create
    @stock_use = StockUse.new(params[:stock_use])

    respond_to do |format|
      if @stock_use.save
        format.html { redirect_to(@stock_use, :notice => 'Stock use was successfully created.') }
        format.xml  { render :xml => @stock_use, :status => :created, :location => @stock_use }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @stock_use.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /stock_uses/1
  # PUT /stock_uses/1.xml
  def update
    @stock_use = StockUse.find(params[:id])

    respond_to do |format|
      if @stock_use.update_attributes(params[:stock_use])
        format.html { redirect_to(@stock_use, :notice => 'Stock use was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @stock_use.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /stock_uses/1
  # DELETE /stock_uses/1.xml
  def destroy
    @stock_use = StockUse.find(params[:id])
    @stock_use.destroy

    respond_to do |format|
      format.html { redirect_to(stock_uses_url) }
      format.xml  { head :ok }
    end
  end
end
