module Test.Main where

import Prelude (Unit, bind, discard, pure, (/=), (==))

import Effect (Effect)

import Data.Foreign.Callback (Callback0, Callback1, Callback2, Callback3,
                              Callback4, Callback5, Callback6, Callback7, Callback8, Callback9, callback0,
                              callback1_, callback2_, callback3_, callback4_, callback5_, callback6_,
                              callback7_, callback8_, callback9_)

import Test.Assert (assert)

foreign import expectsForeignCb0 :: forall f. f -> Effect Int
foreign import expectsForeignCb1 :: forall f. f -> Effect Int
foreign import expectsForeignCb2 :: forall f. f -> Effect Int
foreign import expectsForeignCb3 :: forall f. f -> Effect Int
foreign import expectsForeignCb4 :: forall f. f -> Effect Int
foreign import expectsForeignCb5 :: forall f. f -> Effect Int
foreign import expectsForeignCb6 :: forall f. f -> Effect Int
foreign import expectsForeignCb7 :: forall f. f -> Effect Int
foreign import expectsForeignCb8 :: forall f. f -> Effect Int
foreign import expectsForeignCb9 :: forall f. f -> Effect Int

effNum :: Effect Int
effNum = pure 42

effFn1 :: forall t. t -> Effect Int
effFn1 = \_ -> effNum

impureFn0 :: Callback0 Int
impureFn0 = callback0  effNum

impureFn1 :: forall t. Callback1 t Int
impureFn1 = callback1_ effNum

impureFn2 :: forall t10 t9. Callback2 t9 t10 Int
impureFn2 = callback2_ effNum

impureFn3 :: forall t13 t14 t15. Callback3 t13 t14 t15 Int
impureFn3 = callback3_ effNum

impureFn4 :: forall t18 t19 t20 t21. Callback4 t18 t19 t20 t21 Int
impureFn4 = callback4_ effNum

impureFn5 :: forall t24 t25 t26 t27 t28. Callback5 t24 t25 t26 t27 t28 Int
impureFn5 = callback5_ effNum

impureFn6 :: forall t31 t32 t33 t34 t35 t36. Callback6 t31 t32 t33 t34 t35 t36 Int
impureFn6 = callback6_ effNum

impureFn7 :: forall t39 t40 t41 t42 t43 t44 t45. Callback7 t39 t40 t41 t42 t43 t44 t45 Int
impureFn7 = callback7_ effNum

impureFn8 :: forall t48 t49 t50 t51 t52 t53 t54 t55. Callback8 t48 t49 t50 t51 t52 t53 t54 t55 Int
impureFn8 = callback8_ effNum

impureFn9 :: forall t57 t58 t59 t60 t61 t62 t63 t64 t66. Callback9 t66 t57 t58 t59 t60 t61 t62 t63 t64 Int
impureFn9 = callback9_ effNum

main :: Effect Unit
main = do
  -- sanity check with normal Eff function
  valEff <- expectsForeignCb1 effFn1
  assert (valEff /= 42)
  -- tests with impure callbacks
  val0 <- expectsForeignCb0 impureFn0
  assert (val0 == 42)
  val1 <- expectsForeignCb1 impureFn1
  assert (val1 == 42)
  val2 <- expectsForeignCb2 impureFn2
  assert (val2 == 42)
  val3 <- expectsForeignCb3 impureFn3
  assert (val3 == 42)
  val4 <- expectsForeignCb4 impureFn4
  assert (val4 == 42)
  val5 <- expectsForeignCb5 impureFn5
  assert (val5 == 42)
  val6 <- expectsForeignCb6 impureFn6
  assert (val6 == 42)
  val7 <- expectsForeignCb7 impureFn7
  assert (val7 == 42)
  val8 <- expectsForeignCb8 impureFn8
  assert (val8 == 42)
  val9 <- expectsForeignCb9 impureFn9
  assert (val9 == 42)

