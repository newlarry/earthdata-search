require 'rails_helper'

describe 'User not logged in' do
  before :each do
    logout
  end

  context 'when a user views the data configure page without being logged in' do
    before :each do
      load_page :projects_page, project: ['C179003030-ORNL_DAAC']
    end

    it 'sends them to log in first' do
      expect(page).to have_content 'EOSDIS Earthdata Login'
    end
  end

  context 'when a user views the data status page without being logged in' do
    before :each do
      load_page '/data/status'
    end

    it 'sends them to log in first' do
      expect(page).to have_content 'EOSDIS Earthdata Login'
    end
  end

  context 'when a user views the contact information page without being logged in' do
    before :each do
      load_page '/contact_info'
    end

    it 'sends them to log in first' do
      expect(page).to have_content 'EOSDIS Earthdata Login'
    end
  end
end
