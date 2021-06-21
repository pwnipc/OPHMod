.class final enum Lcom/opera/mini/android/ap;
.super Ljava/lang/Enum;
.source "Source"


# static fields
.field public static final enum B:Lcom/opera/mini/android/ap;

.field public static final enum C:Lcom/opera/mini/android/ap;

.field public static final enum Code:Lcom/opera/mini/android/ap;

.field public static final enum I:Lcom/opera/mini/android/ap;

.field public static final enum J:Lcom/opera/mini/android/ap;

.field public static final enum Z:Lcom/opera/mini/android/ap;

.field public static final enum a:Lcom/opera/mini/android/ap;

.field public static final enum b:Lcom/opera/mini/android/ap;

.field private static enum c:Lcom/opera/mini/android/ap;

.field private static enum d:Lcom/opera/mini/android/ap;

.field private static enum e:Lcom/opera/mini/android/ap;

.field private static enum f:Lcom/opera/mini/android/ap;

.field private static enum g:Lcom/opera/mini/android/ap;

.field private static enum h:Lcom/opera/mini/android/ap;

.field private static enum i:Lcom/opera/mini/android/ap;

.field private static enum j:Lcom/opera/mini/android/ap;

.field private static enum k:Lcom/opera/mini/android/ap;

.field private static enum l:Lcom/opera/mini/android/ap;

.field private static enum m:Lcom/opera/mini/android/ap;

.field private static enum n:Lcom/opera/mini/android/ap;

