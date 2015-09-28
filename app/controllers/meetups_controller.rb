class MeetupsController < ApplicationController

  def create

      meetup = Meetup.create(meetup_params)
      meetup.user_id = current_user[:id]
      meetup.save

      render json: meetup, status: 201
  end

  private

  def meetup_params
    params.permit( :title,
                   :description,
                   :date,
                   :place,
                   :capacity)
  end

end
