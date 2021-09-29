/*
 * Copyright (C) 2014 The CyanogenMod Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#ifndef _BDROID_BUILDCFG_H
#define _BDROID_BUILDCFG_H



inline const char* BtmGetDefaultName()
{
	char device[92];
	property_get("ro.boot.device", device, "");

	if (!strcmp("j5nlte", device)) {
		return "Samsung Galaxy SM-J500FN";
	} else if (!strcmp("j53gxx", device)) {
		return "Samsung Galaxy J5 SM-J500H";
	} else if (!strcmp("j5ltechn", device)) {
		return "Samsung Galaxy J5 SM-J5008";
	} else if (!strcmp("j5lte", device)) {
		return "Samsung Galaxy J5 SM-J500F/G/M/NO/Y";
	}

	return "Samsung Galaxy J5";
}

#define BTM_DEF_LOCAL_NAME BtmGetDefaultName()

#define BTM_DEF_LOCAL_NAME   "Samsung Galaxy J5"
#define BLUETOOTH_QTI_SW TRUE
#define BTC_INCLUDED TRUE
// Disables read remote device feature
#define BTA_SKIP_BLE_READ_REMOTE_FEAT FALSE
#define MAX_ACL_CONNECTIONS    7
#define MAX_L2CAP_CHANNELS    16
// skips conn update at conn completion
#define BTA_BLE_SKIP_CONN_UPD  FALSE
#define BLE_VND_INCLUDED   TRUE
#define BLE_PERIPHERAL_ADV_NAME  TRUE
#endif
