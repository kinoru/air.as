module Lib
    ( run
    ) where


import Network.HTTP.Types
import qualified Network.Wai as Wai
import qualified Network.Wai.Handler.Warp as Warp

app :: Wai.Application
app _ respond =
    respond $ Wai.responseLBS
        status200
        [("Content-Type", "text/plain")]
        "Hello, World!\n"

run = Warp.run 3000 app
