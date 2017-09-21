class RhsContactsController < ApplicationController
  def index
    @contacts = RhsContact.all.first(5)
  end
end
