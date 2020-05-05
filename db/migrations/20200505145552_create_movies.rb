Hanami::Model.migration do
  change do
    create_table :movies do
      primary_key :id

      column :title, String
      column :year, Integer

      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end
