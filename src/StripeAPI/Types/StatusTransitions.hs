{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.StatusTransitions where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Functor
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Generics
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified StripeAPI.Common

data StatusTransitions
    = StatusTransitions {statusTransitionsCanceled :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                         statusTransitionsFulfiled :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                         statusTransitionsPaid :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                         statusTransitionsReturned :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON StatusTransitions
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "canceled" (statusTransitionsCanceled obj) : (Data.Aeson..=) "fulfiled" (statusTransitionsFulfiled obj) : (Data.Aeson..=) "paid" (statusTransitionsPaid obj) : (Data.Aeson..=) "returned" (statusTransitionsReturned obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "canceled" (statusTransitionsCanceled obj) GHC.Base.<> ((Data.Aeson..=) "fulfiled" (statusTransitionsFulfiled obj) GHC.Base.<> ((Data.Aeson..=) "paid" (statusTransitionsPaid obj) GHC.Base.<> (Data.Aeson..=) "returned" (statusTransitionsReturned obj))))
instance Data.Aeson.Types.FromJSON.FromJSON StatusTransitions
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "StatusTransitions" (\obj -> (((GHC.Base.pure StatusTransitions GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "canceled")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "fulfiled")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "paid")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "returned"))