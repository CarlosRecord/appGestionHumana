class CreateDirectedCertificates < ActiveRecord::Migration[6.1]
  def change
    create_table :directed_certificates do |t|
      t.string :description

      t.timestamps
    end
  end
end
