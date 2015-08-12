class PhotosController < ApplicationController
	before_action :authenticate_user!
	def create
		@place = Place.find(params[:place_id])
		@place.photos.create(photo_params)
		redirect_to place_path(@place)
	end

	def destroy
		@place = Place.find(params[:place_id])
		if @place.valid?
				@photo = Photo.find(params[:id])
				@photo.destroy
				redirect_to place_path(@place)
		end
	end
		#first you will find the place id and then the photo id 
		#find place with id :place_id
		#if place exist
			#find photo with id :id belong to place 
			#if photo exist
				#delete the photo
			#else photo not found 
		#else place not found


	private

	def photo_params
		params.require(:photo).permit(:caption, :picture)
	end
end
