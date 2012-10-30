ActiveAdmin.register Track do
  index	do
  	column "Title", :name
  	column :album
  	column :category
  	column :price, :sortable => :price do |track|
  		number_to_currency(track.price, :unit =>"&pound;")
  	end
  	default_actions
  end
end
