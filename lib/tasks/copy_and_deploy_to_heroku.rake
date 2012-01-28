require 'FileUtils'

desc "Copy files from the files from the myteeroom dir to the myteeroomReduced directory without the unwanted folders
 like the basefile folder where design assets are stored."
task :copy_files_and_deploy do
 	# Deleting existing files
 	Dir.chdir('D:\Work\Design\myteeroomReduced')
 	files_to_delete = Dir.glob('*')
	FileUtils.rm_rf files_to_delete
 	# Copying over the new files
	Dir.chdir('D:\Work\Design\myteeroom')
	files_to_copy = Dir.glob('*')
	FileUtils.cp_r files_to_copy, 'D:\Work\Design\myteeroomReduced'
  FileUtils.rm_rf 'D:\Work\Design\myteeroomReduced\baseFiles'

 	# Commit work
	Dir.chdir('D:\Work\Design\myteeroomReduced')
	sh 'git add .'
 	sh 'git commit -m "Automated commit from rake"'
 	# Push to heroku
 	sh 'git push heroku master'

 	# Returning to original directory
 	Dir.chdir('D:\Work\Design\myteeroom')
end