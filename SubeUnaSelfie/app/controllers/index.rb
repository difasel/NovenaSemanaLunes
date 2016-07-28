get '/' do
  # La siguiente linea hace render de la vista 
  # que esta en app/views/index.erb
  erb :index
end


post '/upload' do
  @photo = Photo.new(params[:photo])
  @photo.save!
  p @photos
  @photos = Photo.all 

  redirect to '/'
  # erb :show_photo
end