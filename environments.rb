configure :development do
  set :database, 'sqlite3:restaurant_dev.db'
  set :show_exceptions, true
end