module Data.Foreign.Callback

where

import Effect

foreign import data Callback0 :: Type -> Type
foreign import data Callback1 :: Type -> Type -> Type
foreign import data Callback2 :: Type -> Type -> Type -> Type
foreign import data Callback3 :: Type -> Type -> Type -> Type -> Type
foreign import data Callback4 :: Type -> Type -> Type -> Type -> Type -> Type
foreign import data Callback5 :: Type -> Type -> Type -> Type -> Type -> Type -> Type
foreign import data Callback6 :: Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type
foreign import data Callback7 :: Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type
foreign import data Callback8 :: Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type
foreign import data Callback9 :: Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type
foreign import data Callback10:: Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type -> Type

foreign import callback0 :: forall r. Effect r -> Callback0 r

foreign import callback1 :: forall r a. (a -> Effect r) -> Callback1 a r

foreign import callback2 :: forall r a b. (a -> b -> Effect r) -> Callback2 a b r

foreign import callback3 :: forall r a b c. (a -> b -> c -> Effect r) -> Callback3 a b c r

foreign import callback4 :: forall r a b c d. (a -> b -> c -> d -> Effect r) -> Callback4 a b c d r

foreign import callback5 :: forall r a b c d e. (a -> b -> c -> d -> e -> Effect r) -> Callback5 a b c d e r

foreign import callback6 :: forall r a b c d e f. (a -> b -> c -> d -> e -> f -> Effect r) -> Callback6 a b c d e f r

foreign import callback7 :: forall r a b c d e f g. (a -> b -> c -> d -> e -> f -> g -> Effect r) -> Callback7 a b c d e f g r

foreign import callback8 :: forall r a b c d e f g h. (a -> b -> c -> d -> e -> f -> g -> h -> Effect r) -> Callback8 a b c d e f g h r

foreign import callback9 :: forall r a b c d e f g h i. (a -> b -> c -> d -> e -> f -> g -> h -> i -> Effect r) -> Callback9 a b c d e f g h i r

foreign import callback10 :: forall r a b c d e f g h i j. (a -> b -> c -> d -> e -> f -> g -> h -> i -> j -> Effect r) -> Callback10 a b c d e f g h i j r

callback1_  eff = callback1  (\a -> eff)
callback2_  eff = callback2  (\a b -> eff)
callback3_  eff = callback3  (\a b c -> eff)
callback4_  eff = callback4  (\a b c d -> eff)
callback5_  eff = callback5  (\a b c d e -> eff)
callback6_  eff = callback6  (\a b c d e f -> eff)
callback7_  eff = callback7  (\a b c d e f g -> eff)
callback8_  eff = callback8  (\a b c d e f g h -> eff)
callback9_  eff = callback9  (\a b c d e f g h i -> eff)
callback10_ eff = callback10 (\a b c d e f g h i j -> eff)
