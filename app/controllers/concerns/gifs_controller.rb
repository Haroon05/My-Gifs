class GifsController < ApplicationController


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
   @gif = Gif.new
   @gif.caption = params['caption']
   @gif.url = params['url']
   if @gif.save
   redirect_to "/gifs/#{ @gif.id }"
   else
   render 'new'
   end  
end
    
def edit
   @gif = Gif.find_by(id: params['id'])
end
  
def update
   @gif = Gif.find_by(id: params['id'])
   @gif.caption = params['caption']
   @gif.url = params['url']
   if @gif.save
   redirect_to "/gifs/#{ @gif.id }"
   else
   render 'edit'
   end
end 
  
def show 
  @gif = Gif.find_by(id: params['id']) 
  @caption = @gif.caption 
  render 'show'
end 
  
def destroy
  @gif = Gif.find_by(id: params['id'])
  @gif.destroy
  redirect_to "/gifs"
end
  
def index
  @gifs = Gif.all
end
end
