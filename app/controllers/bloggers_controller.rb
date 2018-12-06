class BloggersController < ApplicationController
 before_action :get_blogger, only: [:edit, :show, :update, :destroy]

 def index
  @bloggers = Blogger.all
 end

 def show

 end

 def edit

 end

 def update
 end

 def new
   @blogger = Blogger.new
 end

 def create
   byebug
   @blogger = Blogger.create(blogger_params)
   redirect_to bloggers_path
 end

 def delete
 end

private

def get_blogger
  @blogger = Blogger.find(params[:id])
end

def blogger_params
  params.require(:blogger).permit(:id, :name, :bio, :age)
end


end
