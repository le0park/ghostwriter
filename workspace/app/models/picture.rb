class Picture < ActiveRecord::Base
    mount_uploader :sentences, SentencesUploader
    
end
