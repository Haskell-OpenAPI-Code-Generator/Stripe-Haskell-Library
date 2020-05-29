{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema Rule
module StripeAPI.Types.Rule where

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

-- | Defines the data type for the schema rule
-- 
-- 
data Rule = Rule {
  -- | action: The action taken on the payment.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  ruleAction :: Data.Text.Internal.Text
  -- | id: Unique identifier for the object.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , ruleId :: Data.Text.Internal.Text
  -- | predicate: The predicate to evaluate the payment against.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , rulePredicate :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON Rule
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "action" (ruleAction obj) : (Data.Aeson..=) "id" (ruleId obj) : (Data.Aeson..=) "predicate" (rulePredicate obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "action" (ruleAction obj) GHC.Base.<> ((Data.Aeson..=) "id" (ruleId obj) GHC.Base.<> (Data.Aeson..=) "predicate" (rulePredicate obj)))
instance Data.Aeson.Types.FromJSON.FromJSON Rule
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Rule" (\obj -> ((GHC.Base.pure Rule GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "action")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "predicate"))