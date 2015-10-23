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
-- Module      : Network.Google.Resource.Mirror.Timeline.Attachments.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a new attachment to a timeline item.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @mirror.timeline.attachments.insert@.
module Network.Google.Resource.Mirror.Timeline.Attachments.Insert
    (
    -- * REST Resource
      TimelineAttachmentsInsertResource

    -- * Creating a Request
    , timelineAttachmentsInsert
    , TimelineAttachmentsInsert

    -- * Request Lenses
    , taiItemId
    ) where

import           Network.Google.Mirror.Types
import           Network.Google.Prelude

-- | A resource alias for @mirror.timeline.attachments.insert@ method which the
-- 'TimelineAttachmentsInsert' request conforms to.
type TimelineAttachmentsInsertResource =
     "mirror" :>
       "v1" :>
         "timeline" :>
           Capture "itemId" Text :>
             "attachments" :>
               QueryParam "alt" AltJSON :> Post '[JSON] Attachment
       :<|>
       "upload" :>
         "mirror" :>
           "v1" :>
             "timeline" :>
               Capture "itemId" Text :>
                 "attachments" :>
                   QueryParam "alt" AltJSON :>
                     QueryParam "uploadType" AltMedia :>
                       ReqBody '[OctetStream] RequestBody :>
                         Post '[JSON] Attachment

-- | Adds a new attachment to a timeline item.
--
-- /See:/ 'timelineAttachmentsInsert' smart constructor.
newtype TimelineAttachmentsInsert = TimelineAttachmentsInsert
    { _taiItemId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TimelineAttachmentsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'taiItemId'
timelineAttachmentsInsert
    :: Text -- ^ 'taiItemId'
    -> TimelineAttachmentsInsert
timelineAttachmentsInsert pTaiItemId_ =
    TimelineAttachmentsInsert
    { _taiItemId = pTaiItemId_
    }

-- | The ID of the timeline item the attachment belongs to.
taiItemId :: Lens' TimelineAttachmentsInsert Text
taiItemId
  = lens _taiItemId (\ s a -> s{_taiItemId = a})

instance GoogleRequest TimelineAttachmentsInsert
         where
        type Rs TimelineAttachmentsInsert = Attachment
        requestClient TimelineAttachmentsInsert{..}
          = go _taiItemId (Just AltJSON) mirrorService
          where go :<|> _
                  = buildClient
                      (Proxy :: Proxy TimelineAttachmentsInsertResource)
                      mempty

instance GoogleRequest
         (Upload TimelineAttachmentsInsert) where
        type Rs (Upload TimelineAttachmentsInsert) =
             Attachment
        requestClient
          (Upload TimelineAttachmentsInsert{..} body)
          = go _taiItemId (Just AltJSON) (Just AltMedia)
              _taiPayload
              body
              mirrorService
          where _ :<|> go
                  = buildClient
                      (Proxy :: Proxy TimelineAttachmentsInsertResource)
                      mempty
