class PagesController < ApplicationController

  def home
    # Testing Ahoy Vists
    ahoy.track_visit
    ahoy.track "btn-keep", title: "Keep playing"
    @messages = Message.all
  	@params = []
  	@params << Video.last.vid_id
  	@params << Video.last.vid_duration
    @params << Video.last.channel_title
    @params << Video.last.channel_id
  end

  def update_video
    # video
  	@params = []
  	@params << Video.last.vid_id
  	@params << Video.last.vid_duration
    @params << Video.last.channel_title
    @params << Video.last.channel_id
  	# byebug
  	# p "run================================="
  	# respond_to do |format|
  	# 	format.js
  	# end
  	json_content = {data: @params}
  	render json: json_content
  end
end
