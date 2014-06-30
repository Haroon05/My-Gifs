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
  
#def show 
 # @id params ['id']
 # render show
#end 
  
  end

