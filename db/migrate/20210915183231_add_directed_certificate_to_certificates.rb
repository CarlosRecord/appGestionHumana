class AddDirectedCertificateToCertificates < ActiveRecord::Migration[6.1]
  def change
    add_reference :certificates, :directed_certificate, null: false, foreign_key: true
  end
end
