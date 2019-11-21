module ApplicationHelper
  # Troncate method
  # Source from:
  # https://stackoverflow.com/questions/19046970/truncate-string-when-it-is-too-long
  def truncate(string, max)
    string.length > max ? "#{string[0...max]}..." : string
  end
end
