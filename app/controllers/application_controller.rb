class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_action :set_owner
  
  def set_owner
    logger.debug 'SET_OWNER'
    if session['owner_id'].blank?
      logger.debug 'BLANK'
      @owner = Guest.create()
      session['owner_id']   = @owner.id
      session['owner_type'] = @owner.class
    else
      logger.debug 'NOT BLANK'
      @owner = Guest.find(session['owner_id']) # quando houver outros tipos de owner, será preciso usar switch no owner_type
    end
  end
end
