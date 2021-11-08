Rails.application.routes.draw do
  root to: "flats#index"
  get "flats/:id", to: "flats#show", as: :flat
  # The `:id` inside the path above means that this part will be dynamic
  # e.g. /flats/145
  # e.g. /flats/205
  # ...
  # We would be able to retrieve the id in the controller by typing `params[:id]`
end

