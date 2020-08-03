class DynamicController < ApplicationController
  def welcome_user
    @name = params[:first_name]
    puts "BIENVENUE #{@name}! Ici c'est notre super site de potins, il est chouette, non ?"
  end
end
