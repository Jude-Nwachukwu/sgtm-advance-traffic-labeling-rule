___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Advance Traffic Labeling Rule",
  "description": "Segment traffic using rules based on debugging status, IP Address, event data, request parameters, cookies, custom variables, domain, and URL queries, helping label internal vs. external traffic.",
  "containerContexts": [
    "SERVER"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "LABEL",
    "name": "templateText",
    "displayName": "Configure Internal Rules (Debug Mode Is Enabled by Default)"
  },
  {
    "type": "TEXT",
    "name": "intTrafficOutputLabel",
    "displayName": "Label for Internal Traffic",
    "simpleValueType": true,
    "help": "Specify the label for the variable\u0027s output value when the traffic is internal.",
    "valueHint": "e.g., internal_visit",
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ]
  },
  {
    "type": "TEXT",
    "name": "extTrafficOutputLabel",
    "displayName": "Label for External Traffic",
    "simpleValueType": true,
    "help": "Specify the label for the variable\u0027s output value when the traffic is external.",
    "valueHint": "e.g., external_visit",
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ]
  },
  {
    "type": "CHECKBOX",
    "name": "useCookieRule",
    "checkboxText": "Include Cookie Name in Rule",
    "simpleValueType": true,
    "help": "Enable this option if you want to use a cookie name as a condition for labeling traffic."
  },
  {
    "type": "CHECKBOX",
    "name": "useEventDataRule",
    "checkboxText": "Include Event Data in Rule",
    "simpleValueType": true,
    "help": "Enable this option if you want to use a Event Data path as a condition for labeling traffic."
  },
  {
    "type": "CHECKBOX",
    "name": "useRequestParameterRule",
    "checkboxText": "Include Request Parameter in Rule",
    "simpleValueType": true,
    "help": "Enable this option if you want to use a Request query parameter as a condition for labeling traffic."
  },
  {
    "type": "CHECKBOX",
    "name": "useURLParameterRule",
    "checkboxText": "Include Page URL Parameter in Rule",
    "simpleValueType": true,
    "help": "Enable this option if you want to use a URL query parameter as a condition for labeling traffic."
  },
  {
    "type": "CHECKBOX",
    "name": "useIPAddressRule",
    "checkboxText": "Include IP Address in Rule",
    "simpleValueType": true,
    "help": "Enable this option if you want to use a IP address as a condition for labeling traffic."
  },
  {
    "type": "CHECKBOX",
    "name": "useCustomRule",
    "checkboxText": "Include Your Own Variable in Rule",
    "simpleValueType": true,
    "help": "Enable this option if you want to use a GTM variable as a condition for labeling traffic."
  },
  {
    "type": "CHECKBOX",
    "name": "useHostnameRule",
    "checkboxText": "Include Hostname in Rule",
    "simpleValueType": true,
    "help": "Enable this option if you want to use the hostname as a condition for labeling traffic."
  },
  {
    "type": "GROUP",
    "name": "cookieBaseRuleConfig",
    "displayName": "Add Cookie Rules",
    "groupStyle": "ZIPPY_OPEN",
    "subParams": [
      {
        "type": "SIMPLE_TABLE",
        "name": "cookieNameValueMap",
        "displayName": "Cookie Map",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Cookie Name",
            "name": "cookieName",
            "type": "TEXT",
            "valueHint": "traffic_type_cookie"
          },
          {
            "defaultValue": "",
            "displayName": "Cookie Value",
            "name": "cookieValue",
            "type": "TEXT",
            "valueHint": "internal_visitor"
          }
        ],
        "help": "Enter the name of the cookie and the corresponding value that will be used to label the traffic type."
      }
    ],
    "help": "Add rules based on cookie values to identify internal traffic.",
    "enablingConditions": [
      {
        "paramName": "useCookieRule",
        "paramValue": true,
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "eventDataRuleConfig",
    "displayName": "Add Event Data Rules",
    "groupStyle": "ZIPPY_OPEN",
    "subParams": [
      {
        "type": "SIMPLE_TABLE",
        "name": "eventNameValueMap",
        "displayName": "Cookie Map",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Event Data Key Path",
            "name": "eventDataKeyPath",
            "type": "TEXT",
            "valueHint": "traffic_type_cookie"
          },
          {
            "defaultValue": "",
            "displayName": "Corresponding Value",
            "name": "eventDataValue",
            "type": "TEXT",
            "valueHint": "internal_visitor"
          }
        ],
        "help": "Enter the name of the cookie and the corresponding value that will be used to label the traffic type."
      }
    ],
    "help": "Add rules based on event data values to identify internal traffic.",
    "enablingConditions": [
      {
        "paramName": "useEventDataRule",
        "paramValue": true,
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "requestParameterRuleRuleConfig",
    "displayName": "Add Request Parameter Rules",
    "groupStyle": "ZIPPY_OPEN",
    "subParams": [
      {
        "type": "SIMPLE_TABLE",
        "name": "requestParameterMap",
        "displayName": "Request Parameter Mapping",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Request Query Parameter",
            "name": "requestQueryParameter",
            "type": "TEXT",
            "valueHint": "traffic_type_cookie"
          },
          {
            "defaultValue": "",
            "displayName": "Corresponding Value",
            "name": "requestParemeterValue",
            "type": "TEXT",
            "valueHint": "internal_visitor"
          }
        ],
        "help": "Enter the name of the request parameter and the corresponding value that will be used to label the traffic type."
      }
    ],
    "help": "Add rules based on event data values to identify internal traffic.",
    "enablingConditions": [
      {
        "paramName": "useRequestParameterRule",
        "paramValue": true,
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "urlParamBaseRuleConfig",
    "displayName": "Add Use Parameter Rules",
    "groupStyle": "ZIPPY_OPEN",
    "subParams": [
      {
        "type": "RADIO",
        "name": "pageURLSource",
        "displayName": "Select Page Location (URL Source)",
        "radioItems": [
          {
            "value": "page_locationEventData",
            "displayValue": "Use \"page_location\" Source"
          },
          {
            "value": "yourPageLocationDefinedVar",
            "displayValue": "Use Your Defined Variable",
            "subParams": [
              {
                "type": "TEXT",
                "name": "pageURLVar",
                "displayName": "Enter The URL Variable",
                "simpleValueType": true,
                "help": "Here is where you enter the page URL variable",
                "valueHint": "{{ED - page URL}}"
              }
            ],
            "help": "If you want to use your variable that references the page location variable."
          }
        ],
        "simpleValueType": true
      },
      {
        "type": "SIMPLE_TABLE",
        "name": "urlQueryMatching",
        "displayName": "URL Query Table",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "URL Query Key",
            "name": "urlQueryParameter",
            "type": "TEXT",
            "valueHint": "traffic_type"
          },
          {
            "defaultValue": "",
            "displayName": "URL Query Value",
            "name": "urlQueryParameterValue",
            "type": "TEXT",
            "valueHint": "internal"
          }
        ]
      },
      {
        "type": "CHECKBOX",
        "name": "utilizeQueryParameterPresence",
        "checkboxText": "Check For The Presence Of Certain URL Query Keys",
        "simpleValueType": true
      },
      {
        "type": "TEXT",
        "name": "urlQueryParamField",
        "displayName": "Enter URL Query Parameter",
        "simpleValueType": true,
        "valueHint": "e.g., traffic_type,preview,demo",
        "help": "Enter the URL query parameter name used to label the traffic type, can be more than one, but comma separated.",
        "enablingConditions": [
          {
            "paramName": "utilizeQueryParameterPresence",
            "paramValue": true,
            "type": "EQUALS"
          }
        ]
      }
    ],
    "help": "Add rules based on URL query parameters to identify internal traffic.",
    "enablingConditions": [
      {
        "paramName": "useURLParameterRule",
        "paramValue": true,
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "ipAddressRuleConfig",
    "displayName": "Add IP Addresses Rules",
    "groupStyle": "ZIPPY_OPEN",
    "subParams": [
      {
        "type": "RADIO",
        "name": "userIPAddressSource",
        "displayName": "Select IP Address",
        "radioItems": [
          {
            "value": "ip_overrideEventData",
            "displayValue": "Use \"ip_override\" Source"
          },
          {
            "value": "yourIPDefinedVar",
            "displayValue": "Use Your Defined Variable",
            "subParams": [
              {
                "type": "TEXT",
                "name": "customIPAddressVar",
                "displayName": "Enter The IP Address Variable",
                "simpleValueType": true,
                "help": "Here is where you enter the IP Address variable",
                "valueHint": "{{ED - IP Address}}"
              }
            ],
            "help": "If you want to use your variable that references the page location variable."
          }
        ],
        "simpleValueType": true,
        "valueValidators": []
      },
      {
        "type": "PARAM_TABLE",
        "name": "ipAddressList",
        "displayName": "Add Rows For Each IP Address",
        "paramTableColumns": [
          {
            "param": {
              "type": "TEXT",
              "name": "ipAddressTextF",
              "displayName": "Enter IP Address",
              "simpleValueType": true,
              "valueValidators": [
                {
                  "type": "NON_EMPTY"
                }
              ]
            },
            "isUnique": false
          }
        ],
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ]
      }
    ],
    "help": "Add rules based on local storage keys to identify internal traffic.",
    "enablingConditions": [
      {
        "paramName": "useIPAddressRule",
        "paramValue": true,
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "customVarRuleConfig",
    "displayName": "Add GTM Variable Custom Rules",
    "groupStyle": "ZIPPY_OPEN",
    "subParams": [
      {
        "type": "SIMPLE_TABLE",
        "name": "customRuleTabMatching",
        "displayName": "Custom Variable Value Matching",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Custom Variable",
            "name": "customKeyFieldColumn",
            "type": "TEXT",
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              }
            ],
            "valueHint": "e.g., {{region traffic_type}}"
          },
          {
            "defaultValue": "",
            "displayName": "Corresponding Value",
            "name": "customKeyValueFieldColumn",
            "type": "TEXT",
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              }
            ],
            "valueHint": "internal"
          }
        ],
        "help": "Enter the GTM custom variable used to label the traffic type, and the corresponding value for each variable row.",
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ]
      }
    ],
    "help": "Add rules based on DataLayer variables to identify internal traffic.",
    "enablingConditions": [
      {
        "paramName": "useCustomRule",
        "paramValue": true,
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "urlHotsnameRuleConfig",
    "displayName": "Add Hostname (Domains) Rules",
    "groupStyle": "ZIPPY_OPEN",
    "subParams": [
      {
        "type": "RADIO",
        "name": "pageHostnameSource",
        "displayName": "Select Page Location (URL Source)",
        "radioItems": [
          {
            "value": "page_hostnameEventData",
            "displayValue": "Use \"page_hostname\" Source"
          },
          {
            "value": "yourHostnameDefinedVar",
            "displayValue": "Use Your Defined Variable",
            "subParams": [
              {
                "type": "TEXT",
                "name": "pageHostnameVar",
                "displayName": "Enter The Page Hostname Variable",
                "simpleValueType": true,
                "help": "Here is where you enter the page Hostname variable",
                "valueHint": "{{ED - page URL}}"
              }
            ],
            "help": "If you want to use your variable that references the page location variable."
          }
        ],
        "simpleValueType": true
      },
      {
        "type": "TEXT",
        "name": "domainNameField",
        "displayName": "Enter Internal Domains (Comma Separated)",
        "simpleValueType": true,
        "valueHint": "e.g., abc.com,xyz.com",
        "help": "Enter multiple internal domains separated by commas."
      }
    ],
    "help": "Add rules based on hostname values to identify internal traffic.",
    "enablingConditions": [
      {
        "paramName": "useHostnameRule",
        "paramValue": true,
        "type": "EQUALS"
      }
    ]
  }
]


