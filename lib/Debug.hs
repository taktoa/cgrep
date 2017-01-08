--
-- Copyright (c) 2013 Bonelli Nicola <bonelli@antifork.org>
--
-- This program is free software; you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation; either version 2 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program; if not, write to the Free Software
-- Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
--

module Debug where

import Control.Monad.Trans.Reader
import Control.Monad.IO.Class
import Control.Monad

import Options
import Reader


putStrLevel1 :: String -> OptionT IO ()
putStrLevel1 xs = do
    n <- reader $ debug . snd
    when (n > 0) $ liftIO $ putStrLn xs

putStrLevel2 :: String -> OptionT IO ()
putStrLevel2 xs = do
    n <- reader $ debug . snd
    when (n > 1) $ liftIO $ putStrLn xs

putStrLevel3 :: String -> OptionT IO ()
putStrLevel3 xs = do
    n <- reader $ debug . snd
    when (n > 2) $ liftIO $ putStrLn xs
