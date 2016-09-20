module ApplicationHelper
  def rediect_filter fitler_path, fitler_id
    path = fitler_path.downcase + "s"
    path + "/" + fitler_id
  end
end
