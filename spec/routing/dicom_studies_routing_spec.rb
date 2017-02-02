require "rails_helper"

RSpec.describe DicomStudiesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dicom_studies").to route_to("dicom_studies#index")
    end

    it "routes to #new" do
      expect(:get => "/dicom_studies/new").to route_to("dicom_studies#new")
    end

    it "routes to #show" do
      expect(:get => "/dicom_studies/1").to route_to("dicom_studies#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dicom_studies/1/edit").to route_to("dicom_studies#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/dicom_studies").to route_to("dicom_studies#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dicom_studies/1").to route_to("dicom_studies#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dicom_studies/1").to route_to("dicom_studies#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dicom_studies/1").to route_to("dicom_studies#destroy", :id => "1")
    end

  end
end
