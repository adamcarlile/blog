namespace :docker do
  task :release => ['docker:release:app']

  namespace :release do
    task :app do
      sh 'docker build -t "adamcarlile/blog:latest" .'
      sh 'docker push adamcarlile/blog:latest'
    end
  end
end