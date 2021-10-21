class HomesController < ApplicationController

def top
  @posts  = Post.includes(:gooded_users).sort {|a,b| b.gooded_users.size <=> a.gooded_users.size}
end



end
