class CommonIndexer

  @@record_types = [ :archival_object, :resource,
                    :digital_object, :digital_object_component,
                    :subject, :location, :classification, :classification_term,
                    :event, :accession, :thesa,
                    :agent_person, :agent_software, :agent_family, :agent_corporate_entity]

  self.add_indexer_initialize_hook do |indexer|
    # Index extra
    indexer.add_document_prepare_hook {|doc, record|
	  if record['record']['thesa_term']
        doc['title'] = record['record']['term']
      end
    }
  end


end
