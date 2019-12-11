Before do |scn|
  window = Capybara.current_session.current_window
  window.resize_to(1366, 768)
end
