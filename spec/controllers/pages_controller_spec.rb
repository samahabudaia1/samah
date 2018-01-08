require 'rails_helper'

describe PagesController, type: :controller do
  context 'GET #about' do
    it 'renders the about template' do
      get :about
      expect(response).to be_ok
      expect(response).to render_template('about')
    end
  end
end