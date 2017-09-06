class MessagesController < ApplicationController
	def index
		@messages = Message.all
		render "index.html.erb"
	end

	def new
		render "new.html.erb"
	end

	def create
		@message = Message.new(
			title: params[:title],
			body: params[:body])
		@message.save
		render "create.html.erb"
	end

	def show
		@message = Message.find_by(id: params[:id])
		render "show.html.erb"
	end

	def edit
		@message = Message.find_by(id: params[:id])
		render "edit.html.erb"
	end

	def update
		@message = Message.find_by(id: params[:id])
		@message.update(
			title: params[:title],
			body: params[:body])
		render "update.html.erb"
	end

	def destroy
		message = Message.find_by(id: params[:id])
		message.destroy
		render "destroy.html.erb"
	end
end


















