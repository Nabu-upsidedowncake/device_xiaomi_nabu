/*
 * Copyright (C) 2015 The CyanogenMod Project
 *               2020 The LineageOS Project
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

package org.pixelexperience.settings.sensors;

import android.hardware.Sensor;
import android.hardware.SensorManager;

/**
 * The SensorsUtils class provides utility methods for working with sensors.
 */
public final class SensorsUtils {
    /**
     * Returns the first sensor of the given type, or null if no sensor of that type is available.
     *
     * @param sm the SensorManager instance to use
     * @param type the type of sensor to retrieve
     * @return the first sensor of the given type, or null if no sensor of that type is available
     */
    public static Sensor getSensor(SensorManager sm, String type) {
        for (Sensor sensor : sm.getSensorList(Sensor.TYPE_ALL)) {
            if (type.equals(sensor.getStringType())) {
                return sensor;
            }
        }
        return null;
    }
}
