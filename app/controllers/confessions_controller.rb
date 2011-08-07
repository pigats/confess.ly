class ConfessionsController < ApplicationController
	before_filter :authenticate_user!, :only => [:edit, :update, :destroy]

  # GET /confessions
  # GET /confessions.json
  def index
    @confessions = Confession.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @confessions }
    end
  end

  # GET /confessions/1
  # GET /confessions/1.json
  def show
    @confession = Confession.find(params[:id])
		@confession.views += 1
		@confession.save
		
		@comment = Comment.new
		
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @confession }
    end
  end

  # GET /confessions/new
  # GET /confessions/new.json
  def new    
    @confession = Confession.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @confession }
    end
  end

  # GET /confessions/1/edit
  def edit
    @confession = Confession.find(params[:id])
  end

  # POST /confessions
  # POST /confessions.json
  def create
    @confession = Confession.new(params[:confession])
    @confession.user = current_user if user_signed_in?
    
    params[:tags].split.each do |tag|
    	
	  	if Tag.find_by_name(tag).nil?
	  		tag = Tag.new(:name=>tag)
	  	else
	  		tag = Tag.find_by_name(tag)	
	  	end
	  	@confession.tags << tag   		
			
		end
    
    respond_to do |format|
      if @confession.save
        format.html { redirect_to @confession, notice: 'Confession was successfully created.' }
        format.json { render json: @confession, status: :created, location: @confession }
      else
        format.html { render action: "new" }
        format.json { render json: @confession.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /confessions/1
  # PUT /confessions/1.json
  def update
    @confession = Confession.find(params[:id])

    respond_to do |format|
      if @confession.update_attributes(params[:confession])
        format.html { redirect_to @confession, notice: 'Confession was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @confession.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /confessions/1
  # DELETE /confessions/1.json
  def destroy
    @confession = Confession.find(params[:id])
    @confession.destroy

    respond_to do |format|
      format.html { redirect_to confessions_url }
      format.json { head :ok }
    end
  end
  
end
