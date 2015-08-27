# encoding: utf-8
namespace :shang_han_lun do
  desc "create a book for shang han lun."
  task :install => :environment do |task, args|
    Book.gen(title:'伤寒论') do
      #chapter title:'太阳中篇' do
        article title:'太阳中风' do
          recipe title:'麻黄汤' do
            ingredient title: '麻黄'
          end
        end
      #end
    end
  end
end
