module Setup

  class Commander

    attr_accessor :argv

    def initialize (argv)
      @argv = argv
    end

    def valid?
      true
    end

    def help
      exit
    end

    def execute
      run_cmd "mkdir -p #{ENV['HOME']}/.backup"

      run_cmd "ln -nfs #{ENV['HOME']}/GitHub/rkiel/vim-setup/dotfiles/vimrc #{ENV['HOME']}/.vimrc"
      run_cmd "ln -nfs #{ENV['HOME']}/GitHub/rkiel/vim-setup/dotfiles/vim #{ENV['HOME']}/.vim"

    end

    private

    def run_cmd ( cmd )
      puts
      puts cmd
      success = system cmd
      unless success
        error "(see above)"
      end
      puts
    end

    def error ( msg )
      puts
      puts "ERROR: #{msg}"
      puts
      exit
    end

  end

end
