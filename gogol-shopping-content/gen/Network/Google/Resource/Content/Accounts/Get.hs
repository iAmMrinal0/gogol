{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Content.Accounts.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.accounts.get@.
module Network.Google.Resource.Content.Accounts.Get
    (
    -- * REST Resource
      AccountsGetResource

    -- * Creating a Request
    , accountsGet
    , AccountsGet

    -- * Request Lenses
    , agMerchantId
    , agAccountId
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.accounts.get@ method which the
-- 'AccountsGet' request conforms to.
type AccountsGetResource =
     "content" :>
       "v2" :>
         Capture "merchantId" Word64 :>
           "accounts" :>
             Capture "accountId" Word64 :>
               QueryParam "alt" AltJSON :> Get '[JSON] Account

-- | Retrieves a Merchant Center account.
--
-- /See:/ 'accountsGet' smart constructor.
data AccountsGet = AccountsGet
    { _agMerchantId :: !Word64
    , _agAccountId  :: !Word64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agMerchantId'
--
-- * 'agAccountId'
accountsGet
    :: Word64 -- ^ 'agMerchantId'
    -> Word64 -- ^ 'agAccountId'
    -> AccountsGet
accountsGet pAgMerchantId_ pAgAccountId_ =
    AccountsGet
    { _agMerchantId = pAgMerchantId_
    , _agAccountId = pAgAccountId_
    }

-- | The ID of the managing account.
agMerchantId :: Lens' AccountsGet Word64
agMerchantId
  = lens _agMerchantId (\ s a -> s{_agMerchantId = a})

-- | The ID of the account.
agAccountId :: Lens' AccountsGet Word64
agAccountId
  = lens _agAccountId (\ s a -> s{_agAccountId = a})

instance GoogleRequest AccountsGet where
        type Rs AccountsGet = Account
        requestClient AccountsGet{..}
          = go _agMerchantId _agAccountId (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy AccountsGetResource)
                      mempty
