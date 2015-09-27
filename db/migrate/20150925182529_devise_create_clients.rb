class DeviseCreateClients < ActiveRecord::Migration
  def change
    create_table(:clients) do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

        
      t.string :username, index: true, unique: true
      t.string :logo_path
      t.string :social_reason 
      t.string :fantasy_name
      t.string :cnpj 
      t.string :cpf
      t.integer :type_client, default: 0
      t.string :address
      t.string :cep
      t.string :uf 
      t.string :city
      t.string :contact_email
      t.string :cadastre_email
      t.string :telephone
      t.string :celphone
      t.string :responsible_telephone
    


      t.timestamps null: false
    end

    add_index :clients, :email,                unique: true
    add_index :clients, :reset_password_token, unique: true
    # add_index :clients, :confirmation_token,   unique: true
    # add_index :clients, :unlock_token,         unique: true
  end
end
