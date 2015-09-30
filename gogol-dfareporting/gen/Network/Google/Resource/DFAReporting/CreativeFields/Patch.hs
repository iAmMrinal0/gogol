{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.CreativeFields.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing creative field. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingCreativeFieldsPatch@.
module Network.Google.Resource.DFAReporting.CreativeFields.Patch
    (
    -- * REST Resource
      CreativeFieldsPatchResource

    -- * Creating a Request
    , creativeFieldsPatch'
    , CreativeFieldsPatch'

    -- * Request Lenses
    , cfpQuotaUser
    , cfpPrettyPrint
    , cfpUserIp
    , cfpProfileId
    , cfpKey
    , cfpId
    , cfpOauthToken
    , cfpFields
    , cfpAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingCreativeFieldsPatch@ which the
-- 'CreativeFieldsPatch'' request conforms to.
type CreativeFieldsPatchResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "creativeFields" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "id" Int64 :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Patch '[JSON] CreativeField

-- | Updates an existing creative field. This method supports patch
-- semantics.
--
-- /See:/ 'creativeFieldsPatch'' smart constructor.
data CreativeFieldsPatch' = CreativeFieldsPatch'
    { _cfpQuotaUser   :: !(Maybe Text)
    , _cfpPrettyPrint :: !Bool
    , _cfpUserIp      :: !(Maybe Text)
    , _cfpProfileId   :: !Int64
    , _cfpKey         :: !(Maybe Text)
    , _cfpId          :: !Int64
    , _cfpOauthToken  :: !(Maybe Text)
    , _cfpFields      :: !(Maybe Text)
    , _cfpAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeFieldsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfpQuotaUser'
--
-- * 'cfpPrettyPrint'
--
-- * 'cfpUserIp'
--
-- * 'cfpProfileId'
--
-- * 'cfpKey'
--
-- * 'cfpId'
--
-- * 'cfpOauthToken'
--
-- * 'cfpFields'
--
-- * 'cfpAlt'
creativeFieldsPatch'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> CreativeFieldsPatch'
creativeFieldsPatch' pCfpProfileId_ pCfpId_ =
    CreativeFieldsPatch'
    { _cfpQuotaUser = Nothing
    , _cfpPrettyPrint = True
    , _cfpUserIp = Nothing
    , _cfpProfileId = pCfpProfileId_
    , _cfpKey = Nothing
    , _cfpId = pCfpId_
    , _cfpOauthToken = Nothing
    , _cfpFields = Nothing
    , _cfpAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cfpQuotaUser :: Lens' CreativeFieldsPatch' (Maybe Text)
cfpQuotaUser
  = lens _cfpQuotaUser (\ s a -> s{_cfpQuotaUser = a})

-- | Returns response with indentations and line breaks.
cfpPrettyPrint :: Lens' CreativeFieldsPatch' Bool
cfpPrettyPrint
  = lens _cfpPrettyPrint
      (\ s a -> s{_cfpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cfpUserIp :: Lens' CreativeFieldsPatch' (Maybe Text)
cfpUserIp
  = lens _cfpUserIp (\ s a -> s{_cfpUserIp = a})

-- | User profile ID associated with this request.
cfpProfileId :: Lens' CreativeFieldsPatch' Int64
cfpProfileId
  = lens _cfpProfileId (\ s a -> s{_cfpProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cfpKey :: Lens' CreativeFieldsPatch' (Maybe Text)
cfpKey = lens _cfpKey (\ s a -> s{_cfpKey = a})

-- | Creative Field ID
cfpId :: Lens' CreativeFieldsPatch' Int64
cfpId = lens _cfpId (\ s a -> s{_cfpId = a})

-- | OAuth 2.0 token for the current user.
cfpOauthToken :: Lens' CreativeFieldsPatch' (Maybe Text)
cfpOauthToken
  = lens _cfpOauthToken
      (\ s a -> s{_cfpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cfpFields :: Lens' CreativeFieldsPatch' (Maybe Text)
cfpFields
  = lens _cfpFields (\ s a -> s{_cfpFields = a})

-- | Data format for the response.
cfpAlt :: Lens' CreativeFieldsPatch' Alt
cfpAlt = lens _cfpAlt (\ s a -> s{_cfpAlt = a})

instance GoogleRequest CreativeFieldsPatch' where
        type Rs CreativeFieldsPatch' = CreativeField
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u CreativeFieldsPatch'{..}
          = go _cfpQuotaUser (Just _cfpPrettyPrint) _cfpUserIp
              _cfpProfileId
              _cfpKey
              (Just _cfpId)
              _cfpOauthToken
              _cfpFields
              (Just _cfpAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CreativeFieldsPatchResource)
                      r
                      u