module Main where

import Network.Wreq ( defaults )
import Data.Text.Encoding ( encodeUtf8 )
import Data.Text ( pack )
import Control.Lens ( (^.) )
import PivotalTrackerApi ( withToken
                         , getStory
                         )
import PivotalTrackerApi.Story ( name )

main :: IO ()
main = do
    story <- getStory authentication projectId storyId
    print $ story ^. name
    where
      authentication = withToken "7f3f76bc6ae8c48e7b528369c999c8d8" defaults
      projectId = 1440520
      storyId = 104591424
