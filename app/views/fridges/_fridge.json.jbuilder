json.extract! fridge, :id, :name, :user_id, :has_refrig, :has_freezer, :is_healthy, :last_alerted, :last_reported, :report_frequency, :created_at, :updated_at
json.url fridge_url(fridge, format: :json)
