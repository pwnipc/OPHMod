.class public final LZ;
.super Ljava/lang/Object;
.source "Source"


# instance fields
.field B:Ljava/util/ArrayList;

.field C:Landroid/app/Notification;

.field Code:Landroid/content/Context;

.field I:Ljava/lang/CharSequence;

.field J:Landroid/app/PendingIntent;

.field Z:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 676
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 659
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LZ;->B:Ljava/util/ArrayList;

    .line 660
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, LZ;->C:Landroid/app/Notification;

    .line 677
    iput-object p1, p0, LZ;->Code:Landroid/content/Context;

    .line 680
    iget-object v0, p0, LZ;->C:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    .line 681
    iget-object v0, p0, LZ;->C:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 682
    return-void
.end method


# virtual methods
.method public final Code()LZ;
    .registers 3

    .prologue
    .line 718
    iget-object v0, p0, LZ;->C:Landroid/app/Notification;

    const v1, 0x7f020007

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 719
    return-object p0
.end method

.method public final Code(Landroid/app/PendingIntent;)LZ;
    .registers 2

    .prologue
    .line 814
    iput-object p1, p0, LZ;->J:Landroid/app/PendingIntent;

    .line 815
    return-object p0
.end method

.method public final Code(Ljava/lang/CharSequence;)LZ;
    .registers 2

    .prologue
    .line 742
    iput-object p1, p0, LZ;->I:Ljava/lang/CharSequence;

    .line 743
    return-object p0
.end method

.method public final I()LZ;
    .registers 3

    .prologue
    .line 956
    iget-object v0, p0, LZ;->C:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 957
    return-object p0
.end method

.method public final I(Ljava/lang/CharSequence;)LZ;
    .registers 2

    .prologue
    .line 750
    iput-object p1, p0, LZ;->Z:Ljava/lang/CharSequence;

    .line 751
    return-object p0
.end method

.method public final Z()Landroid/app/Notification;
    .registers 2

    .prologue
    .line 1196
    invoke-static {}, LI;->I()LJ;

    move-result-object v0

    invoke-virtual {v0, p0}, LJ;->Code(LZ;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method
