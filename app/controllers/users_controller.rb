class UsersController < ApplicationController
  # GET /list_all
  # GET /list_all.json
  def list_all
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/new
  # GET /users/new.json
  def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'Thank you for your interest.' }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: "new" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def from_twitter
	auth = request.env["omniauth.auth"]
	
	p auth
	
	redirect_to '/'
  end
  
  def from_facebook
	auth = request.env["omniauth.auth"]
	
	email = auth[:info][:email]

	@user = User.find_or_create_by_email(email)
	
	respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'Thank you for your interest.' }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: "new" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def from_linkedin
	auth = request.env["omniauth.auth"]
	
	p auth
	
	email = auth[:info][:email]

	@user = User.find_or_create_by_email(email)
	
	respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'Thank you for your interest.' }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: "new" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
end
