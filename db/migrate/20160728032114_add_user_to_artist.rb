class AddUserToArtist < ActiveRecord::Migration[5.0]
  def change
    add_reference :artists, :user
  end
end
