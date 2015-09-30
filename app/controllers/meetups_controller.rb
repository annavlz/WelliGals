class MeetupsController < ApplicationController

  def create

    meetup = Meetup.create(meetup_params.merge(user: user))

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
