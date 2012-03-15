require 'rake'

desc "Hook repository dotfiles into system-standard positions."
task :install => :submodules do
  # this has all the linkables from this directory.
  linkables = Dir.glob('*/**{.symlink}')

  skip_all = false
  overwrite_all = false
  backup_all = false

  linkables.each do |linkable|
    overwrite = false
    backup = false

    file = linkable.split('/').last.split('.symlink').last
    source = "#{ENV["PWD"]}/#{linkable}"
    target = "#{ENV["HOME"]}/.#{file}"

    puts "--------"
    puts "file:   #{file}"
    puts "source: #{source}"
    puts "target: #{target}"

    if File.exists?(target) || File.symlink?(target)
      unless skip_all || overwrite_all || backup_all
        puts "File already exists: #{target}, what do you want to do? [s]kip, [S]kip all, [o]verwrite, [O]verwrite all, [b]ackup, [B]ackup all"
        case STDIN.gets.chomp
        when 'o' then overwrite = true
        when 'b' then backup = true
        when 'O' then overwrite_all = true
        when 'B' then backup_all = true
        when 'S' then skip_all = true
        end
      end
      FileUtils.rm_rf(target) if overwrite || overwrite_all
      if backup || backup_all
        if File.symlink?(target) && File.readlink(target).start_with?(Dir.pwd)
          puts "#{target} is a symlink into dotfile repo, no backup needed"
          FileUtils.rm_rf(target)
        else
          `mv "$HOME/.#{file}" "$HOME/.#{file}.backup"`
        end
      end
    end
    `ln -s "$PWD/#{linkable}" "#{target}"`
  end
  success_msg("installed")
end

desc "Init and update submodules."
task :submodules do
  sh('git submodule update --init')
end

desc "Unhook our dotfiles."
task :uninstall do

  repoDir = Dir.pwd

  #find dotfiles linking into repoDir
  Dir.glob('../.*').each do |dotfile|
    if File.symlink?(dotfile) && File.readlink(dotfile).start_with?(repoDir)
      puts "unlink #{dotfile}"
      FileUtils.rm(dotfile)

      if File.exists?("#{dotfile}.backup")
        puts "put backup back in place for #{dotfile}"
        `mv "#{dotfile}.backup" "#{dotfile}"` 
      end
    end
  end
  p
  success_msg("uninstalled")
end

task :default => 'install'


private

def success_msg(action)
  puts ""
  puts ""
  puts "dotfiles have been #{action}. Please restart your terminal and vim."
end
