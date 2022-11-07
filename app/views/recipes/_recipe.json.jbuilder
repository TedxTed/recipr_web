json.extract! recipe, :id, :title, :cover, :intro, :user_id, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)
