  class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

    #   def show
   	# @user = User.find(params[:id])
    #   end

      def new
        @user = User.new
      end

      def index
       @users = User.all
      end
      
      def show
        @users = User.all
        # @user = User.find(params[:id])
      end

      def create
   	@user = User.new(user_params)
        if @user.save
  	      redirect_to @user, notice: 'Cadastro criado com sucesso!'
        else
  	      render action: :new
        end
      end

      def edit
  	    @user = User.find(params[:id])
      end

   def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'Employee was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
      private

      def set_user
       @user = User.find(params[:id])
      end
      def user_params
  	    params.require(:user).permit(:email, :full_name, :location, :bio)
       # params.require(:user).permit(:email, :full_name, :location, :password, :password_confirmation, :bio)
      end

  end
