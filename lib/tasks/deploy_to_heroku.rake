desc "Precompile assets and then commit the files and push to heroku"
task :deploy_to_heroku do
 	# Precompiling assets before deploying to heroku
  sh 'RAILS_ENV=production bundle exec rake assets:precompile'
	# Committing to git
	begin
  	sh "git add ."
    sh 'git commit -m "Commit by Rake task to add new assets"'
  rescue
  	# Currently I cannot determine if git add . really added any new files (an empty commit)); I ignore the error raised by git if a commit is empty.
	end
 	# Pushing to heroku
 	sh 'git push heroku master -f'
end




