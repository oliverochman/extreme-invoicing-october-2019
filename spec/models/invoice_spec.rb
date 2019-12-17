require 'rails_helper'

RSpec.describe Invoice, type: :model do
  describe 'DB table' do
      it { is_expected.to have_db_column :date }
      it { is_expected.to have_db_column :due_date }
  end

  describe 'Associations' do
    it { is_expected.to belong_to :user }
  end

end