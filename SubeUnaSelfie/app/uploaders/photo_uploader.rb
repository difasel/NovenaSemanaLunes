require 'carrierwave'
require 'carrierwave/orm/activerecord'
require 'mini_magick'

# Revisa que el folder de uploaders este contemplado el la configuración del app
Dir[APP_ROOT.join('app', 'uploaders', '*.rb')].each { |file| require file }

#Configuración global de todos los uploaders de CarrierWave
CarrierWave.configure do |config|
  config.root = APP_ROOT + 'public/'
end




class PhotoUploader < CarrierWave::Uploader::Base
  # ...
  include CarrierWave::MiniMagick

  # Que tipo de strorage usará este uploader
  storage :file
  

  # process resize_to_fit: [800, 800]

  version :thumb do
    process resize_to_fill: [200,200]
  end

  def store_dir
    # Como y donde guardar el archivo ...
    'public/my/upload/directory'
  end


  # Versiones del archivo ...

  #Que extensiones vas a aceptar
  def extension_whitelist
    %w(jpg jpeg gif png)
  end

  def content_type_whitelist
    /image\//
  end

end