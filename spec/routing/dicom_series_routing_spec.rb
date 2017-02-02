require "rails_helper"

RSpec.describe DicomSeriesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dicom_series").to route_to("dicom_series#index")
    end

    it "routes to #new" do
      expect(:get => "/dicom_series/new").to route_to("dicom_series#new")
    end

    it "routes to #show" do
      expect(:get => "/dicom_series/1").to route_to("dicom_series#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dicom_series/1/edit").to route_to("dicom_series#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/dicom_series").to route_to("dicom_series#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dicom_series/1").to route_to("dicom_series#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dicom_series/1").to route_to("dicom_series#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dicom_series/1").to route_to("dicom_series#destroy", :id => "1")
    end

  end
end
