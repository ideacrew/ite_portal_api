# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Claims::MedicaidProvider, type: :model, dbclean: :before_each do
  let(:model_params) do
    {
      dhcf_system_provider_id: '465',
      provider_id: '10456500',
      legacy_provider_id: '',
      provider_type_code: 'A00',
      provider_type: 'Physician MD',
      provider_location_code: 'O',
      pharmacy_classification_code: '',
      provider_facility_type_code: '',
      provider_npi: '',
      provider_dea: '',
      provider_full_name: 'INGRAM HAYWOOD MD',
      organization_indicator: 'N',
      provider_last_name: 'INGRAM',
      provider_first_name: 'HAYWOOD',
      provider_middle_name: '',
      provider_suffix: '',
      provider_mc_indicator: 'N',
      provider_billing_code: '',
      provider_application_status: '',
      information_date: '2023-03-13'
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
