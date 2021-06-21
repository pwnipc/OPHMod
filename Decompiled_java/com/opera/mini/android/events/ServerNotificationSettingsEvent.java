package com.opera.mini.android.events;

import java.util.Map;

/* compiled from: Source */
public class ServerNotificationSettingsEvent {
    public int B;
    public int C;
    public long Code;
    public long I;
    public long J;
    public long Z;
    public int a;
    public long b;
    public boolean c;
    public boolean d;
    public boolean e;
    public long f;
    public long g;
    public long h;
    public long i;
    public long j;
    public String k;

    public ServerNotificationSettingsEvent(Map map) {
        boolean z;
        boolean z2 = true;
        this.Code = I(map, "discover_interval");
        this.I = I(map, "mobile_store_interval");
        this.j = I(map, "mobile_store_check_interval");
        this.B = Code(map, "data_saving_min_bytes_received");
        this.C = Code(map, "data_saving_max_bytes_received");
        this.a = Code(map, "data_saving_max_pages_opened");
        this.b = I(map, "data_saving_wait_time");
        this.i = I(map, "data_saving_delay_after_power_connected");
        this.c = Code(map, "discover_on") == 1;
        if (Code(map, "data_saving_on") == 1) {
            z = true;
        } else {
            z = false;
        }
        this.e = z;
        this.d = Code(map, "mobile_store_on") != 1 ? false : z2;
        this.Z = (long) Code(Z(map, "prime_time_start"));
        this.J = (long) Code(Z(map, "prime_time_end"));
        this.f = I(map, "prime_time_notification_allowed_time_since_last_paused");
        this.g = I(map, "prime_time_notification_fresh_run_protected_time");
        this.h = I(map, "prime_time_app_paused_protected_time");
        this.k = (String) map.get("ga_tracking_id");
        if (this.k != null) {
            this.k = this.k.trim();
            if (this.k.length() == 0) {
                this.k = null;
            }
        }
    }

    private static int Code(Map map, String str) {
        return Integer.parseInt(Z(map, str));
    }

    private static long I(Map map, String str) {
        String trim = Z(map, str).trim();
        long j2 = 1;
        if (trim.length() > 0) {
            int length = trim.length() - 1;
            char charAt = trim.charAt(length);
            if (!Character.isDigit(charAt)) {
                trim = trim.substring(0, length);
                switch (charAt) {
                    case 'd':
                        j2 = 86400000;
                        break;
                    case 'h':
                        j2 = 3600000;
                        break;
                    case 'm':
                        j2 = 60000;
                        break;
                    case 's':
                        j2 = 1000;
                        break;
                }
            }
        }
        return j2 * Long.parseLong(trim);
    }

    private static int Code(String str) {
        String[] split = str.split(":");
        if (split.length != 2) {
            throw new IllegalArgumentException();
        }
        return Integer.parseInt(split[1]) + (Integer.parseInt(split[0]) * 60);
    }

    private static String Z(Map map, String str) {
        if (map.containsKey(str)) {
            return (String) map.get(str);
        }
        throw new IllegalArgumentException(str + " not found");
    }
}
