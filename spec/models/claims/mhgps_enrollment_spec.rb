# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Claims::MhgpsEnrollment, type: :model, dbclean: :around_each do
  let(:model_params) do
    {
      mhgps_id: 'RS230003820190926',
      full_name: 'Daniel Crawford',
      first_name: 'Daniel',
      last_name: 'Crawford',
      date_of_birth: '1931-02-22',
      current_medicaid_id: '78030003',
      mhgps_start_date: '2019-09-26',
      mhgps_end_date: '2023-07-13',
      phone_number: '2021234567'
    }
  end

  context "with a valid #{described_class} object" do
    context 'all param values filled in' do
      it "will create a #{described_class} object" do
        model_obj = described_class.new(model_params)
        model_obj.save
        puts model_obj.errors.to_a
        expect(model_obj.save).to eq true
        expect(model_obj.class).to eq(described_class)
      end
    end
  end

  context 'with a invalid params' do
    context "will not create a #{described_class} object" do
      required_params = described_class.validators.select { |a| a.is_a? ActiveRecord::Validations::PresenceValidator }.first.attributes
      required_params.each do |param|
        it "if missing the required field: #{param}" do
          model_params[param] = nil
          model_obj = described_class.new(model_params)
          expect(model_obj.save).to eq false
        end
      end
    end
  end
end