.field private static final synthetic r:[Lcom/opera/mini/android/ap;


# instance fields
.field private final o:Z

.field private final p:I

.field private q:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 118
    new-instance v0, Lcom/opera/mini/android/ap;

    const-string v1, "BOOKMARKS_COUNT"

    const/4 v2, 0x0

    sget-object v3, Lcom/opera/mini/android/as;->Code:Lcom/opera/mini/android/as;

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/opera/mini/android/ap;-><init>(Ljava/lang/String;IILcom/opera/mini/android/as;)V

    sput-object v0, Lcom/opera/mini/android/ap;->c:Lcom/opera/mini/android/ap;

    .line 119
    new-instance v0, Lcom/opera/mini/android/ap;

    const-string v1, "SAVED_PAGES_COUNT"

    sget-object v2, Lcom/opera/mini/android/as;->Code:Lcom/opera/mini/android/as;

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/opera/mini/android/ap;-><init>(Ljava/lang/String;IILcom/opera/mini/android/as;)V

    sput-object v0, Lcom/opera/mini/android/ap;->d:Lcom/opera/mini/android/ap;

    .line 120
    new-instance v0, Lcom/opera/mini/android/ap;

    const-string v1, "SPEED_DIALS_COUNT"

    sget-object v2, Lcom/opera/mini/android/as;->Code:Lcom/opera/mini/android/as;

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/opera/mini/android/ap;-><init>(Ljava/lang/String;IILcom/opera/mini/android/as;)V

    sput-object v0, Lcom/opera/mini/android/ap;->e:Lcom/opera/mini/android/ap;

    .line 121
    new-instance v0, Lcom/opera/mini/android/ap;

    const-string v1, "LOAD_IMAGES"

    sget-object v2, Lcom/opera/mini/android/as;->I:Lcom/opera/mini/android/as;

    invoke-direct {v0, v1, v7, v8, v2}, Lcom/opera/mini/android/ap;-><init>(Ljava/lang/String;IILcom/opera/mini/android/as;)V

    sput-object v0, Lcom/opera/mini/android/ap;->f:Lcom/opera/mini/android/ap;

    .line 122
    new-instance v0, Lcom/opera/mini/android/ap;

    const-string v1, "TEXT_WRAP"

    sget-object v2, Lcom/opera/mini/android/as;->I:Lcom/opera/mini/android/as;

    invoke-direct {v0, v1, v8, v9, v2}, Lcom/opera/mini/android/ap;-><init>(Ljava/lang/String;IILcom/opera/mini/android/as;)V

    sput-object v0, Lcom/opera/mini/android/ap;->g:Lcom/opera/mini/android/ap;

    .line 123
    new-instance v0, Lcom/opera/mini/android/ap;

    const-string v1, "FONT_SIZE"

    const/4 v2, 0x6

    sget-object v3, Lcom/opera/mini/android/as;->I:Lcom/opera/mini/android/as;

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/opera/mini/android/ap;-><init>(Ljava/lang/String;IILcom/opera/mini/android/as;)V

    sput-object v0, Lcom/opera/mini/android/ap;->h:Lcom/opera/mini/android/ap;

    .line 124
    new-instance v0, Lcom/opera/mini/android/ap;

    const-string v1, "SINGLE_COLUMN_VIEW"

    const/4 v2, 0x6

    const/4 v3, 0x7

    sget-object v4, Lcom/opera/mini/android/as;->I:Lcom/opera/mini/android/as;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/opera/mini/android/ap;-><init>(Ljava/lang/String;IILcom/opera/mini/android/as;)V

    sput-object v0, Lcom/opera/mini/android/ap;->i:Lcom/opera/mini/android/ap;

    .line 125
    new-instance v0, Lcom/opera/mini/android/ap;

    const-string v1, "UNIQUE_DEVICE_ID"

    const/4 v2, 0x7

    const/16 v3, 0x8

    sget-object v4, Lcom/opera/mini/android/as;->Code:Lcom/opera/mini/android/as;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/opera/mini/android/ap;-><init>(Ljava/lang/String;IILcom/opera/mini/android/as;)V

    sput-object v0, Lcom/opera/mini/android/ap;->Code:Lcom/opera/mini/android/ap;

    .line 126
    new-instance v0, Lcom/opera/mini/android/ap;

    const-string v1, "NAVIGATION_BAR"

    const/16 v2, 0x8

    const/16 v3, 0x9

    sget-object v4, Lcom/opera/mini/android/as;->I:Lcom/opera/mini/android/as;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/opera/mini/android/ap;-><init>(Ljava/lang/String;IILcom/opera/mini/android/as;)V

    sput-object v0, Lcom/opera/mini/android/ap;->j:Lcom/opera/mini/android/ap;

    .line 127
    new-instance v0, Lcom/opera/mini/android/ap;

    const-string v1, "OPERA_LINK"

    const/16 v2, 0x9

    const/16 v3, 0xa

    sget-object v4, Lcom/opera/mini/android/as;->Code:Lcom/opera/mini/android/as;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/opera/mini/android/ap;-><init>(Ljava/lang/String;IILcom/opera/mini/android/as;)V

    sput-object v0, Lcom/opera/mini/android/ap;->k:Lcom/opera/mini/android/ap;

    .line 128
    new-instance v0, Lcom/opera/mini/android/ap;

    const-string v1, "EXIT_BUTTON"

    const/16 v2, 0xa

    const/16 v3, 0xb

    sget-object v4, Lcom/opera/mini/android/as;->Code:Lcom/opera/mini/android/as;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/opera/mini/android/ap;-><init>(Ljava/lang/String;IILcom/opera/mini/android/as;)V

    sput-object v0, Lcom/opera/mini/android/ap;->l:Lcom/opera/mini/android/ap;

    .line 129
    new-instance v0, Lcom/opera/mini/android/ap;

    const-string v1, "HOME_PAGE"

    const/16 v2, 0xb

    const/16 v3, 0xc

    sget-object v4, Lcom/opera/mini/android/as;->Code:Lcom/opera/mini/android/as;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/opera/mini/android/ap;-><init>(Ljava/lang/String;IILcom/opera/mini/android/as;)V

    sput-object v0, Lcom/opera/mini/android/ap;->m:Lcom/opera/mini/android/ap;

    .line 130
    new-instance v0, Lcom/opera/mini/android/ap;

    const-string v1, "INSTALLATION_DATE"

    const/16 v2, 0xc

    const/16 v3, 0xd

    sget-object v4, Lcom/opera/mini/android/as;->Code:Lcom/opera/mini/android/as;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/opera/mini/android/ap;-><init>(Ljava/lang/String;IILcom/opera/mini/android/as;)V

    sput-object v0, Lcom/opera/mini/android/ap;->I:Lcom/opera/mini/android/ap;

    .line 131
    new-instance v0, Lcom/opera/mini/android/ap;

    const-string v1, "RECEIVED_MB"

    const/16 v2, 0xd

    const/16 v3, 0xe

    sget-object v4, Lcom/opera/mini/android/as;->Code:Lcom/opera/mini/android/as;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/opera/mini/android/ap;-><init>(Ljava/lang/String;IILcom/opera/mini/android/as;)V

    sput-object v0, Lcom/opera/mini/android/ap;->Z:Lcom/opera/mini/android/ap;

    .line 132
    new-instance v0, Lcom/opera/mini/android/ap;

    const-string v1, "SAVED_PERCENT"

    const/16 v2, 0xe

    const/16 v3, 0xf

    sget-object v4, Lcom/opera/mini/android/as;->Code:Lcom/opera/mini/android/as;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/opera/mini/android/ap;-><init>(Ljava/lang/String;IILcom/opera/mini/android/as;)V

    sput-object v0, Lcom/opera/mini/android/ap;->J:Lcom/opera/mini/android/ap;

    .line 133
    new-instance v0, Lcom/opera/mini/android/ap;

    const-string v1, "CONNECTIVITY"

    const/16 v2, 0xf

    const/16 v3, 0x10

    sget-object v4, Lcom/opera/mini/android/as;->I:Lcom/opera/mini/android/as;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/opera/mini/android/ap;-><init>(Ljava/lang/String;IILcom/opera/mini/android/as;)V

    sput-object v0, Lcom/opera/mini/android/ap;->B:Lcom/opera/mini/android/ap;

    .line 134
    new-instance v0, Lcom/opera/mini/android/ap;

    const-string v1, "DISTRIBUTION_SOURCE"

    const/16 v2, 0x10

    const/16 v3, 0x11

    sget-object v4, Lcom/opera/mini/android/as;->Code:Lcom/opera/mini/android/as;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/opera/mini/android/ap;-><init>(Ljava/lang/String;IILcom/opera/mini/android/as;)V

    sput-object v0, Lcom/opera/mini/android/ap;->C:Lcom/opera/mini/android/ap;

    .line 135
    new-instance v0, Lcom/opera/mini/android/ap;

    const-string v1, "BRANDING"

    const/16 v2, 0x11

    const/16 v3, 0x12

    sget-object v4, Lcom/opera/mini/android/as;->Code:Lcom/opera/mini/android/as;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/opera/mini/android/ap;-><init>(Ljava/lang/String;IILcom/opera/mini/android/as;)V

    sput-object v0, Lcom/opera/mini/android/ap;->a:Lcom/opera/mini/android/ap;

    .line 136
    new-instance v0, Lcom/opera/mini/android/ap;

    const-string v1, "FIRST_START_DATE"

    const/16 v2, 0x12

    const/16 v3, 0x13

    sget-object v4, Lcom/opera/mini/android/as;->Code:Lcom/opera/mini/android/as;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/opera/mini/android/ap;-><init>(Ljava/lang/String;IILcom/opera/mini/android/as;)V

    sput-object v0, Lcom/opera/mini/android/ap;->b:Lcom/opera/mini/android/ap;

    .line 137
    new-instance v0, Lcom/opera/mini/android/ap;

    const-string v1, "IMAGE_QUALITY"

    const/16 v2, 0x13

    const/16 v3, 0x14

    sget-object v4, Lcom/opera/mini/android/as;->I:Lcom/opera/mini/android/as;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/opera/mini/android/ap;-><init>(Ljava/lang/String;IILcom/opera/mini/android/as;)V

    sput-object v0, Lcom/opera/mini/android/ap;->n:Lcom/opera/mini/android/ap;

    .line 116
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/opera/mini/android/ap;

    const/4 v1, 0x0

    sget-object v2, Lcom/opera/mini/android/ap;->c:Lcom/opera/mini/android/ap;

    aput-object v2, v0, v1

    sget-object v1, Lcom/opera/mini/android/ap;->d:Lcom/opera/mini/android/ap;

    aput-object v1, v0, v5

    sget-object v1, Lcom/opera/mini/android/ap;->e:Lcom/opera/mini/android/ap;

    aput-object v1, v0, v6

    sget-object v1, Lcom/opera/mini/android/ap;->f:Lcom/opera/mini/android/ap;

    aput-object v1, v0, v7

    sget-object v1, Lcom/opera/mini/android/ap;->g:Lcom/opera/mini/android/ap;

    aput-object v1, v0, v8

    sget-object v1, Lcom/opera/mini/android/ap;->h:Lcom/opera/mini/android/ap;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/opera/mini/android/ap;->i:Lcom/opera/mini/android/ap;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/opera/mini/android/ap;->Code:Lcom/opera/mini/android/ap;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/opera/mini/android/ap;->j:Lcom/opera/mini/android/ap;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/opera/mini/android/ap;->k:Lcom/opera/mini/android/ap;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/opera/mini/android/ap;->l:Lcom/opera/mini/android/ap;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/opera/mini/android/ap;->m:Lcom/opera/mini/android/ap;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/opera/mini/android/ap;->I:Lcom/opera/mini/android/ap;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/opera/mini/android/ap;->Z:Lcom/opera/mini/android/ap;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/opera/mini/android/ap;->J:Lcom/opera/mini/android/ap;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/opera/mini/android/ap;->B:Lcom/opera/mini/android/ap;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/opera/mini/android/ap;->C:Lcom/opera/mini/android/ap;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/opera/mini/android/ap;->a:Lcom/opera/mini/android/ap;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/opera/mini/android/ap;->b:Lcom/opera/mini/android/ap;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/opera/mini/android/ap;->n:Lcom/opera/mini/android/ap;

    aput-object v2, v0, v1

    sput-object v0, Lcom/opera/mini/android/ap;->r:[Lcom/opera/mini/android/ap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/opera/mini/android/as;)V
    .registers 6

    .prologue
    .line 153
    sget-object v0, Lcom/opera/mini/android/as;->Code:Lcom/opera/mini/android/as;

    invoke-virtual {v0, p4}, Lcom/opera/mini/android/as;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/opera/mini/android/ap;-><init>(Ljava/lang/String;IIZ)V

    .line 154
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .registers 5

    .prologue
    .line 145
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 146
    iput p3, p0, Lcom/opera/mini/android/ap;->p:I

    .line 147
    iput-boolean p4, p0, Lcom/opera/mini/android/ap;->o:Z

    .line 148
    return-void
.end method

.method public static Code()V
    .registers 7

    .prologue
    .line 180
    invoke-static {}, Lcom/opera/mini/android/ap;->values()[Lcom/opera/mini/android/ap;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v2, :cond_23

    aget-object v3, v1, v0

    .line 182
    iget-object v4, v3, Lcom/opera/mini/android/ap;->q:Ljava/lang/String;

    if-eqz v4, :cond_20

    invoke-static {}, Lcom/google/analytics/tracking/android/m;->I()Lcom/google/analytics/tracking/android/ao;

    move-result-object v4

    iget v5, v3, Lcom/opera/mini/android/ap;->p:I

    iget-object v6, v3, Lcom/opera/mini/android/ap;->q:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/google/analytics/tracking/android/ao;->Code(ILjava/lang/String;)V

    iget-boolean v4, v3, Lcom/opera/mini/android/ap;->o:Z

    if-eqz v4, :cond_20

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/opera/mini/android/ap;->q:Ljava/lang/String;

    .line 180
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 184
    :cond_23
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/opera/mini/android/ap;
    .registers 2

    .prologue
    .line 116
    const-class v0, Lcom/opera/mini/android/ap;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/opera/mini/android/ap;

    return-object v0
.end method

.method public static values()[Lcom/opera/mini/android/ap;
    .registers 1

    .prologue
    .line 116
    sget-object v0, Lcom/opera/mini/android/ap;->r:[Lcom/opera/mini/android/ap;

    invoke-virtual {v0}, [Lcom/opera/mini/android/ap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/opera/mini/android/ap;

    return-object v0
.end method


# virtual methods
.method public final Code(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 158
    iput-object p1, p0, Lcom/opera/mini/android/ap;->q:Ljava/lang/String;

    .line 159
    return-void
.end method
