class AutocompleteSearchesController < ApplicationController

  respond_to :js

def index
    @institutes = Institute.limit(10).search_for_name(params[:name])
    respond_with(@institutes)
end
  

end
