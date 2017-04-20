module ApplicationHelper

  def get_public_path(path='')
    "#{Rails.root}/public/" + path
  end
  
  def has_files_from_public?(path)
    get_files(get_public_path(path)).length > 0
  end

  def get_files_from_public(path)
    get_files(get_public_path(path))
  end

  def get_files(path)
    return [] unless File.exists?(path)

    [].tap do |t|
      Dir.entries(path).delete_if do |files|
        files =~ /^\./
      end.each do |f|
        t.push((path + f).sub("#{Rails.root}/public/", ""))
      end
    end
  end

end
