# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Claims::DeniedClaimsWithReason, type: :model, dbclean: :around_each do
  let(:model_params) do
    {
      claim_tcn: '21301381150012687',
      denial_reason_code: '0143',
      denial_reason: 'BENFC NOT ELIGIBLE/NOT FOUND'
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
