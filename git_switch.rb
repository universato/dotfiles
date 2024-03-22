require 'open3'

def get_git_branches
  stdout, stderr, status = Open3.capture3('git', 'branch', '-vv', '--color=always')
  branches = stdout.split("\n").select { |line| line if line != '' }
  current_branch_index = branches.find_index { |branch| branch.start_with?('*') }
  unless current_branch_index.nil?
    current_branch = branches.delete_at(current_branch_index)
    branches.unshift(current_branch)
  end
  branches
end

def switch_branch
  branches = get_git_branches
  if branches.empty?
    puts 'branches: 404 Not Found'
    return
  end

  if branches.length == 1
    puts "Only one branch: #{branches[0]}"
    return
  end

  branches.each_with_index { |branch, i| puts "#{i}: #{branch}" }

  begin
    i = gets.to_i
    if i == 0
      current_branch = branches[i].split[1]
      puts "\tAlready on #{current_branch}"
    elsif i > 0 && i < branches.length
      selected_branch_name = branches[i].split[0].gsub(/\e\[\d*(;\d+)*m/, '')
      puts "\tgit switch #{selected_branch_name}"
      stdout, stderr, status = Open3.capture3('git', 'switch', selected_branch_name)
      puts stdout
      puts stderr
    else
      puts 'Invalid number!!'
    end
  rescue StandardError => e
    puts "Error: #{e.message}"
  end
end

if __FILE__ == $PROGRAM_NAME
  switch_branch
end