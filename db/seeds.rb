# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
@patient = Demographic.create(last_name: 'McAuley', first_name: 'Brian')
@study = DicomStudy.create(demographics_id: @patient.id, study_uid: '1.2.124.113532.20.49760.3731.20090529.84722.230902', study_date: '2016-01-05 14:21:37.960', description: 'ECHO', modality: 'US,SR')

@series = DicomSeries.create(dicom_studies_id: @study.id, series_uid: '1.2.840.113663.1500.1.299011973.2.1.20090529.85149.984', modality: 'US')

DicomImage.create(dicom_series_id: @series.id, image_uid: '1.2.840.113663.1500.1.299011973.3.1.20090529.85221.484', original_volume: 'Archive1', path_to_image: 'C:\Temp\Volume1\1.2.124.113532.20.49760.3731.20090529.84722.230902\1.2.840.113663.1500.1.299011973.2.1.20090529.85149.984\1.2.840.113663.1500.1.299011973.3.1.20090529.85221.484' )
DicomImage.create(dicom_series_id: @series.id, image_uid: '1.2.840.113663.1500.1.299011973.3.5.20090529.85357.359', original_volume: 'Archive1', path_to_image: 'C:\Temp\Volume1\1.2.124.113532.20.49760.3731.20090529.84722.230902\1.2.840.113663.1500.1.299011973.2.1.20090529.85149.984\1.2.840.113663.1500.1.299011973.3.5.20090529.85357.359' )
DicomImage.create(dicom_series_id: @series.id, image_uid: '1.2.840.113663.1500.1.299011973.3.6.20090529.85405.921', original_volume: 'Archive1', path_to_image: 'C:\Temp\Volume1\1.2.124.113532.20.49760.3731.20090529.84722.230902\1.2.840.113663.1500.1.299011973.2.1.20090529.85149.984\1.2.840.113663.1500.1.299011973.3.6.20090529.85405.921' )

