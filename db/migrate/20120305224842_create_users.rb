class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :crypted_password
      t.string :salt
      t.string :remember_me_token
      t.datetime :remember_me_token_expires_at
      t.string :activation_state
      t.string :activation_token
      t.datetime :activation_token_expires_at
      t.string :reset_password_token
      t.datetime :reset_password_token_expires_at
      t.datetime :reset_password_email_sent_at
      t.datetime :last_login_at
      t.datetime :last_logout_at
      t.datetime :last_activity_at
      t.integer :failed_logins_count
      t.datetime :lock_expires_at

      t.timestamps
    end
  end
end
