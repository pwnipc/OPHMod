.class final Lbe;
.super Ljava/lang/Object;
.source "Source"


# static fields
.field static c:[B

.field static d:J

.field static e:Z


# instance fields
.field B:[B

.field C:[B

.field final Code:[I

.field I:J

.field J:[I

.field Z:[I

.field a:[B

.field b:[B

.field private f:Lch;

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lbe;->c:[B

    return-void
.end method

.method public constructor <init>([I)V
    .registers 3

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lch;

    invoke-direct {v0}, Lch;-><init>()V

    iput-object v0, p0, Lbe;->f:Lch;

    .line 29
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lbe;->C:[B

    .line 30
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lbe;->a:[B

    .line 31
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lbe;->b:[B

    .line 58
    iput-object p1, p0, Lbe;->Code:[I

    .line 59
    return-void
.end method

.method private Code(J)Z
    .registers 7

    .prologue
    .line 114
    iget-wide v0, p0, Lbe;->I:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_10

    iget-wide v0, p0, Lbe;->I:J

    const-wide/32 v2, 0x6c258c00

    sub-long/2addr v0, v2

    cmp-long v0, v0, p1

    if-lez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method


# virtual methods
.method final declared-synchronized Code(Lcs;)I
    .registers 7

    .prologue
    .line 72
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lbe;->B:[B
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_85

    if-nez v0, :cond_8

    .line 74
    const/4 v0, -0x1

    .line 99
    :goto_6
    monitor-exit p0

    return v0

    .line 81
    :cond_8
    :try_start_8
    iget-object v0, p1, Lcs;->I:[B

    .line 83
    const/4 v1, 0x0

    iget v2, p0, Lbe;->g:I

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 84
    const/4 v1, 0x1

    iget v2, p0, Lbe;->g:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 85
    iget-object v1, p0, Lbe;->f:Lch;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lch;->I([BI)V

    .line 87
    iget-object v1, p0, Lbe;->f:Lch;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lch;->Z([BI)V

    .line 88
    new-instance v1, Lbs;

    const/4 v2, 0x0

    const/16 v3, 0x20

    invoke-direct {v1, v0, v2, v3}, Lbs;-><init>([BII)V

    iput-object v1, p1, Lcs;->J:Lbs;

    .line 89
    iget-object v1, p1, Lcs;->J:Lbs;

    iget-object v2, p0, Lbe;->a:[B

    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-virtual {v1, v2, v3, v4}, Lbs;->Code([BII)V

    .line 90
    iget-object v1, p0, Lbe;->f:Lch;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lch;->Z([BI)V

    .line 91
    new-instance v1, Lbs;

    const/4 v2, 0x0

    const/16 v3, 0x20

    invoke-direct {v1, v0, v2, v3}, Lbs;-><init>([BII)V

    iput-object v1, p1, Lcs;->B:Lbs;

    .line 92
    iget-object v1, p1, Lcs;->B:Lbs;

    iget-object v2, p0, Lbe;->a:[B

    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-virtual {v1, v2, v3, v4}, Lbs;->Code([BII)V

    .line 93
    iget-object v1, p0, Lbe;->f:Lch;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lch;->Z([BI)V

    .line 94
    new-instance v1, Lcl;

    invoke-direct {v1, v0}, Lcl;-><init>([B)V

    iput-object v1, p1, Lcs;->C:Lcl;

    .line 95
    iget-object v1, p1, Lcs;->C:Lcl;

    const/4 v2, 0x0

    const/16 v3, 0x400

    invoke-virtual {v1, v0, v2, v3}, Lcl;->Code([BII)V

    .line 96
    iget-object v1, p0, Lbe;->f:Lch;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lch;->Z([BI)V

    .line 97
    new-instance v1, Lcl;

    invoke-direct {v1, v0}, Lcl;-><init>([B)V

    iput-object v1, p1, Lcs;->a:Lcl;

    .line 98
    iget-object v1, p1, Lcs;->a:Lcl;

    const/4 v2, 0x0

    const/16 v3, 0x400

    invoke-virtual {v1, v0, v2, v3}, Lcl;->Code([BII)V

    .line 99
    iget v0, p0, Lbe;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lbe;->g:I
    :try_end_84
    .catchall {:try_start_8 .. :try_end_84} :catchall_85

    goto :goto_6

    .line 72
    :catchall_85
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized Code()V
    .registers 6

    .prologue
    .line 64
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lbe;->J:[I

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lbe;->Z:[I

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lbe;->B:[B

    .line 67
    iget-object v0, p0, Lbe;->b:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lbe;->a:[B

    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_15
    .catchall {:try_start_2 .. :try_end_15} :catchall_17

    .line 68
    monitor-exit p0

    return-void

    .line 64
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final I()Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 104
    sget-boolean v1, Ldb;->E:Z

    if-nez v1, :cond_6

    .line 109
    :cond_5
    :goto_5
    return v0

    .line 108
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 109
    invoke-direct {p0, v1, v2}, Lbe;->Code(J)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-wide v3, Lbe;->d:J

    sub-long/2addr v1, v3

    invoke-direct {p0, v1, v2}, Lbe;->Code(J)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method final declared-synchronized Z()V
    .registers 9

    .prologue
    const/16 v7, 0x20

    const/4 v0, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 123
    monitor-enter p0

    :try_start_6
    invoke-virtual {p0}, Lbe;->I()Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v2, p0, Lbe;->J:[I

    if-nez v2, :cond_15

    .line 137
    :cond_10
    invoke-virtual {p0}, Lbe;->Code()V
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_41

    .line 225
    :cond_13
    :goto_13
    monitor-exit p0

    return-void

    .line 145
    :cond_15
    :try_start_15
    iget-object v2, p0, Lbe;->Z:[I

    if-eqz v2, :cond_99

    .line 149
    new-instance v3, Lcq;

    invoke-direct {v3}, Lcq;-><init>()V

    .line 151
    iget-object v2, p0, Lbe;->Z:[I

    iget-object v4, p0, Lbe;->Code:[I

    invoke-static {v2, v4}, Lat;->Code([I[I)[I

    move-result-object v2

    invoke-static {v2}, Ldb;->Code([I)[B

    move-result-object v4

    .line 155
    const/4 v2, 0x0

    aget-byte v2, v4, v2

    if-nez v2, :cond_3d

    const/4 v2, 0x1

    aget-byte v2, v4, v2

    if-ne v2, v5, :cond_3d

    array-length v2, v4

    add-int/lit8 v2, v2, -0x20

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, v4, v2

    if-eqz v2, :cond_44

    .line 159
    :cond_3d
    invoke-virtual {p0}, Lbe;->Code()V
    :try_end_40
    .catchall {:try_start_15 .. :try_end_40} :catchall_41

    goto :goto_13

    .line 123
    :catchall_41
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_44
    move v2, v0

    .line 162
    :goto_45
    :try_start_45
    array-length v5, v4

    add-int/lit8 v5, v5, -0x20

    add-int/lit8 v5, v5, -0x2

    if-ge v2, v5, :cond_58

    .line 164
    aget-byte v5, v4, v2

    const/4 v6, -0x1

    if-eq v5, v6, :cond_55

    .line 167
    invoke-virtual {p0}, Lbe;->Code()V

    goto :goto_13

    .line 162
    :cond_55
    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    .line 172
    :cond_58
    iget-wide v5, p0, Lbe;->I:J

    shr-long/2addr v5, v7

    long-to-int v2, v5

    invoke-virtual {v3, v2}, Lcq;->Code(I)V

    .line 173
    iget-wide v5, p0, Lbe;->I:J

    long-to-int v2, v5

    invoke-virtual {v3, v2}, Lcq;->Code(I)V

    .line 174
    iget-object v2, p0, Lbe;->J:[I

    invoke-static {v2}, Ldb;->Code([I)[B

    move-result-object v2

    const/4 v5, 0x0

    iget-object v6, p0, Lbe;->J:[I

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x4

    invoke-virtual {v3, v2, v5, v6}, Lcq;->Code([BII)V

    .line 175
    invoke-virtual {v3, v4}, Lcq;->Code([B)V

    .line 177
    :goto_77
    if-ge v1, v7, :cond_8a

    .line 179
    aget-byte v2, v4, v1

    array-length v3, v4

    add-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x20

    aget-byte v3, v4, v3

    if-eq v2, v3, :cond_87

    .line 182
    invoke-virtual {p0}, Lbe;->Code()V

    goto :goto_13

    .line 177
    :cond_87
    add-int/lit8 v1, v1, 0x1

    goto :goto_77

    .line 187
    :cond_8a
    const/4 v1, 0x0

    iput-object v1, p0, Lbe;->Z:[I

    .line 188
    sget-object v1, Ldb;->L:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    if-eqz v1, :cond_99

    .line 190
    const-string v1, "md"

    invoke-static {v1}, Ldb;->a(Ljava/lang/String;)V

    .line 195
    :cond_99
    iget-object v1, p0, Lbe;->B:[B

    if-nez v1, :cond_13

    .line 199
    iget-object v1, p0, Lbe;->b:[B

    invoke-static {v1}, Ldb;->I([B)Lch;

    move-result-object v1

    .line 201
    iget-object v2, p0, Lbe;->J:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x4

    new-array v2, v2, [B

    .line 204
    :goto_aa
    array-length v3, v2

    add-int/lit8 v3, v3, -0x20

    if-ge v0, v3, :cond_ba

    .line 206
    :goto_af
    aget-byte v3, v2, v0

    if-nez v3, :cond_b7

    .line 208
    invoke-virtual {v1, v2, v0}, Lch;->Z([BI)V

    goto :goto_af

    .line 204
    :cond_b7
    add-int/lit8 v0, v0, 0x1

    goto :goto_aa

    .line 211
    :cond_ba
    const/4 v0, 0x0

    const/4 v3, 0x0

    aput-byte v3, v2, v0

    .line 212
    const/4 v0, 0x1

    const/4 v3, 0x2

    aput-byte v3, v2, v0

    .line 213
    array-length v0, v2

    add-int/lit8 v0, v0, -0x20

    add-int/lit8 v0, v0, -0x1

    const/4 v3, 0x0

    aput-byte v3, v2, v0

    .line 215
    array-length v0, v2

    add-int/lit8 v0, v0, -0x20

    invoke-virtual {v1, v2, v0}, Lch;->Z([BI)V

    .line 216
    iget-object v0, p0, Lbe;->f:Lch;

    array-length v3, v2

    add-int/lit8 v3, v3, -0x20

    invoke-virtual {v0, v2, v3}, Lch;->Code([BI)V

    .line 219
    array-length v0, v2

    add-int/lit8 v0, v0, -0x20

    invoke-virtual {v1, v2, v0}, Lch;->Code([BI)V

    .line 220
    const/4 v0, 0x0

    array-length v1, v2

    invoke-static {v2, v0, v1}, Ldb;->Code([BII)[I

    move-result-object v0

    iget-object v1, p0, Lbe;->J:[I

    invoke-static {v0, v1}, Lat;->Code([I[I)[I

    move-result-object v0

    invoke-static {v0}, Ldb;->Code([I)[B

    move-result-object v0

    iput-object v0, p0, Lbe;->B:[B

    .line 221
    const/4 v0, 0x0

    iput v0, p0, Lbe;->g:I
    :try_end_f3
    .catchall {:try_start_45 .. :try_end_f3} :catchall_41

    goto/16 :goto_13
.end method
