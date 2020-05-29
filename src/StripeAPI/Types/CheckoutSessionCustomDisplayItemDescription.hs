{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema CheckoutSessionCustomDisplayItemDescription
module StripeAPI.Types.CheckoutSessionCustomDisplayItemDescription where

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

-- | Defines the data type for the schema checkout_session_custom_display_item_description
-- 
-- 
data CheckoutSessionCustomDisplayItemDescription = CheckoutSessionCustomDisplayItemDescription {
  -- | description: The description of the line item.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  checkoutSessionCustomDisplayItemDescriptionDescription :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | images: The images of the line item.
  , checkoutSessionCustomDisplayItemDescriptionImages :: (GHC.Maybe.Maybe ([] Data.Text.Internal.Text))
  -- | name: The name of the line item.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , checkoutSessionCustomDisplayItemDescriptionName :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON CheckoutSessionCustomDisplayItemDescription
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "description" (checkoutSessionCustomDisplayItemDescriptionDescription obj) : (Data.Aeson..=) "images" (checkoutSessionCustomDisplayItemDescriptionImages obj) : (Data.Aeson..=) "name" (checkoutSessionCustomDisplayItemDescriptionName obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "description" (checkoutSessionCustomDisplayItemDescriptionDescription obj) GHC.Base.<> ((Data.Aeson..=) "images" (checkoutSessionCustomDisplayItemDescriptionImages obj) GHC.Base.<> (Data.Aeson..=) "name" (checkoutSessionCustomDisplayItemDescriptionName obj)))
instance Data.Aeson.Types.FromJSON.FromJSON CheckoutSessionCustomDisplayItemDescription
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "CheckoutSessionCustomDisplayItemDescription" (\obj -> ((GHC.Base.pure CheckoutSessionCustomDisplayItemDescription GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "images")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name"))