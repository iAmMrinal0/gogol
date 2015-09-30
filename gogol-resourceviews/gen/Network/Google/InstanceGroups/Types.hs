{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.InstanceGroups.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.InstanceGroups.Types
    (
    -- * Service URL
      instanceGroupsURL

    -- * OperationWarnings
    , OperationWarnings
    , operationWarnings
    , owData
    , owCode
    , owMessage

    -- * ResourceviewsZoneViewsListResourcesFormat
    , ResourceviewsZoneViewsListResourcesFormat (..)

    -- * OperationWarningsData
    , OperationWarningsData
    , operationWarningsData
    , owdValue
    , owdKey

    -- * ResourceView
    , ResourceView
    , resourceView
    , rvSize
    , rvKind
    , rvFingerprint
    , rvNetwork
    , rvResources
    , rvSelfLink
    , rvName
    , rvCreationTimestamp
    , rvId
    , rvLabels
    , rvEndpoints
    , rvDescription

    -- * OperationList
    , OperationList
    , operationList
    , olNextPageToken
    , olKind
    , olItems
    , olSelfLink
    , olId

    -- * ZoneViewsList
    , ZoneViewsList
    , zoneViewsList
    , zvlNextPageToken
    , zvlKind
    , zvlItems
    , zvlSelfLink

    -- * Operation
    , Operation
    , operation
    , oTargetId
    , oStatus
    , oInsertTime
    , oProgress
    , oStartTime
    , oKind
    , oError
    , oHttpErrorMessage
    , oZone
    , oWarnings
    , oHttpErrorStatusCode
    , oUser
    , oSelfLink
    , oName
    , oStatusMessage
    , oCreationTimestamp
    , oEndTime
    , oId
    , oOperationType
    , oRegion
    , oTargetLink
    , oClientOperationId

    -- * ZoneViewsListResourcesResponse
    , ZoneViewsListResourcesResponse
    , zoneViewsListResourcesResponse
    , zvlrrNextPageToken
    , zvlrrItems
    , zvlrrNetwork

    -- * ServiceEndpoint
    , ServiceEndpoint
    , serviceEndpoint
    , seName
    , sePort

    -- * ListResourceResponseItemEndpoints
    , ListResourceResponseItemEndpoints
    , listResourceResponseItemEndpoints

    -- * ZoneViewsRemoveResourcesRequest
    , ZoneViewsRemoveResourcesRequest
    , zoneViewsRemoveResourcesRequest
    , zvrrrResources

    -- * ZoneViewsAddResourcesRequest
    , ZoneViewsAddResourcesRequest
    , zoneViewsAddResourcesRequest
    , zvarrResources

    -- * ResourceviewsZoneViewsListResourcesListState
    , ResourceviewsZoneViewsListResourcesListState (..)

    -- * OperationError
    , OperationError
    , operationError
    , oeErrors

    -- * ZoneViewsGetServiceResponse
    , ZoneViewsGetServiceResponse
    , zoneViewsGetServiceResponse
    , zvgsrFingerprint
    , zvgsrEndpoints

    -- * ListResourceResponseItem
    , ListResourceResponseItem
    , listResourceResponseItem
    , lrriResource
    , lrriEndpoints

    -- * Label
    , Label
    , label
    , lValue
    , lKey

    -- * OperationErrorErrors
    , OperationErrorErrors
    , operationErrorErrors
    , oeeLocation
    , oeeCode
    , oeeMessage

    -- * ZoneViewsSetServiceRequest
    , ZoneViewsSetServiceRequest
    , zoneViewsSetServiceRequest
    , zvssrResourceName
    , zvssrFingerprint
    , zvssrEndpoints

    -- * Alt
    , Alt (..)
    ) where

import           Network.Google.InstanceGroups.Types.Product
import           Network.Google.InstanceGroups.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'v1beta2' of the Google Compute Engine Instance Groups API.
instanceGroupsURL :: BaseUrl
instanceGroupsURL
  = BaseUrl Https
      "https://www.googleapis.com/resourceviews/v1beta2/projects/"
      443