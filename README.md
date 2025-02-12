# Advance Traffic Labeling Rule GTM Variable For Server-side Tagging

## Overview
The **Advance Traffic Labeling Rule** is a **Server-side Google Tag Manager (GTM) variable custom template** designed for **flexible traffic segmentation** based on various rules, including **domains, cookies, storage, query parameters, custom variables, and event data**. This template helps distinguish **internal vs. external traffic** based on user-defined rules.

[Check out the Web GTM version of this variable here](https://github.com/Jude-Nwachukwu/gtm-advance-traffic-labeling-rule)

## Features
- **Default Behavior**: Uses GTM’s `debugMode` and `previewMode` to classify traffic.
- **Custom Rule-Based Segmentation**: Supports **cookies, query parameters, IP address, event data, Data Layer variables, and hostname validation**.
- **Flexible Configuration**: Users can enable or disable different traffic rules to suit their needs.
- **No-Code UI-Based Setup**: Configure everything within GTM’s template UI—no manual JavaScript needed.

---

## How to Set Up & Configure
### **Step 1: Add the Variable to GTM**
1. Go to **Server Google Tag Manager Container**.
2. Navigate to **Templates > New**.
3. Click **Import Template** and select the `Advance Traffic Labeling Rule` template.
4. Save the template.

### **Step 2: Configure the Variable in the GTM UI**
Go to **Variables > New > User-Defined Variables**, select `Advance Traffic Labeling Rule`, and configure the fields:

#### **Default Behavior (Always Applied)**
- **Debug Mode Check**: If `debugMode` is `true`, the variable returns the **internal traffic label**.
- **Preview Mode Check**: If `previewMode` is `true`, the variable returns the **internal traffic label**.

#### **Custom Rules (Optional - Enabled Manually)**
You can enable one or multiple rules to define internal traffic:

| Rule Type                | Description |
|-------------------------|-------------|
| **Cookie Rule**         | Checks if a specific cookie exists and matches the expected value. |
| **URL Query Parameter** | Checks if a URL query parameter exists and matches the expected value or just its presence. |
| **Event Data Rule**     | Checks for specific values in the event data key paths. |
| **IP Address Rule**     | Validates traffic based on a predefined list of IP addresses. |
| **Custom Variable Rule** | Allows users to specify a GTM variable for traffic classification. |
| **Hostname Rule**       | Checks if the current domain matches a user-defined list. |

### **Step 3: Configure the Variable for Each Rule**

#### **Cookie Rule**
1. Enable **Use Cookie Rule** in the template settings.
2. Use the **Cookie Name and Value Mapping Table** to define multiple key-value pairs.
3. Enable **Check for the Presence of Certain Cookie Names** if you only need to verify cookie name existence.

#### **URL Query Parameter Rule**
1. Enable **Use URL Query Parameter Rule** in the template settings.
2. Use the **URL Query Table** to define multiple key-value pairs.
3. Enable **Check for the Presence of Certain URL Query Keys** if you only need to verify query key existence.

#### **Hostname Rule**
1. Enable **Use Hostname Rule** in the template settings.
2. Enter the **domain(s)** in `domainNameField` (separated by commas).
3. The variable will check if the current page hostname matches any of the specified domains.

### **Step 3b: Configure Event Data, IP Address, and Custom Variables**
For **Event Data**, enter the **key path** of the event data.

For **IP Address**, choose between predefined GTM event data (`ip_override`) or a custom variable.

For **Custom Variables**, use a predefined GTM variable and enter expected values in the mapping table.

---

## Expected Output
The variable outputs different labels based on configuration.

| Debug Mode | Preview Mode | Cookie Rule | URL Rule | Event Data | IP Address | Custom Variable | Hostname | Output Label |
|------------|-------------|-------------|----------|------------|------------|----------------|----------|--------------|
| ✅ `true`  | ❌ `false`  | -           | -        | -          | -          | -              | -        | Internal Label |
| ❌ `false` | ✅ `true`   | -           | -        | -          | -          | -              | -        | Internal Label |
| ❌ `false` | ❌ `false`  | ✅ `match`  | -        | -          | -          | -              | -        | Internal Label |
| ❌ `false` | ❌ `false`  | ❌ `no match` | ✅ `match` | - | - | - | - | Internal Label |
| ❌ `false` | ❌ `false`  | ❌ `no match` | ❌ `no match` | ✅ `match` | - | - | - | Internal Label |
| ❌ `false` | ❌ `false`  | ❌ `no match` | ❌ `no match` | ❌ `no match` | ✅ `match` | - | - | Internal Label |
| ❌ `false` | ❌ `false`  | ❌ `no match` | ❌ `no match` | ❌ `no match` | ❌ `no match` | ✅ `match` | - | Internal Label |
| ❌ `false` | ❌ `false`  | ❌ `no match` | ❌ `no match` | ❌ `no match` | ❌ `no match` | ❌ `no match` | ✅ `match` | Internal Label |
| ❌ `false` | ❌ `false`  | ❌ `no match` | ❌ `no match` | ❌ `no match` | ❌ `no match` | ❌ `no match` | ❌ `no match` | External Label |

---

## Author
Created by **Jude Nwachukwu Onyejekwe**.

This template is part of the [Dumbdata.co Measurement Resource Hub](https://dumbdata.co), which provides resources designed to simplify measurement strategies and implementations.

---
## License
This project is licensed under the Apache License.

