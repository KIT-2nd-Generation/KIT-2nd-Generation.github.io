require 'bundler/setup'
Bundler.require
require 'sinatra/reloader' if development?

require './models'

enable :sessions

before do
    if !current_user && !["/", "/signin", "/signup", "/mailing_list", "/mission_statement", "/offer", "/news", "/terms_of_service"].include?(request.path_info)  
        flash[:notice] = "Please sign up or sign in before accessing!"
        redirect '/'
    end
end

helpers do
    def current_user
        User.find_by(id: session[:user])
    end
end

get '/' do
    erb :home
end

get '/signin' do
    erb :sign_in
end

get '/signup' do
    erb :sign_up
end

post '/signin' do
    user = User.find_by(mail: params[:mail])
    if user && user.authenticate(params[:password])
        session[:user] = user.id
    end
    redirect '/'
end

post '/signup' do
    @user = User.create(mail:params[:mail], password:params[:password],password_confirmation:params[:password_confirmation])
    if @user.persisted?
        session[:user] = @user.id
    end
    redirect '/'
end

get '/signout' do
    session[:user] = nil
    redirect '/'
end
