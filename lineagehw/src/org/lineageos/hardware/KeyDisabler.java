/*
 * Copyright (C) 2016 The CyanogenMod Project
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

package org.lineageos.hardware;

import org.lineageos.internal.util.FileUtils;

import java.io.File;

/*
 * Disable capacitive keys
 *
 * This is intended for use on devices in which the capacitive keys
 * can be fully disabled for replacement with a soft navbar. You
 * really should not be using this on a device with mechanical or
 * otherwise visible-when-inactive keys
 */

public class KeyDisabler {

    private static String KEY_CONTROL_PATH = "/sys/devices/soc.0/78b9000.i2c/i2c-5/5-004a/disable_keys";

    public static boolean isSupported() {
        return FileUtils.isFileWritable(KEY_CONTROL_PATH);
    }

    public static boolean isActive() {
        if (isSupported()) return Integer.parseInt(FileUtils.readOneLine(KEY_CONTROL_PATH)) == 1;
        return false;
    }

    public static boolean setActive(boolean state) {
        if (isSupported()) return FileUtils.writeLine(KEY_CONTROL_PATH, state ? "1" : "0");
        return false;
    }

}
