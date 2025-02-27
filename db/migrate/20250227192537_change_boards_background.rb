class ChangeBoardsBackground < ActiveRecord::Migration[8.0]
  def change
    change_column_default :boards, :background, from: nil, to: "white"
    change_column_null :boards, :background, false
  end
end
