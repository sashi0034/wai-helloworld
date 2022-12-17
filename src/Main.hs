{-# LANGUAGE OverloadedStrings #-}
module Main where
import Network.HTTP.Types (ok200)
import Network.Wai (Application, responseLBS)
import Network.Wai.Handler.Warp (run)

app :: Application
app _ respond =
  respond $ responseLBS
    ok200
    [("ContentType", "text/plain")]
    "Hello World!"
main :: IO ()
main = run 8080 app
