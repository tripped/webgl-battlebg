module Main where

import Control.Monad.Eff

foreign import data Random :: !
foreign import random
    "function random() { \
    \  alert('generating random number!'); \
    \  return Math.random(); \
    \}" :: forall r. Eff (random :: Random | r) Number


foreign import data Alert :: !
foreign import alert
    "function alert(s) { \
    \  return function() { window.alert(s); } \
    \}" :: forall r. String -> Eff (alert :: Alert | r) Unit

main = do
    r <- random
    alert $ "Here is your number: " ++ show r
