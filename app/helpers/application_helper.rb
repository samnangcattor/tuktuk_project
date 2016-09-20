module ApplicationHelper
  def rediect_filter fitler_path, fitler_id
    fitler_path = "media_art" if fitler_path == Settings.filters.media_art
    path = fitler_path.downcase + "s"
    path + "/" + fitler_id
  end
end
