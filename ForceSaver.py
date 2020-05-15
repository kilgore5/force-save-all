import sublime
import sublime_plugin
import os


class ForceSaveAllCommand(sublime_plugin.ApplicationCommand):
  def run(self):
    for w in sublime.windows():
      self._save_files_in_window(w)

  def _save_files_in_window(self, w):
    for v in w.views():
      self._save_existing_file_in_view(v)

  def _save_existing_file_in_view(self, v):
    if v.file_name() and os.path.isfile(v.file_name()):
      v.run_command("save")
