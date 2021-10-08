class RenameTheColumnAgentToHouse < ActiveRecord::Migration[6.1]
  def change
    rename_column :appointments, :agent_id, :house_id
  end
end
