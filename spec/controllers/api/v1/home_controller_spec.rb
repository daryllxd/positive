require 'spec_helper'

describe Api::V1::HomeController do
  describe 'GET #index' do
    it 'responds with hello world' do
      get :index

      expect(response.body).to eq 'hello world'

    end

  end


end
