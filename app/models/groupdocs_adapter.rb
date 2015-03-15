class GroupdocsAdapter

require 'groupdocs'


      #Configure your access to API server
      GroupDocs.configure do |groupdocs|
        groupdocs.client_id = Rails.application.secrets.client_id
        groupdocs.private_key = Rails.application.secrets.private_key
        #Optionally specify API server and version
        groupdocs.api_server = 'https://api.groupdocs.com'
        groupdocs.api_version = '2.0' # default is '2.0'
      end

     def file_list
       @files_list = GroupDocs::Storage::Folder.list!('/', {})
       @filelist = ''
       @files_list.each do |element|
       if element.class.name.split('::').last == 'File' then filelist << "#{element.name}<br />" end
     end

    def storage
       @store = GroupDocs::Storage.info!
    end

  end

end