___SANDBOXED_JS_FOR_SERVER___

// Import required GTM Core APIs
const getContainerVersion = require('getContainerVersion');
const getCookieValues = require('getCookieValues');
const decodeUriComponent = require('decodeUriComponent');
const makeString = require('makeString');
const makeTableMap = require('makeTableMap');
const getEventData = require('getEventData');
const getRequestQueryParameter = require('getRequestQueryParameter');
const parseUrl = require('parseUrl');
const getType = require("getType");

// Retrieve container version details
const containerVersion = getContainerVersion();

// Get field values
const intTrafficLabel = data.intTrafficOutputLabel;
const extTrafficLabel = data.extTrafficOutputLabel;

// **Step 1: Check Debug Mode & Preview Mode**

if (containerVersion.debugMode === true || containerVersion.previewMode === true) {
  return intTrafficLabel;
}

// **Step 2: Cookie Rule Check**
if (data.useCookieRule === true) {
  const cookieMap = makeTableMap(data.cookieNameValueMap || [], 'cookieName', 'cookieValue');
  if (cookieMap) {
    for (const cookieName in cookieMap) {
      if (cookieMap.hasOwnProperty(cookieName)) {
        if (getCookieValues(cookieName).some(value => decodeUriComponent(value) === cookieMap[cookieName])) {
          return intTrafficLabel;
        }
      }
    }
  }
}

