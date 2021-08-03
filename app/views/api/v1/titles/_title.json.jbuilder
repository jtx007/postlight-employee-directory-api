json.extract! @title, :id, :jobtitle, :created_at, :updated_at
json.url title_url(@title, format: :json)
