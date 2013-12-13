class UsersController < ApplicationController
 
  def index


    @user=current_user

    if params[:celeb] #if there is a requets for a particular celeb
      @celeb = params[:celeb]
    else
      @celeb = 'taylor swift'  
    end
     
    if @celeb == 'tim mcgraw'
      @instagramid = '183755336'
      @tweetpage = 'https://twitter.com/TheTimMcGraw'
      @tweetid = '411292679410941953'
      @fbpage = 'https://www.facebook.com/photo.php?fbid=10152077697378556&amp;set=a.107030603555.92613.5723768555&amp;type=1'
    elsif @celeb == 'faith hill'
      @instagramid = '181396520'
      @tweetpage = 'https://twitter.com/FaithHill'
      @tweetid = '411027443512655872'
      @fbpage = 'https://www.facebook.com/photo.php?fbid=10151799208138587&amp;set=a.137336568586.110050.5991618586&amp;type=1'
    else
        @instagramid = '11830955'
        @tweetpage = 'https://twitter.com/taylorswift13'
      @tweetid = '409956583133552642'
      @fbpage = 'https://www.facebook.com/TaylorSwift/posts/10151865020485369'
    end

  end

  def new
    @user= User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
        puts "here"
        redirect_to(new_session_path, :notice => "New User successfully created.")
    else

      # render :new 
      # , errors: "User info is not valid"
      # render :text => @user.errors.full_messages
      render :new, :flash => { :errors => @user.errors.full_messages } 
      # :flash => {state => 'register', :errors =>@user.errors.full_messages }
    end
  end

  def edit
  end

  def update
  end

  def show
     # @user= User.find(users.id)
     @user = User.find(params[:id])
  end

  def destroy
  end

 private
  def user_params
    params.require(:user).permit(:fname, :lname, :email, :password, :password_confirmation)
  end

end