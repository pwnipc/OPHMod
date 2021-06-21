.class public Lcom/opera/mini/android/events/ServerNotificationSettingsEvent;
.super Ljava/lang/Object;
.source "Source"


# instance fields
.field public B:I

.field public C:I

.field public Code:J

.field public I:J

.field public J:J

.field public Z:J

.field public a:I

.field public b:J

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:J

.field public g:J

.field public h:J

.field public i:J

.field public j:J

.field public k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "discover_interval"

    invoke-static {p1, v0}, Lcom/opera/mini/android/events/ServerNotificationSettingsEvent;->I(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/opera/mini/android/events/ServerNotificationSettingsEvent;->Code:J

    .line 32
    const-string v0, "mobile_store_interval"

    invoke-static {p1, v0}, Lcom/opera/mini/android/events/ServerNotificationSettingsEvent;->I(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/opera/mini/android/events/ServerNotificationSettingsEvent;->I:J

    .line 33
    const-string v0, "mobile_store_check_interval"

    invoke-static {p1, v0}, Lcom/opera/mini/android/events/ServerNotificationSettingsEvent;->I(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/opera/mini/android/events/ServerNotificationSettingsEvent;->j:J

    .line 35
    const-string v0, "data_saving_min_bytes_received"

    invoke-static {p1, v0}, Lcom/opera/mini/android/events/ServerNotificationSettingsEvent;->Code(Ljava/util/Map;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/opera/mini/android/events/ServerNotificationSettingsEvent;->B:I

    .line 36
    const-string v0, "data_saving_max_bytes_received"

    invoke-static {p1, v0}, Lcom/opera/mini/android/events/ServerNotificationSettingsEvent;->Code(Ljava/util/Map;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/opera/mini/android/events/ServerNotificationSettingsEvent;->C:I

    .line 37
    const-string v0, "data_saving_max_pages_opened"

    invoke-static {p1, v0}, Lcom/opera/mini/android/events/ServerNotificationSettingsEvent;->Code(Ljava/util/Map;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/opera/mini/android/events/ServerNotificationSettingsEvent;->a:I

    .line 38
    const-string v0, "data_saving_wait_time"

    invoke-static {p1, v0}, Lcom/opera/mini/android/events/ServerNotificationSettingsEvent;->I(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/opera/mini/android/events/ServerNotificationSettingsEvent;->b:J

    .line 39
    const-string v0, "data_saving_delay_after_power_connected"

    invoke-static {p1, v0}, Lcom/opera/mini/android/events/ServerNotificationSettingsEvent;->I(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/opera/mini/android/events/ServerNotificationSettingsEvent;->i:J

    .line 41
    const-string v0, "discover_on"

    invoke-static {p1, v0}, Lcom/opera/mini/android/events/ServerNotificationSettingsEvent;->Code(Ljava/util/Map;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_b9

    move v0, v1

    :goto_4e
    iput-boolean v0, p0, Lcom/opera/mini/android/events/ServerNotificationSettingsEvent;->c:Z

    .line 42
    const-string v0, "data_saving_on"

    invoke-static {p1, v0}, Lcom/opera/mini/android/events/ServerNotificationSettingsEvent;->Code(Ljava/util/Map;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_bb

    move v0, v1

    :goto_59
    iput-boolean v0, p0, Lcom/opera/mini/android/events/ServerNotificationSettingsEvent;->e:Z

    .line 43
    const-string v0, "mobile_store_on"

    invoke-static {p1, v0}, Lcom/opera/mini/android/events/ServerNotificationSettingsEvent;->Code(Ljava/util/Map;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_bd

    :goto_63
    iput-boolean v1, p0, Lcom/opera/mini/android/events/ServerNotificationSettingsEvent;->d:Z

    .line 45
    const-string v0, "prime_time_start"

    invoke-static {p1, v0}, Lcom/opera/mini/android/events/ServerNotificationSettingsEvent;->Z(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/opera/mini/android/events/ServerNotificationSettingsEvent;->Code(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/opera/mini/android/events/ServerNotificationSettingsEvent;->Z:J

    .line 46
    const-string v0, "prime_time_end"

    invoke-static {p1, v0}, Lcom/opera/mini/android/events/ServerNotificationSettingsEvent;->Z(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/opera/mini/android/events/ServerNotificationSettingsEvent;->Code(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/opera/mini/android/events/ServerNotificationSettingsEvent;->J:J

    .line 48
    const-string v0, "prime_time_notification_allowed_time_since_last_paused"

    invoke-static {p1, v0}, Lcom/opera/mini/android/events/ServerNotificationSettingsEvent;->I(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/opera/mini/android/events/ServerNotificationSettingsEvent;->f:J

    .line 49
    const-string v0, "prime_time_notification_fresh_run_protected_time"

    invoke-static {p1, v0}, Lcom/opera/mini/android/events/ServerNotificationSettingsEvent;->I(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/opera/mini/android/events/ServerNotificationSettingsEvent;->g:J

    .line 50
    const-string v0, "prime_time_app_paused_protected_time"

    invoke-static {p1, v0}, Lcom/opera/mini/android/events/ServerNotificationSettingsEvent;->I(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/opera/mini/android/events/ServerNotificationSettingsEvent;->h:J

    .line 52
    const-string v0, "ga_tracking_id"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/opera/mini/android/events/ServerNotificationSettingsEvent;->k:Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/opera/mini/android/events/ServerNotificationSettingsEvent;->k:Ljava/lang/String;

    if-eqz v0, :cond_b8

    .line 55
    iget-object v0, p0, Lcom/opera/mini/android/events/ServerNotificationSettingsEvent;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/opera/mini/android/events/ServerNotificationSettingsEvent;->k:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/opera/mini/android/events/ServerNotificationSettingsEvent;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b8

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/opera/mini/android/events/ServerNotificationSettingsEvent;->k:Ljava/lang/String;

    .line 61
    :cond_b8
    return-void

    :cond_b9
    move v0, v2

    .line 41
    goto :goto_4e

    :cond_bb
    move v0, v2

    .line 42
    goto :goto_59

    :cond_bd
    move v1, v2

    .line 43
    goto :goto_63
.end method

.method private static Code(Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 95
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 96
    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_10

    .line 98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 100
    :cond_10
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 101
    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 102
    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v0, v1

    return v0
.end method

.method private static Code(Ljava/util/Map;Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 65
    invoke-static {p0, p1}, Lcom/opera/mini/android/events/ServerNotificationSettingsEvent;->Z(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static I(Ljava/util/Map;Ljava/lang/String;)J
    .registers 8

    .prologue
    .line 70
    invoke-static {p0, p1}, Lcom/opera/mini/android/events/ServerNotificationSettingsEvent;->Z(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 72
    const-wide/16 v0, 0x1

    .line 73
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_28

    .line 75
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 76
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 77
    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_28

    .line 79
    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 80
    sparse-switch v4, :sswitch_data_3e

    .line 89
    :cond_28
    :goto_28
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    mul-long/2addr v0, v2

    return-wide v0

    .line 82
    :sswitch_2e
    const-wide/16 v0, 0x3e8

    goto :goto_28

    .line 83
    :sswitch_31
    const-wide/32 v0, 0xea60

    goto :goto_28

    .line 84
    :sswitch_35
    const-wide/32 v0, 0x36ee80

    goto :goto_28

    .line 85
    :sswitch_39
    const-wide/32 v0, 0x5265c00

    goto :goto_28

    .line 80
    nop

    :sswitch_data_3e
    .sparse-switch
        0x64 -> :sswitch_39
        0x68 -> :sswitch_35
        0x6d -> :sswitch_31
        0x73 -> :sswitch_2e
    .end sparse-switch
.end method

.method private static Z(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 107
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_1f
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
