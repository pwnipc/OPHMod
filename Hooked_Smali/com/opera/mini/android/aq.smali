.class final enum Lcom/opera/mini/android/aq;
.super Ljava/lang/Enum;
.source "Source"


# static fields
.field private static enum B:Lcom/opera/mini/android/aq;

.field private static enum C:Lcom/opera/mini/android/aq;

.field private static enum Code:Lcom/opera/mini/android/aq;

.field private static enum I:Lcom/opera/mini/android/aq;

.field private static enum J:Lcom/opera/mini/android/aq;

.field private static enum Z:Lcom/opera/mini/android/aq;

.field private static enum a:Lcom/opera/mini/android/aq;

.field private static enum b:Lcom/opera/mini/android/aq;

.field private static enum c:Lcom/opera/mini/android/aq;

.field private static enum d:Lcom/opera/mini/android/aq;

.field private static enum e:Lcom/opera/mini/android/aq;

.field private static enum f:Lcom/opera/mini/android/aq;

.field private static enum g:Lcom/opera/mini/android/aq;

.field private static enum h:Lcom/opera/mini/android/aq;

.field private static enum i:Lcom/opera/mini/android/aq;

.field private static final synthetic l:[Lcom/opera/mini/android/aq;


# instance fields
.field private final j:I

.field private k:J


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 52
    new-instance v0, Lcom/opera/mini/android/aq;

    const-string v1, "PAGE_LOADS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/opera/mini/android/aq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/opera/mini/android/aq;->Code:Lcom/opera/mini/android/aq;

    .line 53
    new-instance v0, Lcom/opera/mini/android/aq;

    const-string v1, "PAGE_LOADS_HISTORY"

    invoke-direct {v0, v1, v4, v5}, Lcom/opera/mini/android/aq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/opera/mini/android/aq;->I:Lcom/opera/mini/android/aq;

    .line 54
    new-instance v0, Lcom/opera/mini/android/aq;

    const-string v1, "PAGE_LOADS_SPEEDDIAL"

    invoke-direct {v0, v1, v5, v6}, Lcom/opera/mini/android/aq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/opera/mini/android/aq;->Z:Lcom/opera/mini/android/aq;

    .line 55
    new-instance v0, Lcom/opera/mini/android/aq;

    const-string v1, "PAGE_LOADS_SMART_PAGE"

    invoke-direct {v0, v1, v6, v7}, Lcom/opera/mini/android/aq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/opera/mini/android/aq;->J:Lcom/opera/mini/android/aq;

    .line 56
    new-instance v0, Lcom/opera/mini/android/aq;

    const-string v1, "PAGE_LOADS_LINK"

    invoke-direct {v0, v1, v7, v8}, Lcom/opera/mini/android/aq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/opera/mini/android/aq;->B:Lcom/opera/mini/android/aq;

    .line 57
    new-instance v0, Lcom/opera/mini/android/aq;

    const-string v1, "PAGE_LOADS_ENTERED_ADDRESS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/opera/mini/android/aq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/opera/mini/android/aq;->C:Lcom/opera/mini/android/aq;

    .line 58
    new-instance v0, Lcom/opera/mini/android/aq;

    const-string v1, "PAGE_LOADS_SEARCH"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/opera/mini/android/aq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/opera/mini/android/aq;->a:Lcom/opera/mini/android/aq;

    .line 59
    new-instance v0, Lcom/opera/mini/android/aq;

    const-string v1, "PAGE_LOADS_BOOKMARK"

    const/4 v2, 0x7

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/opera/mini/android/aq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/opera/mini/android/aq;->b:Lcom/opera/mini/android/aq;

    .line 60
    new-instance v0, Lcom/opera/mini/android/aq;

    const-string v1, "PAGE_LOADS_EXTERNAL"

    const/16 v2, 0x8

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/opera/mini/android/aq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/opera/mini/android/aq;->c:Lcom/opera/mini/android/aq;

    .line 61
    new-instance v0, Lcom/opera/mini/android/aq;

    const-string v1, "DOWNLOADS_FINISHED"

    const/16 v2, 0x9

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/opera/mini/android/aq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/opera/mini/android/aq;->d:Lcom/opera/mini/android/aq;

    .line 62
    new-instance v0, Lcom/opera/mini/android/aq;

    const-string v1, "DOWNLOADS_ABORTED"

    const/16 v2, 0xa

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/opera/mini/android/aq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/opera/mini/android/aq;->e:Lcom/opera/mini/android/aq;

    .line 63
    new-instance v0, Lcom/opera/mini/android/aq;

    const-string v1, "SHARE"

    const/16 v2, 0xb

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/opera/mini/android/aq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/opera/mini/android/aq;->f:Lcom/opera/mini/android/aq;

    .line 64
    new-instance v0, Lcom/opera/mini/android/aq;

    const-string v1, "PAGE_LOADS_SAVED_PAGE"

    const/16 v2, 0xc

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/opera/mini/android/aq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/opera/mini/android/aq;->g:Lcom/opera/mini/android/aq;

    .line 65
    new-instance v0, Lcom/opera/mini/android/aq;

    const-string v1, "RATE_DIALOG_SHOWN"

    const/16 v2, 0xd

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/opera/mini/android/aq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/opera/mini/android/aq;->h:Lcom/opera/mini/android/aq;

    .line 66
    new-instance v0, Lcom/opera/mini/android/aq;

    const-string v1, "RATE_DIALOG_RATED"

    const/16 v2, 0xe

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/opera/mini/android/aq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/opera/mini/android/aq;->i:Lcom/opera/mini/android/aq;

    .line 50
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/opera/mini/android/aq;

    const/4 v1, 0x0

    sget-object v2, Lcom/opera/mini/android/aq;->Code:Lcom/opera/mini/android/aq;

    aput-object v2, v0, v1

    sget-object v1, Lcom/opera/mini/android/aq;->I:Lcom/opera/mini/android/aq;

    aput-object v1, v0, v4

    sget-object v1, Lcom/opera/mini/android/aq;->Z:Lcom/opera/mini/android/aq;

    aput-object v1, v0, v5

    sget-object v1, Lcom/opera/mini/android/aq;->J:Lcom/opera/mini/android/aq;

    aput-object v1, v0, v6

    sget-object v1, Lcom/opera/mini/android/aq;->B:Lcom/opera/mini/android/aq;

    aput-object v1, v0, v7

    sget-object v1, Lcom/opera/mini/android/aq;->C:Lcom/opera/mini/android/aq;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/opera/mini/android/aq;->a:Lcom/opera/mini/android/aq;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/opera/mini/android/aq;->b:Lcom/opera/mini/android/aq;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/opera/mini/android/aq;->c:Lcom/opera/mini/android/aq;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/opera/mini/android/aq;->d:Lcom/opera/mini/android/aq;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/opera/mini/android/aq;->e:Lcom/opera/mini/android/aq;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/opera/mini/android/aq;->f:Lcom/opera/mini/android/aq;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/opera/mini/android/aq;->g:Lcom/opera/mini/android/aq;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/opera/mini/android/aq;->h:Lcom/opera/mini/android/aq;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/opera/mini/android/aq;->i:Lcom/opera/mini/android/aq;

    aput-object v2, v0, v1

    sput-object v0, Lcom/opera/mini/android/aq;->l:[Lcom/opera/mini/android/aq;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 73
    iput p3, p0, Lcom/opera/mini/android/aq;->j:I

    .line 74
    return-void
.end method

.method public static Code()V
    .registers 10

    .prologue
    const-wide/16 v8, 0x0

    .line 102
    invoke-static {}, Lcom/opera/mini/android/aq;->values()[Lcom/opera/mini/android/aq;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_26

    aget-object v3, v1, v0

    .line 104
    iget-wide v4, v3, Lcom/opera/mini/android/aq;->k:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_23

    invoke-static {}, Lcom/google/analytics/tracking/android/m;->I()Lcom/google/analytics/tracking/android/ao;

    move-result-object v4

    iget v5, v3, Lcom/opera/mini/android/aq;->j:I

    iget-wide v6, v3, Lcom/opera/mini/android/aq;->k:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/analytics/tracking/android/ao;->Code(ILjava/lang/Long;)V

    iput-wide v8, v3, Lcom/opera/mini/android/aq;->k:J

    .line 102
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 106
    :cond_26
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/opera/mini/android/aq;
    .registers 2

    .prologue
    .line 50
    const-class v0, Lcom/opera/mini/android/aq;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/opera/mini/android/aq;

    return-object v0
.end method

.method public static values()[Lcom/opera/mini/android/aq;
    .registers 1

    .prologue
    .line 50
    sget-object v0, Lcom/opera/mini/android/aq;->l:[Lcom/opera/mini/android/aq;

    invoke-virtual {v0}, [Lcom/opera/mini/android/aq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/opera/mini/android/aq;

    return-object v0
.end method


# virtual methods
.method public final Code(Ljava/lang/Long;)V
    .registers 6

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/opera/mini/android/aq;->k:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/opera/mini/android/aq;->k:J

    .line 84
    return-void
.end method
