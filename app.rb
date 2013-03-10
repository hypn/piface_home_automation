require 'sinatra'

configure do
	set :port, 80
end


get '/' do
	file = File.open("/home/pi/home_automation/home.html", "rb")
	file.read
end

get '/on/:port' do
	"Switching off port #{params[:port]}"
	system("/home/pi/home_automation/toggle_pin #{params[:port]}")
	#system("python /home/pi/home_automation/toggle_pin.py #{params[:port]}")
	redirect "/"
end

get '/off/:port' do
	"Switching on port #{params[:port]}"
	system("python /home/pi/home_automation/toggle_pin.py")
	redirect "/"
end

