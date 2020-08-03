class DynamicController < ApplicationController
  def welcome_user
    @name = params[:first_name]
    puts "BIENVENUE #{@name}! Ici c'est notre super site de potins, il est chouette, non ?"
  end

  def gossip
    @gossip_searched = Gossip.find(params[:gossip_number]) 
  end

  def author
    @author_searched = User.find(params[:author_info]) 
  end
end