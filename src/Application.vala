/*
* Copyright (c) 2011-2018 Your Organization (https://yourwebsite.com)
*
* This program is free software; you can redistribute it and/or
* modify it under the terms of the GNU General Public
* License as published by the Free Software Foundation; either
* version 2 of the License, or (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
* General Public License for more details.
*
* You should have received a copy of the GNU General Public
* License along with this program; if not, write to the
* Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
* Boston, MA 02110-1301 USA
*
* Authored by: Erick Ozaki <erick.ozaki@gmail.com>
*/

public class Election : Gtk.Application {
  public Election () {
    Object (
      application_id: "com.github.eozaki.election",
      flags: ApplicationFlags.FLAGS_NONE
      );
  }

  protected override void activate () {
    var main_window = new Gtk.ApplicationWindow (this);
    var button = new Gtk.Button.with_label ("Currently not activated");
    button.margin = 12;

    button.clicked.connect (() => {
      button.label = "Currently activated";
      button.sensitive = false;
    });
    main_window.add (button);
    main_window.default_height = 300;
    main_window.default_width = 900;
    main_window.title = "Election - Select a CPU governor";
    main_window.show_all ();
  }

  public static int main (string[] args) {
    var app = new Election ();
    return app.run (args);
  }
}
