class AddExecutedRulesToTtweets < ActiveRecord::Migration[5.0]
  def change
    add_column :ttweets, :executed_rules, :text
  end
end
