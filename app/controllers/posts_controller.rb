class PostsController < ApplicationController

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


	private
  def product_params
    params.require(:post).permit(:body, :tittle)
  end

end
