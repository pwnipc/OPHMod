.class final enum Lcom/google/analytics/tracking/android/t;
.super Ljava/lang/Enum;
.source "Source"


# static fields
.field public static final enum B:Lcom/google/analytics/tracking/android/t;

.field public static final enum C:Lcom/google/analytics/tracking/android/t;

.field public static final enum Code:Lcom/google/analytics/tracking/android/t;

.field public static final enum I:Lcom/google/analytics/tracking/android/t;

.field public static final enum J:Lcom/google/analytics/tracking/android/t;

.field public static final enum Z:Lcom/google/analytics/tracking/android/t;

.field private static enum a:Lcom/google/analytics/tracking/android/t;

.field private static final synthetic b:[Lcom/google/analytics/tracking/android/t;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 30
    new-instance v0, Lcom/google/analytics/tracking/android/t;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v3}, Lcom/google/analytics/tracking/android/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/analytics/tracking/android/t;->Code:Lcom/google/analytics/tracking/android/t;

    .line 31
    new-instance v0, Lcom/google/analytics/tracking/android/t;

    const-string v1, "CONNECTED_SERVICE"

    invoke-direct {v0, v1, v4}, Lcom/google/analytics/tracking/android/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/analytics/tracking/android/t;->I:Lcom/google/analytics/tracking/android/t;

    .line 32
    new-instance v0, Lcom/google/analytics/tracking/android/t;

    const-string v1, "CONNECTED_LOCAL"

    invoke-direct {v0, v1, v5}, Lcom/google/analytics/tracking/android/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/analytics/tracking/android/t;->Z:Lcom/google/analytics/tracking/android/t;

    .line 33
    new-instance v0, Lcom/google/analytics/tracking/android/t;

    const-string v1, "BLOCKED"

    invoke-direct {v0, v1, v6}, Lcom/google/analytics/tracking/android/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/analytics/tracking/android/t;->a:Lcom/google/analytics/tracking/android/t;

    .line 34
    new-instance v0, Lcom/google/analytics/tracking/android/t;

    const-string v1, "PENDING_CONNECTION"

    invoke-direct {v0, v1, v7}, Lcom/google/analytics/tracking/android/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/analytics/tracking/android/t;->J:Lcom/google/analytics/tracking/android/t;

    .line 35
    new-instance v0, Lcom/google/analytics/tracking/android/t;

    const-string v1, "PENDING_DISCONNECT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/analytics/tracking/android/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/analytics/tracking/android/t;->B:Lcom/google/analytics/tracking/android/t;

    .line 36
    new-instance v0, Lcom/google/analytics/tracking/android/t;

    const-string v1, "DISCONNECTED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/analytics/tracking/android/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/analytics/tracking/android/t;->C:Lcom/google/analytics/tracking/android/t;

    .line 29
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/analytics/tracking/android/t;

    sget-object v1, Lcom/google/analytics/tracking/android/t;->Code:Lcom/google/analytics/tracking/android/t;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/analytics/tracking/android/t;->I:Lcom/google/analytics/tracking/android/t;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/analytics/tracking/android/t;->Z:Lcom/google/analytics/tracking/android/t;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/analytics/tracking/android/t;->a:Lcom/google/analytics/tracking/android/t;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/analytics/tracking/android/t;->J:Lcom/google/analytics/tracking/android/t;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/analytics/tracking/android/t;->B:Lcom/google/analytics/tracking/android/t;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/analytics/tracking/android/t;->C:Lcom/google/analytics/tracking/android/t;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/analytics/tracking/android/t;->b:[Lcom/google/analytics/tracking/android/t;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/analytics/tracking/android/t;
    .registers 2

    .prologue
    .line 29
    const-class v0, Lcom/google/analytics/tracking/android/t;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/tracking/android/t;

    return-object v0
.end method

.method public static values()[Lcom/google/analytics/tracking/android/t;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/google/analytics/tracking/android/t;->b:[Lcom/google/analytics/tracking/android/t;

    invoke-virtual {v0}, [Lcom/google/analytics/tracking/android/t;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/analytics/tracking/android/t;

    return-object v0
.end method
