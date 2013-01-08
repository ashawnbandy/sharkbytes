class SharksController < ApplicationController
  before_filter :signed_in_user
  # GET /sharks
  # GET /sharks.json
  def index
    @sharks = Shark.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sharks }
    end
  end

  # GET /sharks/1
  # GET /sharks/1.json
  def show
    @shark = Shark.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @shark }
    end
  end

  # GET /sharks/new
  # GET /sharks/new.json
  def new
    @shark = Shark.new
    @all_sharks = Shark.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @shark }
    end
  end

  # GET /sharks/1/edit
  def edit
    @shark = Shark.find(params[:id])
    @all_sharks = Shark.all
  end

  # POST /sharks
  # POST /sharks.json
  def create
    @shark = Shark.new(params[:shark])

    respond_to do |format|
      if @shark.save
        format.html { redirect_to @shark, notice: 'Shark was successfully created.' }
        format.json { render json: @shark, status: :created, location: @shark }
      else
        format.html { render action: "new" }
        format.json { render json: @shark.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sharks/1
  # PUT /sharks/1.json
  def update
    @shark = Shark.find(params[:id])

    respond_to do |format|
      if @shark.update_attributes(params[:shark])
        format.html { redirect_to @shark, notice: 'Shark was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @shark.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sharks/1
  # DELETE /sharks/1.json
  def destroy
    @shark = Shark.find(params[:id])
    @shark.destroy

    respond_to do |format|
      format.html { redirect_to sharks_url }
      format.json { head :no_content }
    end
  end
end