// **Step 3: Event Data Rule Check**
if (data.useEventDataRule === true) {
  const eventDataMap = makeTableMap(data.eventNameValueMap || [], 'eventDataKeyPath', 'eventDataValue');
  if (eventDataMap) {
    for (const keyPath in eventDataMap) {
      if (eventDataMap.hasOwnProperty(keyPath)) {
        if (makeString(getEventData(keyPath)) === eventDataMap[keyPath]) {
          return intTrafficLabel;
        }
      }
    }
  }
}

// **Step 4: Request Parameter Rule Check**
if (data.useRequestParameterRule === true) {
  const requestParamMap = makeTableMap(data.requestParameterMap || [], 'requestQueryParameter', 'requestParemeterValue');
  if (requestParamMap) {
    for (const paramKey in requestParamMap) {
      if (requestParamMap.hasOwnProperty(paramKey)) {
        if (makeString(getRequestQueryParameter(paramKey)) === requestParamMap[paramKey]) {
          return intTrafficLabel;
        }
      }
    }
  }
}

// **Step 5: Custom Rule Check using makeTableMap**
if (data.useCustomRule === true) {
  const customRuleMap = makeTableMap(data.customRuleTabMatching || [], 'customKeyFieldColumn', 'customKeyValueFieldColumn');
  if (customRuleMap) {
    for (const customKey in customRuleMap) {
      if (customRuleMap.hasOwnProperty(customKey)) {
        if (makeString(customKey) === makeString(customRuleMap[customKey])) {
          return intTrafficLabel;
        }
      }
    }
  }
}

