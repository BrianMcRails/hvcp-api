require "rails_helper"

RSpec.describe DicomImagesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dicom_images").to route_to("dicom_images#index")
    end

    it "routes to #new" do
      expect(:get => "/dicom_images/new").to route_to("dicom_images#new")
    end

    it "routes to #show" do
      expect(:get => "/dicom_images/1").to route_to("dicom_images#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dicom_images/1/edit").to route_to("dicom_images#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/dicom_images").to route_to("dicom_images#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dicom_images/1").to route_to("dicom_images#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dicom_images/1").to route_to("dicom_images#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dicom_images/1").to route_to("dicom_images#destroy", :id => "1")
    end

  end
end
