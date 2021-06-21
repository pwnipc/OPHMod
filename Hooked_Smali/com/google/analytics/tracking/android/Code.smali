.class final Lcom/google/analytics/tracking/android/Code;
.super Ljava/lang/Object;
.source "Source"


# instance fields
.field private Code:Z


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    :try_start_4
    const-string v0, "v"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_d
    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/Code;->Code:Z
    :try_end_f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_f} :catch_12

    .line 21
    :goto_f
    return-void

    :cond_10
    move v0, v1

    .line 17
    goto :goto_d

    .line 19
    :catch_12
    move-exception v0

    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/Code;->Code:Z

    goto :goto_f
.end method


# virtual methods
.method final Code()I
    .registers 2

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/Code;->Code:Z

    if-nez v0, :cond_6

    .line 33
    const/4 v0, 0x0

    .line 35
    :goto_5
    return v0

    :cond_6
    invoke-static {}, Lcom/google/analytics/tracking/android/I;->Code()Lcom/google/analytics/tracking/android/I;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/I;->I()I

    move-result v0

    goto :goto_5
.end method
