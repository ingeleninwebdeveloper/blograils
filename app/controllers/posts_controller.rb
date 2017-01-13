class PostsController < ApplicationController
	before_action :private_access, except: [:index, :show]

	def index

		@posts = Post.all


	end


	def new

		@post = Post.new


	end

	def create

		@post = Post.new(product_params)
  			if @post.save
    		redirect_to posts_path, notice: "El producto fue publicado con éxito"
 			 else
  		  render :new
 		end



	end

	def show

	@post = Post.find(params[:id])	

	end

	def edit
  	@post = Post.find(params[:id])
	end

	def update
 	 @post = Post.find(params[:id])
 	 if @post.update(post_params)
    redirect_to posts_path, notice: "El post ha sido modificado con éxito"
  	else
    render :edit
  		end
	end

	def destroy
  		post = Post.find(params[:id])
  		post.destroy

  		redirect_to posts_path, notice: "El Post fue eliminado con éxito"
	end



	private
  def post_params
    params.require(:post).permit(:body, :tittle)
  end

end
