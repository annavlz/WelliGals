class MeetupsController < ApplicationController

  def create
<<<<<<< HEAD
      meetup = Meetup.create(meetup_params)
      meetup.user_id = current_user[:id]
      meetup.save
=======

    meetup = Meetup.create(meetup_params.merge(user: user))
>>>>>>> master

    render json: meetup, status: 201
  end

  private

  def meetup_params
    params.permit( :title,
                   :description,
                   :date,
                   :place,
                   :capacity,
                   :duration)
  end

end
