class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


def first
  @url = "http://www.reactiongifs.com/r/ndts.gif" 
  @caption = "Science"
  render 'show'
end

def second
  @url = "http://www.reactiongifs.com/r/14.gif"
  @caption = "Come at me bro!"
  render 'show'
end

def third
  @url = "http://www.reactiongifs.com/r/cf-dafuq.gif"
  @caption = "Dafuq?"
  render 'show'
end 

  def new 
    
  end
  
  def create
    g = Gif.new
    g.caption = params['caption']
    g.url = params['url']
    g.save
    redirect_to "/gifs/#{ g.id }"
  end
    
  def edit
    @gif = Gif.find_by_id(params['id'])
    
  end
  
  def update
    g = Gif.find_by_id(params['id'])
    g.caption = params['caption']
    g.url = params['url']
    g.save
    redirect_to "/gifs/#{ g.id }"
  end 
  
def show 
 @gif = Gif.find_by_id(params['id']) 
 @caption = @gif.caption 
 render 'show'
end 
  
  def destroy
    g = Gif.find_by_id(params['id'])
    g.destroy
  end
  
  def index
    @gifs = Gif.all
  end
   
  end