// **Step 6: IP Address Check**
if (data.useIPAddressRule === true) {
  let userIP = '';
  if (data.userIPAddressSource === 'ip_overrideEventData') {
    userIP = makeString(getEventData('ip_override'));
  } else if (data.userIPAddressSource === 'yourIPDefinedVar') {
    userIP = makeString(data.customIPAddressVar);
  }

  for (let i = 0; i < data.ipAddressList.length; i++) {
    if (makeString(data.ipAddressList[i].ipAddressTextF) === userIP) {
      return intTrafficLabel;
    }
  }
}

// **Step 7: Hostname Check using parseUrl**
if (data.useHostnameRule === true) {
  let pageHostname = '';
  if (data.pageHostnameSource === 'page_hostnameEventData') {
    pageHostname = makeString(getEventData('page_location'));
  } else if (data.pageHostnameSource === 'yourHostnameDefinedVar') {
    pageHostname = makeString(data.pageHostnameVar);
  }
  
  if (!pageHostname) {
    return extTrafficLabel;
  }

  // Check if it's a full URL, parse it to extract the hostname
  if (pageHostname.indexOf('http') === 0) {
    const parsedUrl = parseUrl(pageHostname) || {};
    pageHostname = parsedUrl.hostname || '';
  }

  if (data.stripWww && pageHostname.indexOf('www.') === 0) {
    pageHostname = pageHostname.replace('www.', '');
  }
  
  const domainList = makeString(data.domainNameField).split(',').map(domain => domain.trim());
  for (let i = 0; i < domainList.length; i++) {
    if (domainList[i] === pageHostname) {
      return intTrafficLabel;
    }
  }
}

// **Step 8: URL Parameter Check using parseUrl**
if (data.useURLParameterRule === true) {
  let pageURL = '';
  if (data.pageURLSource === 'page_locationEventData') {
    pageURL = makeString(getEventData('page_location'));
  } else if (data.pageURLSource === 'yourPageLocationDefinedVar') {
    pageURL = makeString(data.pageURLVar);
  }

  if (!pageURL) {
    return extTrafficLabel;
  }

  const parsedUrl = parseUrl(pageURL) || {};
  const urlParams = parsedUrl.searchParams || {};

  if (data.urlQueryMatching && data.urlQueryMatching.length > 0) {
    const queryParams = makeTableMap(data.urlQueryMatching, 'urlQueryParameter', 'urlQueryParameterValue');
    for (const key in queryParams) {
      if (queryParams.hasOwnProperty(key) && makeString(decodeUriComponent(urlParams[key] || '')) === makeString(queryParams[key])) {
        return intTrafficLabel;
      }
    }
  }

  if (data.utilizeQueryParameterPresence === true && data.urlQueryParamField) {
    const queryKeys = makeString(data.urlQueryParamField).split(',').map(s => s.trim());
    for (let i = 0; i < queryKeys.length; i++) {
      if (urlParams.hasOwnProperty(queryKeys[i]) && urlParams[queryKeys[i]] !== '') {
        return intTrafficLabel;
      }
    }
  }
}

// **Final Step: If No Rules Match, Return External Traffic Label**
return extTrafficLabel;


___SERVER_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "read_request",
        "versionId": "1"
      },
      "param": [
        {
          "key": "requestAccess",
          "value": {
            "type": 1,
            "string": "any"
          }
        },
        {
          "key": "headerAccess",
          "value": {
            "type": 1,
            "string": "any"
          }
        },
        {
          "key": "queryParameterAccess",
          "value": {
            "type": 1,
            "string": "any"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "get_cookies",
        "versionId": "1"
      },
      "param": [
        {
          "key": "cookieAccess",
          "value": {
            "type": 1,
            "string": "any"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "read_container_data",
        "versionId": "1"
      },
      "param": []
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "read_event_data",
        "versionId": "1"
      },
      "param": [
        {
          "key": "eventDataAccess",
          "value": {
            "type": 1,
            "string": "any"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []


___NOTES___

Created on 2/12/2025, 10:05:16 PM


