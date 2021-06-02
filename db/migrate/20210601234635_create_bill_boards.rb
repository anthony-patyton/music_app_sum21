class CreateBillBoards < ActiveRecord::Migration[6.1]
  def change
    create_table :bill_boards do |t|
      t.string :title
      t.binary :img

      t.timestamps
    end
  end
end
