class PostsController <ApplicationController
	before_action :setup_post, only: [:show, :edit, :update]

	def index
		@posts = Post.all
	end

	def show
	end

	def new
		#binding.pry
		@post = Post.new
	end
  
  def edit
  end

  def update
  	#@post = Post.find(params[:id])
    if @post.update(post_params)
    	redirect_to root_path
    else
    	flash[:error] = "Update failed"
    end
  end


	def create
  #前端使用者傳回的資料，建立一個新的 post 物件
       post = Post.new(post_params)
  
  #如果成功存進資料庫，就導回 index 頁面，失敗就再顯示一次表單
  	if post.save!
    	redirect_to posts_path
  	else
    	render :new
  	end
	end

	def vote
		@post = Post.find(params[:id])
    	@vote = Vote.create(voteable: @post, creator: current_user, vote: params[:vote])

    if @vote.valid?
      flash[:success] = 'Your vote was counted!'
    else
      flash[:error] = "You can only vote for #{@post.title} once!"
    end

    redirect_to :back
	end

	private
	def setup_post
	  @post = Post.find(params[:id])
	end

	#確保 params 裡面的 post hash 存在，並且允許 title 和 content 被存取
	def post_params
  	  params.require(:post).permit(:title, :content)
	end
end	