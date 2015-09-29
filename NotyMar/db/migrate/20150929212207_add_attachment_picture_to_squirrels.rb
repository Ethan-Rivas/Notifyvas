class AddAttachmentPictureToSquirrels < ActiveRecord::Migration
  def self.up
    change_table :squirrels do |t|

      t.attachment :picture

    end
  end

  def self.down

    remove_attachment :squirrels, :picture

  end
end
