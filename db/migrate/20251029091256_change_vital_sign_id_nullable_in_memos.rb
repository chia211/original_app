class ChangeVitalSignIdNullableInMemos < ActiveRecord::Migration[7.1]
  def change
    change_column_null :memos, :vital_sign_id, true
  end
end
