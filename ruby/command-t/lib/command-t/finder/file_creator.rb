module CommandT
  class Finder
    class FileCreator < FileFinder
      def initialize(path = Dir.pwd, options = {})
        options[:find_dirs_only] ||= true
        super path, options
      end

      def name
        'Files (creator)'
      end

      def sorted_matches_for(str, options = {})
        # TODO[adanoff]: we can probably filter directories here (or may be
        # possible in the matcher itself?)
        matches = super
      end

      def open_selection(command, selection, options = {})
        # TODO[adanoff]: this is where we should create the file
        ::VIM::command "echo 'we got one! #{selection}'"
      end
    end
  end
end
