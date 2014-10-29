require 'digest/md5'

module SpotsHelper
	def gravatar(user, size = 48)
    	digest = Digest::MD5.hexdigest(user.email)
    	image_tag("http://gravatar.com/avatar/#{digest}?s=#{size}")
  	end
end