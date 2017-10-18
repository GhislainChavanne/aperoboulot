class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
  process eager: true  # Force version generation at upload time.
  process convert: 'jpg'

  def public_id
    return model.short_name
  end
end
