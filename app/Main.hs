{-# LANGUAGE OverloadedLabels #-}
{-# LANGUAGE OverloadedStrings #-}

module Main where

import qualified GI.Gtk as Gtk

main :: IO ()
main = do
  _ <- Gtk.init Nothing

  win <- Gtk.windowNew Gtk.WindowTypeToplevel
  Gtk.setContainerBorderWidth win 10
  Gtk.setWindowTitle win "Logout Manager"
  Gtk.setWindowResizable win False
  Gtk.setWindowDefaultWidth win 750
  Gtk.setWindowDefaultHeight win 250
  Gtk.setWindowWindowPosition win Gtk.WindowPositionCenter
  Gtk.windowSetDecorated win False

  _ <- Gtk.onWidgetDestroy win Gtk.mainQuit

  #showAll win

  Gtk.main
