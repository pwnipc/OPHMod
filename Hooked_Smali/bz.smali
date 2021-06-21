.class public final Lbz;
.super Ljava/lang/Object;
.source "Source"


# static fields
.field private static C:[S

.field private static a:[S

.field private static b:[S

.field private static c:[I

.field private static d:[I


# instance fields
.field private A:I

.field private B:[I

.field public Code:I

.field private D:I

.field private E:[[B

.field private F:I

.field private G:I

.field private H:I

.field public I:I

.field private J:I

.field private K:[I

.field private L:[[I

.field private M:[[I

.field private N:[[S

.field private O:[[B

.field private P:[[B

.field private Q:[S

.field private R:I

.field private S:I

.field private T:[I

.field private U:[[I

.field private V:I

.field private W:I

.field Z:[I

.field private e:[B

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:[I

.field private m:[I

.field private n:[I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:[I

.field private t:I

.field private u:[I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 63
    sput-object v0, Lbz;->C:[S

    .line 64
    sput-object v0, Lbz;->a:[S

    .line 65
    sput-object v0, Lbz;->b:[S

    .line 66
    sput-object v0, Lbz;->c:[I

    .line 67
    sput-object v0, Lbz;->d:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .prologue
    const/16 v4, 0x10

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x3

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-array v1, v2, [I

    iput-object v1, p0, Lbz;->l:[I

    .line 85
    new-array v1, v2, [I

    iput-object v1, p0, Lbz;->m:[I

    .line 86
    new-array v1, v2, [I

    iput-object v1, p0, Lbz;->n:[I

    .line 91
    new-array v1, v2, [I

    iput-object v1, p0, Lbz;->s:[I

    .line 94
    new-array v1, v2, [I

    iput-object v1, p0, Lbz;->u:[I

    .line 99
    new-array v1, v2, [I

    iput-object v1, p0, Lbz;->z:[I

    .line 106
    new-array v1, v2, [[B

    iput-object v1, p0, Lbz;->E:[[B

    .line 115
    const/4 v1, 0x6

    new-array v1, v1, [I

    iput-object v1, p0, Lbz;->K:[I

    .line 116
    new-array v1, v4, [[I

    iput-object v1, p0, Lbz;->L:[[I

    .line 117
    new-array v1, v4, [[I

    iput-object v1, p0, Lbz;->M:[[I

    .line 118
    new-array v1, v4, [[S

    iput-object v1, p0, Lbz;->N:[[S

    .line 119
    new-array v1, v4, [[B

    iput-object v1, p0, Lbz;->O:[[B

    .line 120
    new-array v1, v4, [[B

    iput-object v1, p0, Lbz;->P:[[B

    .line 121
    new-array v1, v2, [S

    iput-object v1, p0, Lbz;->Q:[S

    .line 125
    new-array v1, v2, [I

    iput-object v1, p0, Lbz;->T:[I

    .line 126
    const/4 v1, 0x4

    new-array v1, v1, [[I

    iput-object v1, p0, Lbz;->U:[[I

    .line 188
    const/4 v1, -0x1

    iput v1, p0, Lbz;->V:I

    .line 131
    invoke-static {}, Lbz;->Code()V

    .line 133
    iput v0, p0, Lbz;->h:I

    .line 134
    iput v0, p0, Lbz;->i:I

    .line 135
    iput v0, p0, Lbz;->k:I

    .line 136
    iput v0, p0, Lbz;->y:I

    .line 137
    :goto_58
    if-ge v0, v2, :cond_75

    .line 139
    iget-object v1, p0, Lbz;->E:[[B

    aput-object v3, v1, v0

    .line 141
    iget-object v1, p0, Lbz;->L:[[I

    aput-object v3, v1, v0

    .line 142
    iget-object v1, p0, Lbz;->M:[[I

    aput-object v3, v1, v0

    .line 143
    iget-object v1, p0, Lbz;->N:[[S

    aput-object v3, v1, v0

    .line 144
    iget-object v1, p0, Lbz;->O:[[B

    aput-object v3, v1, v0

    .line 145
    iget-object v1, p0, Lbz;->P:[[B

    aput-object v3, v1, v0

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_58

    .line 147
    :cond_75
    return-void
.end method

.method private Code(I)I
    .registers 4

    .prologue
    .line 948
    if-nez p1, :cond_4

    .line 949
    const/4 v0, 0x0

    .line 959
    :goto_3
    return v0

    .line 950
    :cond_4
    iget v0, p0, Lbz;->S:I

    if-ge v0, p1, :cond_11

    .line 952
    invoke-direct {p0}, Lbz;->J()V

    .line 953
    iget v0, p0, Lbz;->S:I

    if-ge v0, p1, :cond_11

    .line 954
    const/4 v0, -0x2

    goto :goto_3

    .line 956
    :cond_11
    iget v0, p0, Lbz;->R:I

    rsub-int/lit8 v1, p1, 0x20

    ushr-int/2addr v0, v1

    .line 957
    iget v1, p0, Lbz;->R:I

    shl-int/2addr v1, p1

    iput v1, p0, Lbz;->R:I

    .line 958
    iget v1, p0, Lbz;->S:I

    sub-int/2addr v1, p1

    iput v1, p0, Lbz;->S:I

    goto :goto_3
.end method

.method private static Code(II)I
    .registers 4

    .prologue
    .line 964
    const/4 v0, 0x1

    add-int/lit8 v1, p0, -0x1

    shl-int/2addr v0, v1

    if-ge p1, v0, :cond_b

    .line 965
    const/4 v0, -0x1

    shl-int/2addr v0, p0

    add-int/2addr v0, p1

    add-int/lit8 p1, v0, 0x1

    .line 966
    :cond_b
    return p1
.end method

.method private static declared-synchronized Code()V
    .registers 11

    .prologue
    const/16 v9, 0x300

    const/16 v8, 0x100

    const/16 v7, 0x40

    const/4 v1, 0x0

    .line 151
    const-class v4, Lbz;

    monitor-enter v4

    :try_start_a
    sget-object v0, Lbz;->C:[S
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_8f

    if-nez v0, :cond_88

    .line 153
    const/4 v0, 0x0

    .line 156
    :try_start_f
    invoke-static {}, Ldb;->Z()Ljava/io/DataInputStream;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_12} :catch_8a
    .catchall {:try_start_f .. :try_end_12} :catchall_92

    move-result-object v0

    .line 157
    const/16 v2, 0x300

    :try_start_15
    new-array v2, v2, [S

    sput-object v2, Lbz;->C:[S

    .line 158
    const/16 v2, 0x100

    new-array v2, v2, [S

    sput-object v2, Lbz;->a:[S

    .line 159
    const/16 v2, 0x100

    new-array v2, v2, [S

    sput-object v2, Lbz;->b:[S

    .line 160
    const/16 v2, 0x40

    new-array v2, v2, [I

    sput-object v2, Lbz;->c:[I

    .line 161
    const/16 v2, 0x40

    new-array v2, v2, [I

    sput-object v2, Lbz;->d:[I

    move v2, v1

    move v3, v1

    .line 163
    :goto_33
    if-ge v2, v9, :cond_42

    .line 164
    sget-object v5, Lbz;->C:[S

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v6

    add-int/2addr v3, v6

    int-to-short v3, v3

    aput-short v3, v5, v2

    .line 163
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    :cond_42
    move v2, v1

    move v3, v1

    .line 166
    :goto_44
    if-ge v2, v8, :cond_53

    .line 167
    sget-object v5, Lbz;->a:[S

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v6

    add-int/2addr v3, v6

    int-to-short v3, v3

    aput-short v3, v5, v2

    .line 166
    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    :cond_53
    move v2, v1

    move v3, v1

    .line 169
    :goto_55
    if-ge v2, v8, :cond_64

    .line 170
    sget-object v5, Lbz;->b:[S

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v6

    add-int/2addr v3, v6

    int-to-short v3, v3

    aput-short v3, v5, v2

    .line 169
    add-int/lit8 v2, v2, 0x1

    goto :goto_55

    :cond_64
    move v2, v1

    move v3, v1

    .line 172
    :goto_66
    if-ge v2, v7, :cond_75

    .line 173
    sget-object v5, Lbz;->c:[I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v6

    add-int/2addr v3, v6

    int-to-short v3, v3

    aput v3, v5, v2

    .line 172
    add-int/lit8 v2, v2, 0x1

    goto :goto_66

    :cond_75
    move v2, v1

    .line 175
    :goto_76
    if-ge v1, v7, :cond_85

    .line 176
    sget-object v3, Lbz;->d:[I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v5

    add-int/2addr v2, v5

    int-to-short v2, v2

    aput v2, v3, v1
    :try_end_82
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_82} :catch_8a
    .catchall {:try_start_15 .. :try_end_82} :catchall_9a

    .line 175
    add-int/lit8 v1, v1, 0x1

    goto :goto_76

    .line 183
    :cond_85
    :try_start_85
    invoke-static {v0}, Ldb;->Code(Ljava/io/InputStream;)V
    :try_end_88
    .catchall {:try_start_85 .. :try_end_88} :catchall_8f

    .line 186
    :cond_88
    :goto_88
    monitor-exit v4

    return-void

    .line 183
    :catch_8a
    move-exception v1

    :try_start_8b
    invoke-static {v0}, Ldb;->Code(Ljava/io/InputStream;)V
    :try_end_8e
    .catchall {:try_start_8b .. :try_end_8e} :catchall_8f

    goto :goto_88

    .line 151
    :catchall_8f
    move-exception v0

    monitor-exit v4

    throw v0

    .line 183
    :catchall_92
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_96
    :try_start_96
    invoke-static {v1}, Ldb;->Code(Ljava/io/InputStream;)V

    throw v0
    :try_end_9a
    .catchall {:try_start_96 .. :try_end_9a} :catchall_8f

    :catchall_9a
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_96
.end method

.method private Code(I[S[BII)V
    .registers 19

    .prologue
    .line 1099
    const/16 v0, 0x40

    new-array v1, v0, [I

    .line 1110
    const/4 v0, 0x0

    :goto_5
    const/16 v2, 0x8

    if-ge v0, v2, :cond_1d6

    .line 1112
    sget-object v2, Lbz;->c:[I

    add-int/lit8 v3, v0, 0x8

    aget v2, v2, v3

    aget-short v2, p2, v2

    if-nez v2, :cond_81

    sget-object v2, Lbz;->c:[I

    add-int/lit8 v3, v0, 0x10

    aget v2, v2, v3

    aget-short v2, p2, v2

    if-nez v2, :cond_81

    sget-object v2, Lbz;->c:[I

    add-int/lit8 v3, v0, 0x18

    aget v2, v2, v3

    aget-short v2, p2, v2

    if-nez v2, :cond_81

    sget-object v2, Lbz;->c:[I

    add-int/lit8 v3, v0, 0x20

    aget v2, v2, v3

    aget-short v2, p2, v2

    if-nez v2, :cond_81

    sget-object v2, Lbz;->c:[I

    add-int/lit8 v3, v0, 0x28

    aget v2, v2, v3

    aget-short v2, p2, v2

    if-nez v2, :cond_81

    sget-object v2, Lbz;->c:[I

    add-int/lit8 v3, v0, 0x30

    aget v2, v2, v3

    aget-short v2, p2, v2

    if-nez v2, :cond_81

    sget-object v2, Lbz;->c:[I

    add-int/lit8 v3, v0, 0x38

    aget v2, v2, v3

    aget-short v2, p2, v2

    if-nez v2, :cond_81

    .line 1116
    sget-object v2, Lbz;->c:[I

    aget v2, v2, v0

    aget-short v2, p2, v2

    iget-object v3, p0, Lbz;->U:[[I

    iget-object v4, p0, Lbz;->T:[I

    aget v4, v4, p1

    aget-object v3, v3, v4

    aget v3, v3, v0

    mul-int/2addr v2, v3

    .line 1117
    aput v2, v1, v0

    .line 1118
    add-int/lit8 v3, v0, 0x8

    aput v2, v1, v3

    .line 1119
    add-int/lit8 v3, v0, 0x10

    aput v2, v1, v3

    .line 1120
    add-int/lit8 v3, v0, 0x18

    aput v2, v1, v3

    .line 1121
    add-int/lit8 v3, v0, 0x20

    aput v2, v1, v3

    .line 1122
    add-int/lit8 v3, v0, 0x28

    aput v2, v1, v3

    .line 1123
    add-int/lit8 v3, v0, 0x30

    aput v2, v1, v3

    .line 1124
    add-int/lit8 v3, v0, 0x38

    aput v2, v1, v3

    .line 1110
    :goto_7e
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1131
    :cond_81
    sget-object v2, Lbz;->c:[I

    aget v2, v2, v0

    aget-short v2, p2, v2

    iget-object v3, p0, Lbz;->U:[[I

    iget-object v4, p0, Lbz;->T:[I

    aget v4, v4, p1

    aget-object v3, v3, v4

    aget v3, v3, v0

    mul-int/2addr v2, v3

    aput v2, v1, v0

    .line 1132
    add-int/lit8 v2, v0, 0x8

    sget-object v3, Lbz;->c:[I

    add-int/lit8 v4, v0, 0x8

    aget v3, v3, v4

    aget-short v3, p2, v3

    iget-object v4, p0, Lbz;->U:[[I

    iget-object v5, p0, Lbz;->T:[I

    aget v5, v5, p1

    aget-object v4, v4, v5

    add-int/lit8 v5, v0, 0x8

    aget v4, v4, v5

    mul-int/2addr v3, v4

    aput v3, v1, v2

    .line 1133
    add-int/lit8 v2, v0, 0x10

    sget-object v3, Lbz;->c:[I

    add-int/lit8 v4, v0, 0x10

    aget v3, v3, v4

    aget-short v3, p2, v3

    iget-object v4, p0, Lbz;->U:[[I

    iget-object v5, p0, Lbz;->T:[I

    aget v5, v5, p1

    aget-object v4, v4, v5

    add-int/lit8 v5, v0, 0x10

    aget v4, v4, v5

    mul-int/2addr v3, v4

    aput v3, v1, v2

    .line 1134
    add-int/lit8 v2, v0, 0x18

    sget-object v3, Lbz;->c:[I

    add-int/lit8 v4, v0, 0x18

    aget v3, v3, v4

    aget-short v3, p2, v3

    iget-object v4, p0, Lbz;->U:[[I

    iget-object v5, p0, Lbz;->T:[I

    aget v5, v5, p1

    aget-object v4, v4, v5

    add-int/lit8 v5, v0, 0x18

    aget v4, v4, v5

    mul-int/2addr v3, v4

    aput v3, v1, v2

    .line 1135
    add-int/lit8 v2, v0, 0x20

    sget-object v3, Lbz;->c:[I

    add-int/lit8 v4, v0, 0x20

    aget v3, v3, v4

    aget-short v3, p2, v3

    iget-object v4, p0, Lbz;->U:[[I

    iget-object v5, p0, Lbz;->T:[I

    aget v5, v5, p1

    aget-object v4, v4, v5

    add-int/lit8 v5, v0, 0x20

    aget v4, v4, v5

    mul-int/2addr v3, v4

    aput v3, v1, v2

    .line 1136
    add-int/lit8 v2, v0, 0x28

    sget-object v3, Lbz;->c:[I

    add-int/lit8 v4, v0, 0x28

    aget v3, v3, v4

    aget-short v3, p2, v3

    iget-object v4, p0, Lbz;->U:[[I

    iget-object v5, p0, Lbz;->T:[I

    aget v5, v5, p1

    aget-object v4, v4, v5

    add-int/lit8 v5, v0, 0x28

    aget v4, v4, v5

    mul-int/2addr v3, v4

    aput v3, v1, v2

    .line 1137
    add-int/lit8 v2, v0, 0x30

    sget-object v3, Lbz;->c:[I

    add-int/lit8 v4, v0, 0x30

    aget v3, v3, v4

    aget-short v3, p2, v3

    iget-object v4, p0, Lbz;->U:[[I

    iget-object v5, p0, Lbz;->T:[I

    aget v5, v5, p1

    aget-object v4, v4, v5

    add-int/lit8 v5, v0, 0x30

    aget v4, v4, v5

    mul-int/2addr v3, v4

    aput v3, v1, v2

    .line 1138
    add-int/lit8 v2, v0, 0x38

    sget-object v3, Lbz;->c:[I

    add-int/lit8 v4, v0, 0x38

    aget v3, v3, v4

    aget-short v3, p2, v3

    iget-object v4, p0, Lbz;->U:[[I

    iget-object v5, p0, Lbz;->T:[I

    aget v5, v5, p1

    aget-object v4, v4, v5

    add-int/lit8 v5, v0, 0x38

    aget v4, v4, v5

    mul-int/2addr v3, v4

    aput v3, v1, v2

    .line 1142
    aget v2, v1, v0

    .line 1143
    add-int/lit8 v3, v0, 0x20

    aget v3, v1, v3

    .line 1144
    add-int/lit8 v4, v0, 0x10

    aget v4, v1, v4

    add-int/lit8 v5, v0, 0x30

    aget v5, v1, v5

    sub-int/2addr v4, v5

    .line 1145
    add-int/lit8 v5, v0, 0x10

    aget v5, v1, v5

    add-int/lit8 v6, v0, 0x30

    aget v6, v1, v6

    add-int/2addr v5, v6

    .line 1149
    sub-int v6, v2, v3

    .line 1151
    shr-int/lit8 v4, v4, 0x8

    mul-int/lit16 v4, v4, 0x16a

    sub-int/2addr v4, v5

    .line 1152
    sub-int v7, v6, v4

    .line 1153
    add-int/2addr v4, v6

    .line 1155
    add-int/2addr v2, v3

    .line 1157
    sub-int v3, v2, v5

    .line 1158
    add-int/2addr v2, v5

    .line 1162
    add-int/lit8 v5, v0, 0x28

    aget v5, v1, v5

    add-int/lit8 v6, v0, 0x18

    aget v6, v1, v6

    sub-int/2addr v5, v6

    .line 1163
    add-int/lit8 v6, v0, 0x8

    aget v6, v1, v6

    add-int/lit8 v8, v0, 0x38

    aget v8, v1, v8

    add-int/2addr v6, v8

    .line 1164
    add-int/lit8 v8, v0, 0x18

    aget v8, v1, v8

    add-int/lit8 v9, v0, 0x28

    aget v9, v1, v9

    add-int/2addr v8, v9

    .line 1165
    add-int v9, v6, v8

    .line 1166
    sub-int/2addr v6, v8

    shr-int/lit8 v6, v6, 0x8

    mul-int/lit16 v6, v6, 0x16a

    .line 1167
    add-int/lit8 v8, v0, 0x8

    aget v8, v1, v8

    add-int/lit8 v10, v0, 0x38

    aget v10, v1, v10

    sub-int/2addr v8, v10

    .line 1170
    add-int v10, v5, v8

    shr-int/lit8 v10, v10, 0x8

    mul-int/lit16 v10, v10, 0xc4

    .line 1171
    neg-int v5, v5

    shr-int/lit8 v5, v5, 0x8

    mul-int/lit16 v5, v5, 0x115

    sub-int/2addr v5, v10

    .line 1172
    shr-int/lit8 v8, v8, 0x8

    mul-int/lit16 v8, v8, 0x29d

    sub-int/2addr v8, v10

    .line 1175
    sub-int/2addr v8, v9

    .line 1176
    sub-int v6, v8, v6

    .line 1178
    sub-int/2addr v5, v6

    .line 1180
    add-int v10, v2, v9

    aput v10, v1, v0

    .line 1181
    add-int/lit8 v10, v0, 0x8

    add-int v11, v4, v8

    aput v11, v1, v10

    .line 1182
    add-int/lit8 v10, v0, 0x10

    sub-int v11, v7, v6

    aput v11, v1, v10

    .line 1183
    add-int/lit8 v10, v0, 0x18

    sub-int v11, v3, v5

    aput v11, v1, v10

    .line 1184
    add-int/lit8 v10, v0, 0x20

    add-int/2addr v3, v5

    aput v3, v1, v10

    .line 1185
    add-int/lit8 v3, v0, 0x28

    add-int v5, v7, v6

    aput v5, v1, v3

    .line 1186
    add-int/lit8 v3, v0, 0x30

    sub-int/2addr v4, v8

    aput v4, v1, v3

    .line 1187
    add-int/lit8 v3, v0, 0x38

    sub-int/2addr v2, v9

    aput v2, v1, v3

    goto/16 :goto_7e

    .line 1191
    :cond_1d6
    const/4 v0, 0x0

    :goto_1d7
    const/16 v2, 0x40

    if-ge v0, v2, :cond_331

    .line 1193
    add-int/lit8 v2, v0, 0x1

    aget v2, v1, v2

    if-nez v2, :cond_237

    add-int/lit8 v2, v0, 0x2

    aget v2, v1, v2

    if-nez v2, :cond_237

    add-int/lit8 v2, v0, 0x3

    aget v2, v1, v2

    if-nez v2, :cond_237

    add-int/lit8 v2, v0, 0x4

    aget v2, v1, v2

    if-nez v2, :cond_237

    add-int/lit8 v2, v0, 0x5

    aget v2, v1, v2

    if-nez v2, :cond_237

    add-int/lit8 v2, v0, 0x6

    aget v2, v1, v2

    if-nez v2, :cond_237

    add-int/lit8 v2, v0, 0x7

    aget v2, v1, v2

    if-nez v2, :cond_237

    .line 1197
    sget-object v2, Lbz;->C:[S

    aget v3, v1, v0

    add-int/lit16 v3, v3, 0x400

    shr-int/lit8 v3, v3, 0xb

    add-int/lit16 v3, v3, 0x80

    add-int/lit16 v3, v3, 0x100

    aget-short v2, v2, v3

    int-to-byte v2, v2

    .line 1198
    aput-byte v2, p3, p4

    .line 1199
    add-int/lit8 v3, p4, 0x1

    aput-byte v2, p3, v3

    .line 1200
    add-int/lit8 v3, p4, 0x2

    aput-byte v2, p3, v3

    .line 1201
    add-int/lit8 v3, p4, 0x3

    aput-byte v2, p3, v3

    .line 1202
    add-int/lit8 v3, p4, 0x4

    aput-byte v2, p3, v3

    .line 1203
    add-int/lit8 v3, p4, 0x5

    aput-byte v2, p3, v3

    .line 1204
    add-int/lit8 v3, p4, 0x6

    aput-byte v2, p3, v3

    .line 1205
    add-int/lit8 v3, p4, 0x7

    aput-byte v2, p3, v3

    .line 1262
    :goto_232
    add-int p4, p4, p5

    .line 1191
    add-int/lit8 v0, v0, 0x8

    goto :goto_1d7

    .line 1215
    :cond_237
    aget v2, v1, v0

    .line 1216
    add-int/lit8 v3, v0, 0x4

    aget v3, v1, v3

    .line 1217
    add-int/lit8 v4, v0, 0x2

    aget v4, v1, v4

    add-int/lit8 v5, v0, 0x6

    aget v5, v1, v5

    sub-int/2addr v4, v5

    .line 1218
    add-int/lit8 v5, v0, 0x2

    aget v5, v1, v5

    add-int/lit8 v6, v0, 0x6

    aget v6, v1, v6

    add-int/2addr v5, v6

    .line 1222
    sub-int v6, v2, v3

    .line 1224
    shr-int/lit8 v4, v4, 0x8

    mul-int/lit16 v4, v4, 0x16a

    sub-int/2addr v4, v5

    .line 1225
    sub-int v7, v6, v4

    .line 1226
    add-int/2addr v4, v6

    .line 1228
    add-int/2addr v2, v3

    .line 1230
    sub-int v3, v2, v5

    .line 1231
    add-int/2addr v2, v5

    .line 1235
    add-int/lit8 v5, v0, 0x5

    aget v5, v1, v5

    add-int/lit8 v6, v0, 0x3

    aget v6, v1, v6

    sub-int/2addr v5, v6

    .line 1236
    add-int/lit8 v6, v0, 0x1

    aget v6, v1, v6

    add-int/lit8 v8, v0, 0x7

    aget v8, v1, v8

    add-int/2addr v6, v8

    .line 1237
    add-int/lit8 v8, v0, 0x3

    aget v8, v1, v8

    add-int/lit8 v9, v0, 0x5

    aget v9, v1, v9

    add-int/2addr v8, v9

    .line 1238
    add-int v9, v6, v8

    .line 1239
    sub-int/2addr v6, v8

    shr-int/lit8 v6, v6, 0x8

    mul-int/lit16 v6, v6, 0x16a

    .line 1240
    add-int/lit8 v8, v0, 0x1

    aget v8, v1, v8

    add-int/lit8 v10, v0, 0x7

    aget v10, v1, v10

    sub-int/2addr v8, v10

    .line 1243
    add-int v10, v5, v8

    shr-int/lit8 v10, v10, 0x8

    mul-int/lit16 v10, v10, 0xc4

    .line 1244
    neg-int v5, v5

    shr-int/lit8 v5, v5, 0x8

    mul-int/lit16 v5, v5, 0x115

    sub-int/2addr v5, v10

    .line 1245
    shr-int/lit8 v8, v8, 0x8

    mul-int/lit16 v8, v8, 0x29d

    sub-int/2addr v8, v10

    .line 1248
    sub-int/2addr v8, v9

    .line 1249
    sub-int v6, v8, v6

    .line 1251
    sub-int/2addr v5, v6

    .line 1253
    sget-object v10, Lbz;->C:[S

    add-int v11, v2, v9

    add-int/lit16 v11, v11, 0x400

    shr-int/lit8 v11, v11, 0xb

    add-int/lit16 v11, v11, 0x80

    add-int/lit16 v11, v11, 0x100

    aget-short v10, v10, v11

    int-to-byte v10, v10

    aput-byte v10, p3, p4

    .line 1254
    add-int/lit8 v10, p4, 0x1

    sget-object v11, Lbz;->C:[S

    add-int v12, v4, v8

    add-int/lit16 v12, v12, 0x400

    shr-int/lit8 v12, v12, 0xb

    add-int/lit16 v12, v12, 0x80

    add-int/lit16 v12, v12, 0x100

    aget-short v11, v11, v12

    int-to-byte v11, v11

    aput-byte v11, p3, v10

    .line 1255
    add-int/lit8 v10, p4, 0x2

    sget-object v11, Lbz;->C:[S

    sub-int v12, v7, v6

    add-int/lit16 v12, v12, 0x400

    shr-int/lit8 v12, v12, 0xb

    add-int/lit16 v12, v12, 0x80

    add-int/lit16 v12, v12, 0x100

    aget-short v11, v11, v12

    int-to-byte v11, v11

    aput-byte v11, p3, v10

    .line 1256
    add-int/lit8 v10, p4, 0x3

    sget-object v11, Lbz;->C:[S

    sub-int v12, v3, v5

    add-int/lit16 v12, v12, 0x400

    shr-int/lit8 v12, v12, 0xb

    add-int/lit16 v12, v12, 0x80

    add-int/lit16 v12, v12, 0x100

    aget-short v11, v11, v12

    int-to-byte v11, v11

    aput-byte v11, p3, v10

    .line 1257
    add-int/lit8 v10, p4, 0x4

    sget-object v11, Lbz;->C:[S

    add-int/2addr v3, v5

    add-int/lit16 v3, v3, 0x400

    shr-int/lit8 v3, v3, 0xb

    add-int/lit16 v3, v3, 0x80

    add-int/lit16 v3, v3, 0x100

    aget-short v3, v11, v3

    int-to-byte v3, v3

    aput-byte v3, p3, v10

    .line 1258
    add-int/lit8 v3, p4, 0x5

    sget-object v5, Lbz;->C:[S

    add-int/2addr v6, v7

    add-int/lit16 v6, v6, 0x400

    shr-int/lit8 v6, v6, 0xb

    add-int/lit16 v6, v6, 0x80

    add-int/lit16 v6, v6, 0x100

    aget-short v5, v5, v6

    int-to-byte v5, v5

    aput-byte v5, p3, v3

    .line 1259
    add-int/lit8 v3, p4, 0x6

    sget-object v5, Lbz;->C:[S

    sub-int/2addr v4, v8

    add-int/lit16 v4, v4, 0x400

    shr-int/lit8 v4, v4, 0xb

    add-int/lit16 v4, v4, 0x80

    add-int/lit16 v4, v4, 0x100

    aget-short v4, v5, v4

    int-to-byte v4, v4

    aput-byte v4, p3, v3

    .line 1260
    add-int/lit8 v3, p4, 0x7

    sget-object v4, Lbz;->C:[S

    sub-int/2addr v2, v9

    add-int/lit16 v2, v2, 0x400

    shr-int/lit8 v2, v2, 0xb

    add-int/lit16 v2, v2, 0x80

    add-int/lit16 v2, v2, 0x100

    aget-short v2, v4, v2

    int-to-byte v2, v2

    aput-byte v2, p3, v3

    goto/16 :goto_232

    .line 1264
    :cond_331
    return-void
.end method

.method private Code(Z)V
    .registers 24

    .prologue
    .line 219
    move-object/from16 v0, p0

    iget v1, v0, Lbz;->o:I

    mul-int/lit8 v6, v1, 0x8

    .line 220
    move-object/from16 v0, p0

    iget v1, v0, Lbz;->F:I

    mul-int v7, v6, v1

    .line 221
    const/4 v1, 0x3

    new-array v8, v1, [I

    .line 222
    const/4 v1, 0x3

    new-array v9, v1, [I

    .line 223
    const/4 v1, 0x3

    new-array v10, v1, [I

    .line 224
    const/4 v1, 0x3

    new-array v11, v1, [I

    .line 225
    move-object/from16 v0, p0

    iget v1, v0, Lbz;->k:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_91

    .line 228
    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v8, v1

    .line 229
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lbz;->m:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    shl-int/lit8 v2, v2, 0xb

    move-object/from16 v0, p0

    iget v3, v0, Lbz;->o:I

    div-int/2addr v2, v3

    aput v2, v9, v1

    .line 230
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lbz;->n:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    shl-int/lit8 v2, v2, 0xb

    move-object/from16 v0, p0

    iget v3, v0, Lbz;->p:I

    div-int/2addr v2, v3

    aput v2, v11, v1

    .line 231
    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v8, v1

    .line 232
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lbz;->m:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    shl-int/lit8 v2, v2, 0xb

    move-object/from16 v0, p0

    iget v3, v0, Lbz;->o:I

    div-int/2addr v2, v3

    aput v2, v9, v1

    .line 233
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lbz;->n:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    shl-int/lit8 v2, v2, 0xb

    move-object/from16 v0, p0

    iget v3, v0, Lbz;->p:I

    div-int/2addr v2, v3

    aput v2, v11, v1

    .line 234
    const/4 v1, 0x2

    const/4 v2, 0x0

    aput v2, v8, v1

    .line 235
    const/4 v1, 0x2

    move-object/from16 v0, p0

    iget-object v2, v0, Lbz;->m:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    shl-int/lit8 v2, v2, 0xb

    move-object/from16 v0, p0

    iget v3, v0, Lbz;->o:I

    div-int/2addr v2, v3

    aput v2, v9, v1

    .line 236
    const/4 v1, 0x2

    move-object/from16 v0, p0

    iget-object v2, v0, Lbz;->n:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    shl-int/lit8 v2, v2, 0xb

    move-object/from16 v0, p0

    iget v3, v0, Lbz;->p:I

    div-int/2addr v2, v3

    aput v2, v11, v1

    .line 238
    :cond_91
    if-nez p1, :cond_22a

    .line 239
    move-object/from16 v0, p0

    iget v1, v0, Lbz;->G:I

    move-object/from16 v0, p0

    iput v1, v0, Lbz;->W:I

    .line 246
    :cond_9b
    :goto_9b
    if-eqz p1, :cond_258

    move-object/from16 v0, p0

    iget-object v1, v0, Lbz;->B:[I

    .line 247
    :goto_a1
    const/4 v2, 0x0

    move v5, v2

    :goto_a3
    if-ge v5, v6, :cond_459

    .line 249
    add-int v2, v7, v5

    move-object/from16 v0, p0

    iget v3, v0, Lbz;->H:I

    if-ge v2, v3, :cond_2f8

    .line 251
    move-object/from16 v0, p0

    iget v2, v0, Lbz;->k:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2f8

    .line 253
    add-int v2, v7, v5

    move-object/from16 v0, p0

    iget v3, v0, Lbz;->G:I

    mul-int/2addr v2, v3

    .line 254
    if-eqz p1, :cond_f0

    .line 257
    move-object/from16 v0, p0

    iget-object v3, v0, Lbz;->s:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v3, v3, -0x2

    mul-int/lit8 v3, v3, 0x8

    move-object/from16 v0, p0

    iget v4, v0, Lbz;->A:I

    move-object/from16 v0, p0

    iget v12, v0, Lbz;->D:I

    div-int/2addr v4, v12

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iget v12, v0, Lbz;->p:I

    mul-int/2addr v4, v12

    mul-int/lit8 v4, v4, 0x8

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 258
    move-object/from16 v0, p0

    iget v3, v0, Lbz;->V:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_e9

    .line 260
    move-object/from16 v0, p0

    iput v2, v0, Lbz;->V:I

    .line 262
    :cond_e9
    move-object/from16 v0, p0

    iget v2, v0, Lbz;->p:I

    mul-int/2addr v2, v5

    mul-int/lit8 v2, v2, 0x8

    .line 265
    :cond_f0
    const/4 v3, 0x0

    aget v3, v8, v3

    shr-int/lit8 v4, v3, 0xb

    if-eqz p1, :cond_25e

    move-object/from16 v0, p0

    iget-object v3, v0, Lbz;->n:[I

    const/4 v12, 0x0

    aget v3, v3, v12

    mul-int/lit8 v3, v3, 0x8

    :goto_100
    mul-int v12, v4, v3

    .line 266
    const/4 v3, 0x0

    aget v4, v8, v3

    const/4 v13, 0x0

    aget v13, v9, v13

    add-int/2addr v4, v13

    aput v4, v8, v3

    .line 267
    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v10, v3

    .line 268
    const/4 v3, 0x1

    aget v3, v8, v3

    shr-int/lit8 v4, v3, 0xb

    if-eqz p1, :cond_269

    move-object/from16 v0, p0

    iget-object v3, v0, Lbz;->n:[I

    const/4 v13, 0x1

    aget v3, v3, v13

    mul-int/lit8 v3, v3, 0x8

    :goto_11f
    mul-int v13, v4, v3

    .line 269
    const/4 v3, 0x1

    aget v4, v8, v3

    const/4 v14, 0x1

    aget v14, v9, v14

    add-int/2addr v4, v14

    aput v4, v8, v3

    .line 270
    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v10, v3

    .line 271
    const/4 v3, 0x2

    aget v3, v8, v3

    shr-int/lit8 v4, v3, 0xb

    if-eqz p1, :cond_274

    move-object/from16 v0, p0

    iget-object v3, v0, Lbz;->n:[I

    const/4 v14, 0x2

    aget v3, v3, v14

    mul-int/lit8 v3, v3, 0x8

    :goto_13e
    mul-int v14, v4, v3

    .line 272
    const/4 v3, 0x2

    aget v4, v8, v3

    const/4 v15, 0x2

    aget v15, v9, v15

    add-int/2addr v4, v15

    aput v4, v8, v3

    .line 273
    const/4 v3, 0x2

    const/4 v4, 0x0

    aput v4, v10, v3

    .line 276
    move-object/from16 v0, p0

    iget-object v3, v0, Lbz;->n:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/4 v4, 0x2

    if-ne v3, v4, :cond_302

    move-object/from16 v0, p0

    iget-object v3, v0, Lbz;->n:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    const/4 v4, 0x1

    if-ne v3, v4, :cond_302

    move-object/from16 v0, p0

    iget-object v3, v0, Lbz;->n:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    const/4 v4, 0x1

    if-ne v3, v4, :cond_302

    .line 278
    const/4 v3, 0x0

    move/from16 v21, v3

    move v3, v2

    move/from16 v2, v21

    :goto_171
    move-object/from16 v0, p0

    iget v4, v0, Lbz;->W:I

    shr-int/lit8 v4, v4, 0x1

    if-ge v2, v4, :cond_27f

    .line 281
    move-object/from16 v0, p0

    iget-object v4, v0, Lbz;->E:[[B

    const/4 v15, 0x0

    aget-object v4, v4, v15

    shl-int/lit8 v15, v2, 0x1

    add-int/2addr v15, v12

    aget-byte v4, v4, v15

    and-int/lit16 v4, v4, 0xff

    .line 282
    move-object/from16 v0, p0

    iget-object v15, v0, Lbz;->E:[[B

    const/16 v16, 0x1

    aget-object v15, v15, v16

    add-int v16, v13, v2

    aget-byte v15, v15, v16

    and-int/lit16 v15, v15, 0xff

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lbz;->E:[[B

    move-object/from16 v16, v0

    const/16 v17, 0x2

    aget-object v16, v16, v17

    add-int v17, v14, v2

    aget-byte v16, v16, v17

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    .line 285
    sget-object v17, Lbz;->a:[S

    aget-short v17, v17, v16

    .line 286
    sget-object v18, Lbz;->b:[S

    aget-short v18, v18, v15

    .line 287
    add-int/lit8 v15, v15, -0x80

    .line 288
    add-int/lit8 v16, v16, -0x80

    .line 289
    mul-int/lit16 v15, v15, 0x2c1

    move/from16 v0, v16

    mul-int/lit16 v0, v0, 0x5b7

    move/from16 v16, v0

    add-int v15, v15, v16

    add-int/lit16 v15, v15, 0x400

    shr-int/lit8 v15, v15, 0xb

    .line 290
    sget-object v16, Lbz;->C:[S

    add-int v19, v4, v17

    move/from16 v0, v19

    add-int/lit16 v0, v0, 0x100

    move/from16 v19, v0

    aget-short v16, v16, v19

    .line 291
    sget-object v19, Lbz;->C:[S

    sub-int v20, v4, v15

    move/from16 v0, v20

    add-int/lit16 v0, v0, 0x100

    move/from16 v20, v0

    aget-short v19, v19, v20

    .line 292
    sget-object v20, Lbz;->C:[S

    add-int v4, v4, v18

    add-int/lit16 v4, v4, 0x100

    aget-short v4, v20, v4

    .line 294
    add-int/lit8 v20, v3, 0x1

    shl-int/lit8 v16, v16, 0x10

    shl-int/lit8 v19, v19, 0x8

    or-int v16, v16, v19

    or-int v4, v4, v16

    aput v4, v1, v3

    .line 295
    move-object/from16 v0, p0

    iget-object v3, v0, Lbz;->E:[[B

    const/4 v4, 0x0

    aget-object v3, v3, v4

    shl-int/lit8 v4, v2, 0x1

    add-int/2addr v4, v12

    add-int/lit8 v4, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    .line 296
    sget-object v4, Lbz;->C:[S

    add-int v16, v3, v17

    move/from16 v0, v16

    add-int/lit16 v0, v0, 0x100

    move/from16 v16, v0

    aget-short v4, v4, v16

    .line 297
    sget-object v16, Lbz;->C:[S

    sub-int v15, v3, v15

    add-int/lit16 v15, v15, 0x100

    aget-short v15, v16, v15

    .line 298
    sget-object v16, Lbz;->C:[S

    add-int v3, v3, v18

    add-int/lit16 v3, v3, 0x100

    aget-short v16, v16, v3

    .line 299
    add-int/lit8 v3, v20, 0x1

    shl-int/lit8 v4, v4, 0x10

    shl-int/lit8 v15, v15, 0x8

    or-int/2addr v4, v15

    or-int v4, v4, v16

    aput v4, v1, v20

    .line 278
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_171

    .line 242
    :cond_22a
    move-object/from16 v0, p0

    iget v1, v0, Lbz;->A:I

    if-nez v1, :cond_251

    move-object/from16 v0, p0

    iget v1, v0, Lbz;->G:I

    move-object/from16 v0, p0

    iget v2, v0, Lbz;->p:I

    mul-int/lit8 v2, v2, 0x8

    rem-int/2addr v1, v2

    :goto_23b
    move-object/from16 v0, p0

    iput v1, v0, Lbz;->W:I

    .line 243
    move-object/from16 v0, p0

    iget v1, v0, Lbz;->W:I

    if-nez v1, :cond_9b

    .line 244
    move-object/from16 v0, p0

    iget v1, v0, Lbz;->p:I

    mul-int/lit8 v1, v1, 0x8

    move-object/from16 v0, p0

    iput v1, v0, Lbz;->W:I

    goto/16 :goto_9b

    .line 242
    :cond_251
    move-object/from16 v0, p0

    iget v1, v0, Lbz;->p:I

    mul-int/lit8 v1, v1, 0x8

    goto :goto_23b

    .line 246
    :cond_258
    move-object/from16 v0, p0

    iget-object v1, v0, Lbz;->Z:[I

    goto/16 :goto_a1

    .line 265
    :cond_25e
    move-object/from16 v0, p0

    iget-object v3, v0, Lbz;->s:[I

    const/4 v12, 0x0

    aget v3, v3, v12

    mul-int/lit8 v3, v3, 0x8

    goto/16 :goto_100

    .line 268
    :cond_269
    move-object/from16 v0, p0

    iget-object v3, v0, Lbz;->s:[I

    const/4 v13, 0x1

    aget v3, v3, v13

    mul-int/lit8 v3, v3, 0x8

    goto/16 :goto_11f

    .line 271
    :cond_274
    move-object/from16 v0, p0

    iget-object v3, v0, Lbz;->s:[I

    const/4 v14, 0x2

    aget v3, v3, v14

    mul-int/lit8 v3, v3, 0x8

    goto/16 :goto_13e

    .line 301
    :cond_27f
    move-object/from16 v0, p0

    iget v2, v0, Lbz;->G:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2f8

    move-object/from16 v0, p0

    iget v2, v0, Lbz;->A:I

    if-nez v2, :cond_2f8

    .line 304
    if-eqz p1, :cond_2fd

    move-object/from16 v0, p0

    iget v2, v0, Lbz;->p:I

    mul-int/lit8 v2, v2, 0x8

    .line 305
    :goto_295
    move-object/from16 v0, p0

    iget-object v4, v0, Lbz;->E:[[B

    const/4 v15, 0x0

    aget-object v4, v4, v15

    add-int/2addr v12, v2

    add-int/lit8 v12, v12, -0x1

    aget-byte v4, v4, v12

    and-int/lit16 v4, v4, 0xff

    .line 306
    move-object/from16 v0, p0

    iget-object v12, v0, Lbz;->E:[[B

    const/4 v15, 0x1

    aget-object v12, v12, v15

    add-int/lit8 v15, v2, -0x1

    shr-int/lit8 v15, v15, 0x1

    add-int/2addr v13, v15

    aget-byte v12, v12, v13

    and-int/lit16 v12, v12, 0xff

    .line 307
    move-object/from16 v0, p0

    iget-object v13, v0, Lbz;->E:[[B

    const/4 v15, 0x2

    aget-object v13, v13, v15

    add-int/lit8 v2, v2, -0x1

    shr-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v14

    aget-byte v2, v13, v2

    and-int/lit16 v2, v2, 0xff

    .line 309
    sget-object v13, Lbz;->C:[S

    sget-object v14, Lbz;->b:[S

    aget-short v14, v14, v12

    add-int/2addr v14, v4

    add-int/lit16 v14, v14, 0x100

    aget-short v13, v13, v14

    .line 310
    add-int/lit8 v12, v12, -0x80

    .line 311
    add-int/lit8 v2, v2, -0x80

    .line 312
    sget-object v14, Lbz;->C:[S

    mul-int/lit16 v12, v12, 0x2c1

    mul-int/lit16 v15, v2, 0x5b7

    add-int/2addr v12, v15

    add-int/lit16 v12, v12, 0x400

    shr-int/lit8 v12, v12, 0xb

    sub-int v12, v4, v12

    add-int/lit16 v12, v12, 0x100

    aget-short v12, v14, v12

    .line 313
    sget-object v14, Lbz;->C:[S

    sget-object v15, Lbz;->a:[S

    add-int/lit16 v2, v2, 0x80

    aget-short v2, v15, v2

    add-int/2addr v2, v4

    add-int/lit16 v2, v2, 0x100

    aget-short v2, v14, v2

    .line 314
    shl-int/lit8 v2, v2, 0x10

    shl-int/lit8 v4, v12, 0x8

    or-int/2addr v2, v4

    or-int/2addr v2, v13

    aput v2, v1, v3

    .line 247
    :cond_2f8
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto/16 :goto_a3

    .line 304
    :cond_2fd
    move-object/from16 v0, p0

    iget v2, v0, Lbz;->G:I

    goto :goto_295

    .line 318
    :cond_302
    move-object/from16 v0, p0

    iget-object v3, v0, Lbz;->n:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3a7

    move-object/from16 v0, p0

    iget-object v3, v0, Lbz;->n:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3a7

    move-object/from16 v0, p0

    iget-object v3, v0, Lbz;->n:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3a7

    .line 320
    const/4 v3, 0x0

    move/from16 v21, v3

    move v3, v2

    move/from16 v2, v21

    :goto_326
    move-object/from16 v0, p0

    iget v4, v0, Lbz;->W:I

    if-ge v2, v4, :cond_2f8

    .line 323
    move-object/from16 v0, p0

    iget-object v4, v0, Lbz;->E:[[B

    const/4 v15, 0x0

    aget-object v4, v4, v15

    add-int v15, v12, v2

    aget-byte v4, v4, v15

    and-int/lit16 v4, v4, 0xff

    .line 324
    move-object/from16 v0, p0

    iget-object v15, v0, Lbz;->E:[[B

    const/16 v16, 0x1

    aget-object v15, v15, v16

    add-int v16, v13, v2

    aget-byte v15, v15, v16

    and-int/lit16 v15, v15, 0xff

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lbz;->E:[[B

    move-object/from16 v16, v0

    const/16 v17, 0x2

    aget-object v16, v16, v17

    add-int v17, v14, v2

    aget-byte v16, v16, v17

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    .line 327
    sget-object v17, Lbz;->C:[S

    sget-object v18, Lbz;->b:[S

    aget-short v18, v18, v15

    add-int v18, v18, v4

    move/from16 v0, v18

    add-int/lit16 v0, v0, 0x100

    move/from16 v18, v0

    aget-short v17, v17, v18

    .line 328
    add-int/lit8 v15, v15, -0x80

    .line 329
    add-int/lit8 v16, v16, -0x80

    .line 330
    sget-object v18, Lbz;->C:[S

    mul-int/lit16 v15, v15, 0x2c1

    move/from16 v0, v16

    mul-int/lit16 v0, v0, 0x5b7

    move/from16 v19, v0

    add-int v15, v15, v19

    add-int/lit16 v15, v15, 0x400

    shr-int/lit8 v15, v15, 0xb

    sub-int v15, v4, v15

    add-int/lit16 v15, v15, 0x100

    aget-short v15, v18, v15

    .line 331
    sget-object v18, Lbz;->C:[S

    sget-object v19, Lbz;->a:[S

    move/from16 v0, v16

    add-int/lit16 v0, v0, 0x80

    move/from16 v16, v0

    aget-short v16, v19, v16

    add-int v4, v4, v16

    add-int/lit16 v4, v4, 0x100

    aget-short v16, v18, v4

    .line 332
    add-int/lit8 v4, v3, 0x1

    shl-int/lit8 v16, v16, 0x10

    shl-int/lit8 v15, v15, 0x8

    or-int v15, v15, v16

    or-int v15, v15, v17

    aput v15, v1, v3

    .line 320
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_326

    .line 337
    :cond_3a7
    const/4 v3, 0x0

    move/from16 v21, v3

    move v3, v2

    move/from16 v2, v21

    :goto_3ad
    move-object/from16 v0, p0

    iget v4, v0, Lbz;->W:I

    if-ge v2, v4, :cond_2f8

    .line 340
    const/4 v4, 0x0

    aget v4, v10, v4

    shr-int/lit8 v4, v4, 0xb

    .line 341
    const/4 v15, 0x0

    aget v16, v10, v15

    const/16 v17, 0x0

    aget v17, v11, v17

    add-int v16, v16, v17

    aput v16, v10, v15

    .line 342
    move-object/from16 v0, p0

    iget-object v15, v0, Lbz;->E:[[B

    const/16 v16, 0x0

    aget-object v15, v15, v16

    add-int/2addr v4, v12

    aget-byte v4, v15, v4

    .line 343
    const/4 v15, 0x1

    aget v15, v10, v15

    shr-int/lit8 v15, v15, 0xb

    .line 344
    const/16 v16, 0x1

    aget v17, v10, v16

    const/16 v18, 0x1

    aget v18, v11, v18

    add-int v17, v17, v18

    aput v17, v10, v16

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lbz;->E:[[B

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget-object v16, v16, v17

    add-int/2addr v15, v13

    aget-byte v15, v16, v15

    .line 346
    const/16 v16, 0x2

    aget v16, v10, v16

    shr-int/lit8 v16, v16, 0xb

    .line 347
    const/16 v17, 0x2

    aget v18, v10, v17

    const/16 v19, 0x2

    aget v19, v11, v19

    add-int v18, v18, v19

    aput v18, v10, v17

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lbz;->E:[[B

    move-object/from16 v17, v0

    const/16 v18, 0x2

    aget-object v17, v17, v18

    add-int v16, v16, v14

    aget-byte v16, v17, v16

    .line 350
    sget-object v17, Lbz;->C:[S

    sget-object v18, Lbz;->b:[S

    aget-short v18, v18, v15

    add-int v18, v18, v4

    move/from16 v0, v18

    add-int/lit16 v0, v0, 0x100

    move/from16 v18, v0

    aget-short v17, v17, v18

    .line 351
    add-int/lit8 v15, v15, -0x80

    .line 352
    add-int/lit8 v16, v16, -0x80

    .line 353
    sget-object v18, Lbz;->C:[S

    mul-int/lit16 v15, v15, 0x2c1

    move/from16 v0, v16

    mul-int/lit16 v0, v0, 0x5b7

    move/from16 v19, v0

    add-int v15, v15, v19

    add-int/lit16 v15, v15, 0x400

    shr-int/lit8 v15, v15, 0xb

    sub-int v15, v4, v15

    add-int/lit16 v15, v15, 0x100

    aget-short v15, v18, v15

    .line 354
    sget-object v18, Lbz;->C:[S

    sget-object v19, Lbz;->a:[S

    move/from16 v0, v16

    add-int/lit16 v0, v0, 0x80

    move/from16 v16, v0

    aget-short v16, v19, v16

    add-int v4, v4, v16

    add-int/lit16 v4, v4, 0x100

    aget-short v16, v18, v4

    .line 355
    add-int/lit8 v4, v3, 0x1

    shl-int/lit8 v16, v16, 0x10

    shl-int/lit8 v15, v15, 0x8

    or-int v15, v15, v16

    or-int v15, v15, v17

    aput v15, v1, v3

    .line 337
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto/16 :goto_3ad

    .line 369
    :cond_459
    return-void
.end method

.method private I(I)I
    .registers 5

    .prologue
    const/16 v2, 0x8

    .line 971
    iget v0, p0, Lbz;->S:I

    if-ge v0, v2, :cond_13

    .line 973
    invoke-direct {p0}, Lbz;->J()V

    .line 974
    iget v0, p0, Lbz;->S:I

    if-ge v0, v2, :cond_13

    .line 975
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lbz;->I(II)I

    move-result v0

    .line 985
    :goto_12
    return v0

    .line 977
    :cond_13
    iget v0, p0, Lbz;->R:I

    ushr-int/lit8 v0, v0, 0x18

    .line 978
    iget-object v1, p0, Lbz;->P:[[B

    aget-object v1, v1, p1

    aget-byte v1, v1, v0

    .line 979
    if-gt v1, v2, :cond_35

    .line 981
    iget v2, p0, Lbz;->R:I

    shl-int/2addr v2, v1

    iput v2, p0, Lbz;->R:I

    .line 982
    iget v2, p0, Lbz;->S:I

    sub-int v1, v2, v1

    iput v1, p0, Lbz;->S:I

    .line 983
    iget-object v1, p0, Lbz;->P:[[B

    aget-object v1, v1, p1

    add-int/lit16 v0, v0, 0x100

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    goto :goto_12

    .line 985
    :cond_35
    const/16 v0, 0x9

    invoke-direct {p0, p1, v0}, Lbz;->I(II)I

    move-result v0

    goto :goto_12
.end method

.method private I(II)I
    .registers 7

    .prologue
    .line 990
    add-int/lit8 v1, p2, -0x1

    .line 991
    invoke-direct {p0, p2}, Lbz;->Code(I)I

    move-result v0

    .line 992
    if-gez v0, :cond_3c

    .line 1004
    :goto_8
    return v0

    .line 1000
    :cond_9
    shl-int/lit8 v2, v2, 0x1

    or-int/2addr v0, v2

    move v2, v0

    move v0, v1

    .line 994
    :goto_e
    const/16 v1, 0x10

    if-ge v0, v1, :cond_24

    iget-object v1, p0, Lbz;->L:[[I

    aget-object v1, v1, p1

    aget v1, v1, v0

    if-le v2, v1, :cond_24

    .line 996
    add-int/lit8 v1, v0, 0x1

    .line 997
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lbz;->Code(I)I

    move-result v0

    .line 998
    if-gez v0, :cond_9

    goto :goto_8

    .line 1002
    :cond_24
    iget-object v1, p0, Lbz;->N:[[S

    aget-object v1, v1, p1

    aget-short v1, v1, v0

    .line 1003
    iget-object v3, p0, Lbz;->M:[[I

    aget-object v3, v3, p1

    aget v0, v3, v0

    sub-int v0, v2, v0

    add-int/2addr v0, v1

    .line 1004
    iget-object v1, p0, Lbz;->O:[[B

    aget-object v1, v1, p1

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    goto :goto_8

    :cond_3c
    move v2, v0

    move v0, v1

    goto :goto_e
.end method

.method private I()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 373
    iget v0, p0, Lbz;->t:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2c

    .line 375
    iget-object v0, p0, Lbz;->u:[I

    iget v2, p0, Lbz;->v:I

    aget v0, v0, v2

    .line 376
    iget-object v2, p0, Lbz;->n:[I

    aget v0, v2, v0

    iget v2, p0, Lbz;->G:I

    mul-int/2addr v0, v2

    iget v2, p0, Lbz;->p:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Lbz;->p:I

    div-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lbz;->A:I

    .line 377
    iget-object v0, p0, Lbz;->z:[I

    iget-object v2, p0, Lbz;->u:[I

    iget v3, p0, Lbz;->v:I

    aget v2, v2, v3

    aput v1, v0, v2

    .line 388
    :goto_2b
    return-void

    .line 380
    :cond_2c
    iput v1, p0, Lbz;->A:I

    move v0, v1

    .line 381
    :goto_2f
    iget v2, p0, Lbz;->t:I

    if-ge v0, v2, :cond_54

    .line 383
    iget v2, p0, Lbz;->A:I

    iget-object v3, p0, Lbz;->m:[I

    iget-object v4, p0, Lbz;->u:[I

    aget v4, v4, v0

    aget v3, v3, v4

    iget-object v4, p0, Lbz;->n:[I

    iget-object v5, p0, Lbz;->u:[I

    aget v5, v5, v0

    aget v4, v4, v5

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, p0, Lbz;->A:I

    .line 384
    iget-object v2, p0, Lbz;->z:[I

    iget-object v3, p0, Lbz;->u:[I

    aget v3, v3, v0

    aput v1, v2, v3

    .line 381
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 386
    :cond_54
    iget v0, p0, Lbz;->A:I

    iput v0, p0, Lbz;->D:I

    .line 387
    iget v0, p0, Lbz;->A:I

    iget v1, p0, Lbz;->q:I

    iget v2, p0, Lbz;->p:I

    mul-int/lit8 v2, v2, 0x8

    div-int/2addr v1, v2

    mul-int/2addr v0, v1

    iput v0, p0, Lbz;->A:I

    goto :goto_2b
.end method

.method private J()V
    .registers 4

    .prologue
    .line 1009
    :goto_0
    iget v0, p0, Lbz;->S:I

    const/16 v1, 0x18

    if-gt v0, v1, :cond_25

    iget v0, p0, Lbz;->g:I

    if-lez v0, :cond_25

    .line 1011
    iget-object v0, p0, Lbz;->e:[B

    iget v1, p0, Lbz;->f:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 1012
    const/16 v1, 0xff

    if-ne v0, v1, :cond_32

    .line 1014
    iget v1, p0, Lbz;->g:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_25

    iget-object v1, p0, Lbz;->e:[B

    iget v2, p0, Lbz;->f:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    if-eqz v1, :cond_26

    .line 1024
    :cond_25
    return-void

    .line 1016
    :cond_26
    iget v1, p0, Lbz;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lbz;->f:I

    .line 1017
    iget v1, p0, Lbz;->g:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lbz;->g:I

    .line 1019
    :cond_32
    iget v1, p0, Lbz;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lbz;->f:I

    .line 1020
    iget v1, p0, Lbz;->g:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lbz;->g:I

    .line 1021
    iget v1, p0, Lbz;->R:I

    iget v2, p0, Lbz;->S:I

    rsub-int/lit8 v2, v2, 0x18

    shl-int/2addr v0, v2

    or-int/2addr v0, v1

    iput v0, p0, Lbz;->R:I

    .line 1022
    iget v0, p0, Lbz;->S:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lbz;->S:I

    goto :goto_0
.end method

.method private Z()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 859
    move v0, v1

    :goto_2
    const/4 v2, 0x3

    if-ge v0, v2, :cond_c

    .line 861
    iget-object v2, p0, Lbz;->Q:[S

    aput-short v1, v2, v0

    .line 859
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 863
    :cond_c
    iput v1, p0, Lbz;->R:I

    .line 864
    iput v1, p0, Lbz;->S:I

    .line 865
    return-void
.end method


# virtual methods
.method public final Code([BIIIZ)I
    .registers 19

    .prologue
    .line 475
    iput-object p1, p0, Lbz;->e:[B

    .line 477
    iput p2, p0, Lbz;->f:I

    .line 478
    move/from16 v0, p3

    iput v0, p0, Lbz;->g:I

    .line 479
    move/from16 v0, p4

    iput v0, p0, Lbz;->J:I

    .line 481
    const/4 v1, 0x0

    .line 482
    :cond_d
    :goto_d
    if-nez v1, :cond_8ed

    .line 484
    :goto_f
    iget v2, p0, Lbz;->i:I

    if-lez v2, :cond_34

    .line 486
    iget v2, p0, Lbz;->i:I

    iget v3, p0, Lbz;->g:I

    if-lt v2, v3, :cond_22

    .line 488
    iget v1, p0, Lbz;->i:I

    iget v2, p0, Lbz;->g:I

    sub-int/2addr v1, v2

    iput v1, p0, Lbz;->i:I

    .line 489
    const/4 v1, 0x0

    .line 717
    :cond_21
    :goto_21
    return v1

    .line 491
    :cond_22
    iget v2, p0, Lbz;->f:I

    iget v3, p0, Lbz;->i:I

    add-int/2addr v2, v3

    iput v2, p0, Lbz;->f:I

    .line 492
    iget v2, p0, Lbz;->g:I

    iget v3, p0, Lbz;->i:I

    sub-int/2addr v2, v3

    iput v2, p0, Lbz;->g:I

    .line 493
    const/4 v2, 0x0

    iput v2, p0, Lbz;->i:I

    goto :goto_f

    .line 495
    :cond_34
    iget v2, p0, Lbz;->h:I

    packed-switch v2, :pswitch_data_8f8

    :cond_39
    :goto_39
    move v2, v1

    :cond_3a
    move v1, v2

    .line 712
    goto :goto_d

    .line 499
    :pswitch_3c
    iget v2, p0, Lbz;->g:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_8f4

    .line 500
    iget v1, p0, Lbz;->g:I

    goto :goto_21

    .line 501
    :goto_44
    iget v1, p0, Lbz;->g:I

    const/4 v3, 0x2

    if-lt v1, v3, :cond_3a

    if-nez v2, :cond_3a

    iget v1, p0, Lbz;->i:I

    if-nez v1, :cond_3a

    iget v1, p0, Lbz;->h:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_59

    iget v1, p0, Lbz;->h:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3a

    .line 504
    :cond_59
    iget-object v1, p0, Lbz;->e:[B

    iget v3, p0, Lbz;->f:I

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    const/16 v3, 0xff

    if-eq v1, v3, :cond_72

    .line 506
    iget v1, p0, Lbz;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lbz;->f:I

    .line 507
    iget v1, p0, Lbz;->g:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lbz;->g:I

    goto :goto_44

    .line 510
    :cond_72
    iget-object v1, p0, Lbz;->e:[B

    iget v3, p0, Lbz;->f:I

    add-int/lit8 v3, v3, 0x1

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    sparse-switch v1, :sswitch_data_90a

    .line 613
    iget v1, p0, Lbz;->g:I

    const/4 v3, 0x4

    if-ge v1, v3, :cond_516

    .line 614
    iget v1, p0, Lbz;->g:I

    goto :goto_21

    .line 514
    :sswitch_87
    iget v1, p0, Lbz;->g:I

    const/4 v3, 0x4

    if-ge v1, v3, :cond_8f

    .line 515
    iget v1, p0, Lbz;->g:I

    goto :goto_21

    .line 516
    :cond_8f
    iget-object v1, p0, Lbz;->e:[B

    iget v3, p0, Lbz;->f:I

    add-int/lit8 v3, v3, 0x2

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    iget-object v3, p0, Lbz;->e:[B

    iget v4, p0, Lbz;->f:I

    add-int/lit8 v4, v4, 0x3

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    iput v1, p0, Lbz;->j:I

    .line 517
    iget v1, p0, Lbz;->g:I

    const/16 v3, 0xa

    if-ge v1, v3, :cond_b2

    .line 518
    iget v1, p0, Lbz;->g:I

    goto/16 :goto_21

    .line 519
    :cond_b2
    iget v1, p0, Lbz;->f:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lbz;->f:I

    .line 520
    iget v1, p0, Lbz;->g:I

    add-int/lit8 v1, v1, -0x4

    iput v1, p0, Lbz;->g:I

    .line 521
    iget v1, p0, Lbz;->j:I

    add-int/lit8 v1, v1, -0x2

    iput v1, p0, Lbz;->j:I

    .line 522
    iget-object v1, p0, Lbz;->e:[B

    iget v3, p0, Lbz;->f:I

    add-int/lit8 v3, v3, 0x3

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    iget-object v3, p0, Lbz;->e:[B

    iget v4, p0, Lbz;->f:I

    add-int/lit8 v4, v4, 0x4

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    iput v1, p0, Lbz;->G:I

    .line 523
    iget-object v1, p0, Lbz;->e:[B

    iget v3, p0, Lbz;->f:I

    add-int/lit8 v3, v3, 0x1

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    iget-object v3, p0, Lbz;->e:[B

    iget v4, p0, Lbz;->f:I

    add-int/lit8 v4, v4, 0x2

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    iput v1, p0, Lbz;->H:I

    .line 524
    if-eqz p5, :cond_104

    .line 526
    const/4 v1, 0x0

    iput v1, p0, Lbz;->h:I

    .line 527
    iget v1, p0, Lbz;->G:I

    shl-int/lit8 v1, v1, 0x10

    iget v2, p0, Lbz;->H:I

    or-int/2addr v1, v2

    goto/16 :goto_21

    .line 529
    :cond_104
    iget v1, p0, Lbz;->G:I

    iget v3, p0, Lbz;->J:I

    shr-int/2addr v1, v3

    iput v1, p0, Lbz;->Code:I

    .line 530
    iget v1, p0, Lbz;->H:I

    iget v3, p0, Lbz;->J:I

    shr-int/2addr v1, v3

    iput v1, p0, Lbz;->I:I

    .line 533
    iget v1, p0, Lbz;->Code:I

    iget v3, p0, Lbz;->I:I

    mul-int/2addr v1, v3

    new-array v1, v1, [I

    iput-object v1, p0, Lbz;->Z:[I

    .line 538
    iget-object v1, p0, Lbz;->e:[B

    iget v3, p0, Lbz;->f:I

    add-int/lit8 v3, v3, 0x5

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lbz;->k:I

    .line 539
    const/4 v1, 0x0

    :goto_128
    const/4 v3, 0x3

    if-ge v1, v3, :cond_13e

    iget-object v3, p0, Lbz;->K:[I

    mul-int/lit8 v4, v1, 0x2

    const/4 v5, 0x0

    aput v5, v3, v4

    iget-object v3, p0, Lbz;->K:[I

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x4

    aput v5, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_128

    :cond_13e
    invoke-direct {p0}, Lbz;->Z()V

    .line 540
    iget v1, p0, Lbz;->f:I

    add-int/lit8 v1, v1, 0x6

    iput v1, p0, Lbz;->f:I

    .line 541
    iget v1, p0, Lbz;->g:I

    add-int/lit8 v1, v1, -0x6

    iput v1, p0, Lbz;->g:I

    .line 542
    iget v1, p0, Lbz;->j:I

    add-int/lit8 v1, v1, -0x6

    iput v1, p0, Lbz;->j:I

    .line 543
    const/4 v1, 0x3

    iput v1, p0, Lbz;->h:I

    goto/16 :goto_44

    .line 546
    :sswitch_158
    iget v1, p0, Lbz;->g:I

    const/4 v3, 0x4

    if-ge v1, v3, :cond_161

    .line 547
    iget v1, p0, Lbz;->g:I

    goto/16 :goto_21

    .line 548
    :cond_161
    iget-object v1, p0, Lbz;->e:[B

    iget v3, p0, Lbz;->f:I

    add-int/lit8 v3, v3, 0x2

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    iget-object v3, p0, Lbz;->e:[B

    iget v4, p0, Lbz;->f:I

    add-int/lit8 v4, v4, 0x3

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    iput v1, p0, Lbz;->j:I

    .line 549
    iget v1, p0, Lbz;->g:I

    iget v3, p0, Lbz;->j:I

    add-int/lit8 v3, v3, 0x2

    if-ge v1, v3, :cond_186

    .line 550
    iget v1, p0, Lbz;->g:I

    goto/16 :goto_21

    .line 551
    :cond_186
    iget-object v1, p0, Lbz;->e:[B

    iget v3, p0, Lbz;->f:I

    add-int/lit8 v3, v3, 0x4

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lbz;->t:I

    .line 552
    iget v1, p0, Lbz;->f:I

    add-int/lit8 v1, v1, 0x5

    iput v1, p0, Lbz;->f:I

    .line 553
    iget v1, p0, Lbz;->g:I

    add-int/lit8 v1, v1, -0x5

    iput v1, p0, Lbz;->g:I

    .line 554
    iget v1, p0, Lbz;->j:I

    add-int/lit8 v1, v1, -0x3

    iput v1, p0, Lbz;->j:I

    .line 555
    const/4 v1, 0x0

    move v3, v1

    :goto_1a6
    iget v1, p0, Lbz;->t:I

    if-ge v3, v1, :cond_206

    .line 557
    iget-object v1, p0, Lbz;->e:[B

    iget v4, p0, Lbz;->f:I

    aget-byte v1, v1, v4

    and-int/lit16 v4, v1, 0xff

    .line 558
    iget-object v1, p0, Lbz;->u:[I

    aput v3, v1, v3

    .line 559
    const/4 v1, 0x0

    :goto_1b7
    iget v5, p0, Lbz;->k:I

    if-ge v1, v5, :cond_1ca

    .line 561
    iget-object v5, p0, Lbz;->l:[I

    aget v5, v5, v1

    if-ne v4, v5, :cond_1c7

    .line 563
    iget-object v5, p0, Lbz;->u:[I

    aput v1, v5, v3

    .line 564
    iget v1, p0, Lbz;->k:I

    .line 559
    :cond_1c7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b7

    .line 567
    :cond_1ca
    iget-object v1, p0, Lbz;->e:[B

    iget v4, p0, Lbz;->f:I

    add-int/lit8 v4, v4, 0x1

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    .line 568
    iget-object v4, p0, Lbz;->K:[I

    iget-object v5, p0, Lbz;->u:[I

    aget v5, v5, v3

    mul-int/lit8 v5, v5, 0x2

    shr-int/lit8 v6, v1, 0x4

    aput v6, v4, v5

    .line 569
    iget-object v4, p0, Lbz;->K:[I

    iget-object v5, p0, Lbz;->u:[I

    aget v5, v5, v3

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x1

    and-int/lit8 v1, v1, 0xf

    add-int/lit8 v1, v1, 0x4

    aput v1, v4, v5

    .line 570
    iget v1, p0, Lbz;->f:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lbz;->f:I

    .line 571
    iget v1, p0, Lbz;->g:I

    add-int/lit8 v1, v1, -0x2

    iput v1, p0, Lbz;->g:I

    .line 572
    iget v1, p0, Lbz;->j:I

    add-int/lit8 v1, v1, -0x2

    iput v1, p0, Lbz;->j:I

    .line 555
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1a6

    .line 574
    :cond_206
    invoke-direct {p0}, Lbz;->Z()V

    .line 575
    const/4 v1, 0x0

    iput v1, p0, Lbz;->w:I

    .line 576
    const/4 v1, 0x0

    iput v1, p0, Lbz;->v:I

    .line 577
    const/4 v1, 0x0

    iput v1, p0, Lbz;->x:I

    .line 578
    const/4 v1, 0x0

    iput v1, p0, Lbz;->F:I

    .line 579
    invoke-direct {p0}, Lbz;->I()V

    .line 580
    iget v1, p0, Lbz;->f:I

    iget v3, p0, Lbz;->j:I

    add-int/2addr v1, v3

    iput v1, p0, Lbz;->f:I

    .line 581
    iget v1, p0, Lbz;->g:I

    iget v3, p0, Lbz;->j:I

    sub-int/2addr v1, v3

    iput v1, p0, Lbz;->g:I

    .line 582
    const/4 v1, 0x4

    iput v1, p0, Lbz;->h:I

    goto/16 :goto_44

    .line 585
    :sswitch_22b
    iget v1, p0, Lbz;->g:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_234

    const/4 v1, -0x2

    :goto_231
    move v2, v1

    .line 586
    goto/16 :goto_44

    .line 585
    :cond_234
    iget-object v1, p0, Lbz;->e:[B

    iget v2, p0, Lbz;->f:I

    add-int/lit8 v2, v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lbz;->e:[B

    iget v3, p0, Lbz;->f:I

    add-int/lit8 v3, v3, 0x3

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    iget v2, p0, Lbz;->g:I

    add-int/lit8 v3, v1, 0x2

    if-ge v2, v3, :cond_253

    const/4 v1, -0x2

    goto :goto_231

    :cond_253
    add-int/lit8 v1, v1, -0x2

    iget v2, p0, Lbz;->f:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lbz;->f:I

    iget v2, p0, Lbz;->g:I

    add-int/lit8 v2, v2, -0x4

    iput v2, p0, Lbz;->g:I

    :goto_261
    if-lez v1, :cond_3bd

    iget-object v2, p0, Lbz;->e:[B

    iget v3, p0, Lbz;->f:I

    aget-byte v2, v2, v3

    and-int/lit8 v2, v2, 0xf

    iget-object v3, p0, Lbz;->e:[B

    iget v4, p0, Lbz;->f:I

    aget-byte v3, v3, v4

    and-int/lit8 v3, v3, 0x10

    shr-int/lit8 v3, v3, 0x2

    or-int v6, v2, v3

    iget v2, p0, Lbz;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lbz;->f:I

    iget v2, p0, Lbz;->g:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lbz;->g:I

    add-int/lit8 v5, v1, -0x1

    const/4 v2, 0x0

    const/16 v1, 0x10

    new-array v7, v1, [S

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_28c
    const/16 v4, 0x10

    if-ge v3, v4, :cond_2a2

    iget-object v4, p0, Lbz;->e:[B

    iget v8, p0, Lbz;->f:I

    add-int/2addr v8, v3

    aget-byte v4, v4, v8

    and-int/lit16 v4, v4, 0xff

    int-to-short v4, v4

    aput-short v4, v7, v3

    aget-short v4, v7, v3

    add-int/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_28c

    :cond_2a2
    add-int/lit8 v3, v1, 0x1

    new-array v8, v3, [I

    new-array v9, v1, [I

    const/4 v1, 0x0

    move v3, v1

    :goto_2aa
    const/16 v1, 0x10

    if-ge v3, v1, :cond_2c0

    const/4 v1, 0x1

    :goto_2af
    aget-short v4, v7, v3

    if-gt v1, v4, :cond_2bc

    add-int/lit8 v4, v3, 0x1

    aput v4, v8, v2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2af

    :cond_2bc
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2aa

    :cond_2c0
    const/4 v1, 0x0

    aput v1, v8, v2

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    aget v1, v8, v1

    :cond_2c8
    aget v10, v8, v4

    if-eqz v10, :cond_2e4

    :goto_2cc
    aget v10, v8, v4

    if-ne v10, v1, :cond_2d7

    aput v3, v9, v4

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2cc

    :cond_2d7
    aget v10, v8, v4

    if-eqz v10, :cond_2c8

    :goto_2db
    aget v10, v8, v4

    if-eq v10, v1, :cond_2c8

    shl-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2db

    :cond_2e4
    iget-object v1, p0, Lbz;->M:[[I

    const/16 v3, 0x10

    new-array v3, v3, [I

    aput-object v3, v1, v6

    iget-object v1, p0, Lbz;->L:[[I

    const/16 v3, 0x10

    new-array v3, v3, [I

    aput-object v3, v1, v6

    iget-object v1, p0, Lbz;->N:[[S

    const/16 v3, 0x10

    new-array v3, v3, [S

    aput-object v3, v1, v6

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_2fe
    const/16 v4, 0x10

    if-ge v3, v4, :cond_32f

    aget-short v4, v7, v3

    if-nez v4, :cond_310

    iget-object v4, p0, Lbz;->L:[[I

    aget-object v4, v4, v6

    const/4 v8, -0x1

    aput v8, v4, v3

    :goto_30d
    add-int/lit8 v3, v3, 0x1

    goto :goto_2fe

    :cond_310
    iget-object v4, p0, Lbz;->N:[[S

    aget-object v4, v4, v6

    int-to-short v8, v1

    aput-short v8, v4, v3

    iget-object v4, p0, Lbz;->M:[[I

    aget-object v4, v4, v6

    aget v8, v9, v1

    aput v8, v4, v3

    aget-short v4, v7, v3

    add-int/lit8 v4, v4, -0x1

    add-int/2addr v1, v4

    iget-object v4, p0, Lbz;->L:[[I

    aget-object v4, v4, v6

    aget v8, v9, v1

    aput v8, v4, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_30d

    :cond_32f
    iget v1, p0, Lbz;->f:I

    add-int/lit8 v1, v1, 0x10

    iput v1, p0, Lbz;->f:I

    iget v1, p0, Lbz;->g:I

    add-int/lit8 v1, v1, -0x10

    iput v1, p0, Lbz;->g:I

    add-int/lit8 v3, v5, -0x10

    iget-object v1, p0, Lbz;->O:[[B

    new-array v4, v2, [B

    aput-object v4, v1, v6

    const/4 v1, 0x0

    :goto_344
    if-ge v1, v2, :cond_356

    iget-object v4, p0, Lbz;->O:[[B

    aget-object v4, v4, v6

    iget-object v5, p0, Lbz;->e:[B

    iget v8, p0, Lbz;->f:I

    add-int/2addr v8, v1

    aget-byte v5, v5, v8

    aput-byte v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_344

    :cond_356
    iget v1, p0, Lbz;->f:I

    add-int/2addr v1, v2

    iput v1, p0, Lbz;->f:I

    iget v1, p0, Lbz;->g:I

    sub-int/2addr v1, v2

    iput v1, p0, Lbz;->g:I

    sub-int v5, v3, v2

    iget-object v1, p0, Lbz;->P:[[B

    const/16 v2, 0x200

    new-array v2, v2, [B

    aput-object v2, v1, v6

    const/4 v1, 0x0

    :goto_36b
    const/16 v2, 0x100

    if-ge v1, v2, :cond_37a

    iget-object v2, p0, Lbz;->P:[[B

    aget-object v2, v2, v6

    const/16 v3, 0x9

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_36b

    :cond_37a
    const/4 v1, 0x0

    const/4 v2, 0x1

    move v4, v2

    :goto_37d
    const/16 v2, 0x8

    if-gt v4, v2, :cond_3ba

    const/4 v2, 0x0

    :goto_382
    add-int/lit8 v3, v4, -0x1

    aget-short v3, v7, v3

    if-ge v2, v3, :cond_3b6

    aget v3, v9, v1

    rsub-int/lit8 v8, v4, 0x8

    shl-int v8, v3, v8

    const/4 v3, 0x0

    :goto_38f
    const/4 v10, 0x1

    rsub-int/lit8 v11, v4, 0x8

    shl-int/2addr v10, v11

    if-ge v3, v10, :cond_3b1

    iget-object v10, p0, Lbz;->P:[[B

    aget-object v10, v10, v6

    or-int v11, v8, v3

    int-to-byte v12, v4

    aput-byte v12, v10, v11

    iget-object v10, p0, Lbz;->P:[[B

    aget-object v10, v10, v6

    or-int v11, v8, v3

    add-int/lit16 v11, v11, 0x100

    iget-object v12, p0, Lbz;->O:[[B

    aget-object v12, v12, v6

    aget-byte v12, v12, v1

    aput-byte v12, v10, v11

    add-int/lit8 v3, v3, 0x1

    goto :goto_38f

    :cond_3b1
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_382

    :cond_3b6
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_37d

    :cond_3ba
    move v1, v5

    goto/16 :goto_261

    :cond_3bd
    const/4 v1, 0x0

    goto/16 :goto_231

    .line 588
    :sswitch_3c0
    iget v1, p0, Lbz;->g:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_3c9

    const/4 v1, -0x2

    :goto_3c6
    move v2, v1

    .line 589
    goto/16 :goto_44

    .line 588
    :cond_3c9
    iget-object v1, p0, Lbz;->e:[B

    iget v2, p0, Lbz;->f:I

    add-int/lit8 v2, v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lbz;->e:[B

    iget v3, p0, Lbz;->f:I

    add-int/lit8 v3, v3, 0x3

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    iget v2, p0, Lbz;->g:I

    add-int/lit8 v3, v1, 0x2

    if-ge v2, v3, :cond_3e8

    const/4 v1, -0x2

    goto :goto_3c6

    :cond_3e8
    iget v2, p0, Lbz;->f:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lbz;->f:I

    iget v2, p0, Lbz;->g:I

    add-int/lit8 v2, v2, -0x4

    iput v2, p0, Lbz;->g:I

    add-int/lit8 v1, v1, -0x2

    move v2, v1

    :goto_3f7
    if-lez v2, :cond_499

    iget-object v1, p0, Lbz;->e:[B

    iget v3, p0, Lbz;->f:I

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xf0

    if-eqz v1, :cond_456

    const/4 v1, 0x1

    :goto_404
    iget-object v3, p0, Lbz;->e:[B

    iget v4, p0, Lbz;->f:I

    aget-byte v3, v3, v4

    and-int/lit8 v3, v3, 0xf

    iget v4, p0, Lbz;->f:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lbz;->f:I

    iget v4, p0, Lbz;->g:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lbz;->g:I

    add-int/lit8 v2, v2, -0x1

    iget-object v4, p0, Lbz;->U:[[I

    const/16 v5, 0x40

    new-array v5, v5, [I

    aput-object v5, v4, v3

    if-eqz v1, :cond_468

    const/4 v1, 0x0

    :goto_425
    const/16 v4, 0x40

    if-ge v1, v4, :cond_458

    sget-object v4, Lbz;->c:[I

    aget v4, v4, v1

    iget-object v5, p0, Lbz;->U:[[I

    aget-object v5, v5, v3

    iget-object v6, p0, Lbz;->e:[B

    iget v7, p0, Lbz;->f:I

    mul-int/lit8 v8, v4, 0x2

    add-int/2addr v7, v8

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    iget-object v7, p0, Lbz;->e:[B

    iget v8, p0, Lbz;->f:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v8

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, v7, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v4, v6

    sget-object v6, Lbz;->d:[I

    aget v6, v6, v1

    mul-int/2addr v4, v6

    aput v4, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_425

    :cond_456
    const/4 v1, 0x0

    goto :goto_404

    :cond_458
    iget v1, p0, Lbz;->f:I

    add-int/lit16 v1, v1, 0x80

    iput v1, p0, Lbz;->f:I

    iget v1, p0, Lbz;->g:I

    add-int/lit8 v1, v1, -0x80

    iput v1, p0, Lbz;->g:I

    add-int/lit8 v1, v2, -0x80

    move v2, v1

    goto :goto_3f7

    :cond_468
    const/4 v1, 0x0

    :goto_469
    const/16 v4, 0x40

    if-ge v1, v4, :cond_488

    sget-object v4, Lbz;->c:[I

    aget v4, v4, v1

    iget-object v5, p0, Lbz;->U:[[I

    aget-object v5, v5, v3

    iget-object v6, p0, Lbz;->e:[B

    iget v7, p0, Lbz;->f:I

    add-int/2addr v4, v7

    aget-byte v4, v6, v4

    and-int/lit16 v4, v4, 0xff

    sget-object v6, Lbz;->d:[I

    aget v6, v6, v1

    mul-int/2addr v4, v6

    aput v4, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_469

    :cond_488
    iget v1, p0, Lbz;->f:I

    add-int/lit8 v1, v1, 0x40

    iput v1, p0, Lbz;->f:I

    iget v1, p0, Lbz;->g:I

    add-int/lit8 v1, v1, -0x40

    iput v1, p0, Lbz;->g:I

    add-int/lit8 v1, v2, -0x40

    move v2, v1

    goto/16 :goto_3f7

    :cond_499
    const/4 v1, 0x0

    goto/16 :goto_3c6

    .line 591
    :sswitch_49c
    iget v1, p0, Lbz;->g:I

    const/4 v3, 0x4

    if-ge v1, v3, :cond_4a5

    .line 592
    iget v1, p0, Lbz;->g:I

    goto/16 :goto_21

    .line 593
    :cond_4a5
    iget-object v1, p0, Lbz;->e:[B

    iget v3, p0, Lbz;->f:I

    add-int/lit8 v3, v3, 0x2

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    iget-object v3, p0, Lbz;->e:[B

    iget v4, p0, Lbz;->f:I

    add-int/lit8 v4, v4, 0x3

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    iput v1, p0, Lbz;->i:I

    .line 594
    iget v1, p0, Lbz;->g:I

    const/4 v3, 0x6

    if-ge v1, v3, :cond_4c7

    .line 595
    iget v1, p0, Lbz;->g:I

    goto/16 :goto_21

    .line 596
    :cond_4c7
    iget-object v1, p0, Lbz;->e:[B

    iget v3, p0, Lbz;->f:I

    add-int/lit8 v3, v3, 0x4

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    iget-object v3, p0, Lbz;->e:[B

    iget v4, p0, Lbz;->f:I

    add-int/lit8 v4, v4, 0x5

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    iput v1, p0, Lbz;->y:I

    .line 597
    const/4 v1, 0x0

    iput v1, p0, Lbz;->x:I

    .line 598
    iget v1, p0, Lbz;->f:I

    add-int/lit8 v1, v1, 0x6

    iput v1, p0, Lbz;->f:I

    .line 599
    iget v1, p0, Lbz;->g:I

    add-int/lit8 v1, v1, -0x6

    iput v1, p0, Lbz;->g:I

    .line 600
    iget v1, p0, Lbz;->i:I

    add-int/lit8 v1, v1, -0x4

    iput v1, p0, Lbz;->i:I

    goto/16 :goto_44

    .line 603
    :sswitch_4f7
    iget v1, p0, Lbz;->f:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lbz;->f:I

    .line 604
    iget v1, p0, Lbz;->g:I

    add-int/lit8 v1, v1, -0x2

    iput v1, p0, Lbz;->g:I

    .line 605
    const/4 v1, 0x6

    iput v1, p0, Lbz;->h:I

    goto/16 :goto_44

    .line 609
    :sswitch_508
    iget v1, p0, Lbz;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lbz;->f:I

    .line 610
    iget v1, p0, Lbz;->g:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lbz;->g:I

    goto/16 :goto_44

    .line 615
    :cond_516
    iget-object v1, p0, Lbz;->e:[B

    iget v3, p0, Lbz;->f:I

    add-int/lit8 v3, v3, 0x2

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    iget-object v3, p0, Lbz;->e:[B

    iget v4, p0, Lbz;->f:I

    add-int/lit8 v4, v4, 0x3

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    iput v1, p0, Lbz;->i:I

    .line 616
    iget v1, p0, Lbz;->f:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lbz;->f:I

    .line 617
    iget v1, p0, Lbz;->g:I

    add-int/lit8 v1, v1, -0x4

    iput v1, p0, Lbz;->g:I

    .line 618
    iget v1, p0, Lbz;->i:I

    add-int/lit8 v1, v1, -0x2

    iput v1, p0, Lbz;->i:I

    goto/16 :goto_44

    .line 624
    :pswitch_543
    iget v2, p0, Lbz;->g:I

    iget v3, p0, Lbz;->k:I

    mul-int/lit8 v3, v3, 0x3

    if-ge v2, v3, :cond_54f

    .line 625
    iget v1, p0, Lbz;->g:I

    goto/16 :goto_21

    .line 626
    :cond_54f
    const/4 v2, 0x0

    :goto_550
    iget v3, p0, Lbz;->k:I

    if-ge v2, v3, :cond_5a5

    .line 628
    iget-object v3, p0, Lbz;->l:[I

    iget-object v4, p0, Lbz;->e:[B

    iget v5, p0, Lbz;->f:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v2

    .line 629
    iget-object v3, p0, Lbz;->e:[B

    iget v4, p0, Lbz;->f:I

    add-int/lit8 v4, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    .line 630
    and-int/lit8 v4, v3, 0xf

    .line 631
    ushr-int/lit8 v3, v3, 0x4

    .line 642
    iget v5, p0, Lbz;->p:I

    if-le v3, v5, :cond_574

    .line 643
    iput v3, p0, Lbz;->p:I

    .line 644
    :cond_574
    iget v5, p0, Lbz;->o:I

    if-le v4, v5, :cond_57a

    .line 645
    iput v4, p0, Lbz;->o:I

    .line 646
    :cond_57a
    iget-object v5, p0, Lbz;->n:[I

    aput v3, v5, v2

    .line 647
    iget-object v3, p0, Lbz;->m:[I

    aput v4, v3, v2

    .line 649
    iget-object v3, p0, Lbz;->T:[I

    iget-object v4, p0, Lbz;->e:[B

    iget v5, p0, Lbz;->f:I

    add-int/lit8 v5, v5, 0x2

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v2

    .line 650
    iget v3, p0, Lbz;->f:I

    add-int/lit8 v3, v3, 0x3

    iput v3, p0, Lbz;->f:I

    .line 651
    iget v3, p0, Lbz;->g:I

    add-int/lit8 v3, v3, -0x3

    iput v3, p0, Lbz;->g:I

    .line 652
    iget v3, p0, Lbz;->j:I

    add-int/lit8 v3, v3, -0x3

    iput v3, p0, Lbz;->j:I

    .line 626
    add-int/lit8 v2, v2, 0x1

    goto :goto_550

    .line 655
    :cond_5a5
    iget v2, p0, Lbz;->j:I

    if-lez v2, :cond_5ad

    .line 656
    iget v2, p0, Lbz;->j:I

    iput v2, p0, Lbz;->i:I

    .line 657
    :cond_5ad
    const/4 v2, 0x0

    :goto_5ae
    iget v3, p0, Lbz;->k:I

    if-ge v2, v3, :cond_5f3

    .line 659
    iget-object v3, p0, Lbz;->s:[I

    iget v4, p0, Lbz;->G:I

    iget-object v5, p0, Lbz;->n:[I

    aget v5, v5, v2

    mul-int/2addr v4, v5

    iget v5, p0, Lbz;->p:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lbz;->p:I

    div-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x7

    div-int/lit8 v4, v4, 0x8

    aput v4, v3, v2

    .line 660
    iget v3, p0, Lbz;->J:I

    if-nez v3, :cond_5e1

    .line 661
    iget-object v3, p0, Lbz;->E:[[B

    iget-object v4, p0, Lbz;->s:[I

    aget v4, v4, v2

    mul-int/lit8 v4, v4, 0x40

    iget-object v5, p0, Lbz;->m:[I

    aget v5, v5, v2

    mul-int/2addr v4, v5

    new-array v4, v4, [B

    aput-object v4, v3, v2

    .line 657
    :goto_5de
    add-int/lit8 v2, v2, 0x1

    goto :goto_5ae

    .line 663
    :cond_5e1
    iget-object v3, p0, Lbz;->E:[[B

    iget-object v4, p0, Lbz;->m:[I

    aget v4, v4, v2

    mul-int/lit8 v4, v4, 0x40

    iget-object v5, p0, Lbz;->n:[I

    aget v5, v5, v2

    mul-int/2addr v4, v5

    new-array v4, v4, [B

    aput-object v4, v3, v2

    goto :goto_5de

    .line 665
    :cond_5f3
    const/4 v2, 0x0

    iput v2, p0, Lbz;->F:I

    .line 666
    iget v2, p0, Lbz;->k:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_625

    .line 671
    iget v2, p0, Lbz;->p:I

    mul-int/lit8 v2, v2, 0x8

    iget v3, p0, Lbz;->G:I

    iget v4, p0, Lbz;->p:I

    mul-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lbz;->p:I

    mul-int/lit8 v4, v4, 0x8

    div-int/2addr v3, v4

    mul-int/2addr v2, v3

    iput v2, p0, Lbz;->q:I

    .line 672
    iget v2, p0, Lbz;->o:I

    mul-int/lit8 v2, v2, 0x8

    iget v3, p0, Lbz;->H:I

    iget v4, p0, Lbz;->o:I

    mul-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lbz;->o:I

    mul-int/lit8 v4, v4, 0x8

    div-int/2addr v3, v4

    mul-int/2addr v2, v3

    iput v2, p0, Lbz;->r:I

    .line 674
    :cond_625
    const/4 v2, 0x2

    iput v2, p0, Lbz;->h:I

    goto/16 :goto_d

    .line 681
    :cond_62a
    iget-object v2, p0, Lbz;->e:[B

    iget v3, p0, Lbz;->f:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xff

    if-ne v2, v3, :cond_67d

    iget-object v2, p0, Lbz;->e:[B

    iget v3, p0, Lbz;->f:I

    add-int/lit8 v3, v3, 0x1

    aget-byte v2, v2, v3

    if-eqz v2, :cond_67d

    .line 683
    iget-object v2, p0, Lbz;->e:[B

    iget v3, p0, Lbz;->f:I

    add-int/lit8 v3, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xd0

    if-lt v2, v3, :cond_679

    iget-object v2, p0, Lbz;->e:[B

    iget v3, p0, Lbz;->f:I

    add-int/lit8 v3, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xd7

    if-gt v2, v3, :cond_679

    .line 685
    const/4 v2, 0x4

    iput v2, p0, Lbz;->h:I

    .line 686
    iget v2, p0, Lbz;->f:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lbz;->f:I

    .line 687
    iget v2, p0, Lbz;->g:I

    add-int/lit8 v2, v2, -0x2

    iput v2, p0, Lbz;->g:I

    .line 677
    :goto_66b
    :pswitch_66b
    iget v2, p0, Lbz;->h:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_39

    .line 679
    iget v2, p0, Lbz;->g:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_62a

    .line 680
    iget v1, p0, Lbz;->g:I

    goto/16 :goto_21

    .line 691
    :cond_679
    const/4 v2, 0x2

    iput v2, p0, Lbz;->h:I

    goto :goto_66b

    .line 696
    :cond_67d
    iget v2, p0, Lbz;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lbz;->f:I

    .line 697
    iget v2, p0, Lbz;->g:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lbz;->g:I

    goto :goto_66b

    .line 702
    :pswitch_68a
    const/16 v1, 0x40

    new-array v3, v1, [S

    iget v1, p0, Lbz;->J:I

    if-eqz v1, :cond_6a1

    iget-object v1, p0, Lbz;->B:[I

    if-nez v1, :cond_6a1

    iget v1, p0, Lbz;->o:I

    iget v2, p0, Lbz;->p:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x40

    new-array v1, v1, [I

    iput-object v1, p0, Lbz;->B:[I

    :cond_6a1
    iget-object v1, p0, Lbz;->u:[I

    iget v2, p0, Lbz;->v:I

    aget v2, v1, v2

    const/4 v1, 0x0

    :goto_6a8
    const/16 v4, 0x40

    if-ge v1, v4, :cond_6b2

    const/4 v4, 0x0

    aput-short v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6a8

    :cond_6b2
    iget v6, p0, Lbz;->g:I

    iget v7, p0, Lbz;->R:I

    iget v8, p0, Lbz;->S:I

    iget-object v1, p0, Lbz;->K:[I

    mul-int/lit8 v4, v2, 0x2

    aget v1, v1, v4

    invoke-direct {p0, v1}, Lbz;->I(I)I

    move-result v1

    if-gez v1, :cond_781

    iget v4, p0, Lbz;->f:I

    iget v5, p0, Lbz;->g:I

    sub-int v5, v6, v5

    sub-int/2addr v4, v5

    iput v4, p0, Lbz;->f:I

    iput v6, p0, Lbz;->g:I

    iput v7, p0, Lbz;->R:I

    iput v8, p0, Lbz;->S:I

    :goto_6d3
    if-nez v1, :cond_d

    iget-object v1, p0, Lbz;->z:[I

    aget v1, v1, v2

    iget-object v4, p0, Lbz;->m:[I

    aget v4, v4, v2

    iget-object v5, p0, Lbz;->n:[I

    aget v5, v5, v2

    mul-int/2addr v4, v5

    div-int/2addr v1, v4

    iget-object v4, p0, Lbz;->z:[I

    aget v4, v4, v2

    iget-object v5, p0, Lbz;->m:[I

    aget v5, v5, v2

    iget-object v6, p0, Lbz;->n:[I

    aget v6, v6, v2

    mul-int/2addr v5, v6

    rem-int/2addr v4, v5

    iget-object v5, p0, Lbz;->n:[I

    aget v5, v5, v2

    mul-int/2addr v1, v5

    iget-object v5, p0, Lbz;->n:[I

    aget v5, v5, v2

    rem-int v5, v4, v5

    add-int/2addr v1, v5

    iget-object v5, p0, Lbz;->s:[I

    aget v5, v5, v2

    if-ge v1, v5, :cond_724

    iget v5, p0, Lbz;->J:I

    if-nez v5, :cond_80b

    iget-object v5, p0, Lbz;->n:[I

    aget v5, v5, v2

    div-int/2addr v4, v5

    iget-object v5, p0, Lbz;->s:[I

    aget v5, v5, v2

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x8

    add-int/2addr v1, v4

    mul-int/lit8 v5, v1, 0x8

    iget-object v1, p0, Lbz;->E:[[B

    aget-object v4, v1, v2

    iget-object v1, p0, Lbz;->s:[I

    aget v1, v1, v2

    mul-int/lit8 v6, v1, 0x8

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lbz;->Code(I[S[BII)V

    :cond_724
    :goto_724
    iget-object v1, p0, Lbz;->z:[I

    aget v4, v1, v2

    add-int/lit8 v4, v4, 0x1

    aput v4, v1, v2

    iget v1, p0, Lbz;->A:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lbz;->A:I

    iget v1, p0, Lbz;->A:I

    iget v4, p0, Lbz;->D:I

    rem-int/2addr v1, v4

    if-nez v1, :cond_843

    iget v1, p0, Lbz;->J:I

    if-eqz v1, :cond_843

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lbz;->Code(Z)V

    iget v1, p0, Lbz;->V:I

    iget v4, p0, Lbz;->G:I

    rem-int/2addr v1, v4

    iget v4, p0, Lbz;->V:I

    iget v5, p0, Lbz;->G:I

    div-int/2addr v4, v5

    iget v5, p0, Lbz;->J:I

    shr-int/2addr v1, v5

    iget v5, p0, Lbz;->J:I

    shr-int v7, v4, v5

    iget v4, p0, Lbz;->Code:I

    mul-int/2addr v4, v7

    add-int/2addr v4, v1

    const/4 v1, 0x0

    const/4 v5, 0x0

    :goto_758
    iget v6, p0, Lbz;->o:I

    mul-int/lit8 v6, v6, 0x8

    iget v8, p0, Lbz;->J:I

    shr-int/2addr v6, v8

    if-ge v5, v6, :cond_840

    add-int v6, v5, v7

    iget v8, p0, Lbz;->I:I

    if-ge v6, v8, :cond_840

    const/4 v6, 0x0

    :goto_768
    iget v8, p0, Lbz;->W:I

    iget v9, p0, Lbz;->J:I

    shr-int/2addr v8, v9

    if-ge v6, v8, :cond_831

    iget-object v8, p0, Lbz;->Z:[I

    add-int v9, v4, v6

    iget-object v10, p0, Lbz;->B:[I

    iget v11, p0, Lbz;->J:I

    shl-int v11, v6, v11

    add-int/2addr v11, v1

    aget v10, v10, v11

    aput v10, v8, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_768

    :cond_781
    invoke-direct {p0, v1}, Lbz;->Code(I)I

    move-result v4

    if-gez v4, :cond_799

    iget v1, p0, Lbz;->f:I

    iget v5, p0, Lbz;->g:I

    sub-int v5, v6, v5

    sub-int/2addr v1, v5

    iput v1, p0, Lbz;->f:I

    iput v6, p0, Lbz;->g:I

    iput v7, p0, Lbz;->R:I

    iput v8, p0, Lbz;->S:I

    move v1, v4

    goto/16 :goto_6d3

    :cond_799
    invoke-static {v1, v4}, Lbz;->Code(II)I

    move-result v1

    const/4 v4, 0x0

    iget-object v5, p0, Lbz;->Q:[S

    aget-short v5, v5, v2

    add-int/2addr v1, v5

    int-to-short v1, v1

    aput-short v1, v3, v4

    iget-object v1, p0, Lbz;->K:[I

    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    aget v9, v1, v4

    const/4 v1, 0x1

    move v5, v1

    :goto_7b0
    const/16 v1, 0x40

    if-ge v5, v1, :cond_801

    invoke-direct {p0, v9}, Lbz;->I(I)I

    move-result v1

    if-gez v1, :cond_7cb

    iget v4, p0, Lbz;->f:I

    iget v5, p0, Lbz;->g:I

    sub-int v5, v6, v5

    sub-int/2addr v4, v5

    iput v4, p0, Lbz;->f:I

    iput v6, p0, Lbz;->g:I

    iput v7, p0, Lbz;->R:I

    iput v8, p0, Lbz;->S:I

    goto/16 :goto_6d3

    :cond_7cb
    and-int/lit8 v10, v1, 0xf

    shr-int/lit8 v1, v1, 0x4

    if-nez v10, :cond_7da

    const/16 v4, 0xf

    if-ne v1, v4, :cond_801

    add-int/2addr v1, v5

    :goto_7d6
    add-int/lit8 v1, v1, 0x1

    move v5, v1

    goto :goto_7b0

    :cond_7da
    invoke-direct {p0, v10}, Lbz;->Code(I)I

    move-result v4

    if-gez v4, :cond_7f2

    iget v1, p0, Lbz;->f:I

    iget v5, p0, Lbz;->g:I

    sub-int v5, v6, v5

    sub-int/2addr v1, v5

    iput v1, p0, Lbz;->f:I

    iput v6, p0, Lbz;->g:I

    iput v7, p0, Lbz;->R:I

    iput v8, p0, Lbz;->S:I

    move v1, v4

    goto/16 :goto_6d3

    :cond_7f2
    add-int/2addr v1, v5

    const/16 v5, 0x40

    if-lt v1, v5, :cond_7f9

    const/16 v1, 0x3f

    :cond_7f9
    invoke-static {v10, v4}, Lbz;->Code(II)I

    move-result v4

    int-to-short v4, v4

    aput-short v4, v3, v1

    goto :goto_7d6

    :cond_801
    iget-object v1, p0, Lbz;->Q:[S

    const/4 v4, 0x0

    aget-short v4, v3, v4

    aput-short v4, v1, v2

    const/4 v1, 0x0

    goto/16 :goto_6d3

    :cond_80b
    iget-object v1, p0, Lbz;->n:[I

    aget v1, v1, v2

    div-int v1, v4, v1

    iget-object v5, p0, Lbz;->n:[I

    aget v5, v5, v2

    mul-int/lit8 v5, v5, 0x40

    mul-int/2addr v1, v5

    iget-object v5, p0, Lbz;->n:[I

    aget v5, v5, v2

    rem-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x8

    add-int v5, v1, v4

    iget-object v1, p0, Lbz;->E:[[B

    aget-object v4, v1, v2

    iget-object v1, p0, Lbz;->n:[I

    aget v1, v1, v2

    mul-int/lit8 v6, v1, 0x8

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lbz;->Code(I[S[BII)V

    goto/16 :goto_724

    :cond_831
    iget v6, p0, Lbz;->Code:I

    add-int/2addr v4, v6

    iget v6, p0, Lbz;->p:I

    mul-int/lit8 v6, v6, 0x8

    iget v8, p0, Lbz;->J:I

    shl-int/2addr v6, v8

    add-int/2addr v1, v6

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_758

    :cond_840
    const/4 v1, -0x1

    iput v1, p0, Lbz;->V:I

    :cond_843
    iget v1, p0, Lbz;->A:I

    if-nez v1, :cond_88a

    iget v1, p0, Lbz;->J:I

    if-nez v1, :cond_84f

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lbz;->Code(Z)V

    :cond_84f
    iget v1, p0, Lbz;->F:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lbz;->F:I

    iget v1, p0, Lbz;->t:I

    const/4 v4, 0x1

    if-le v1, v4, :cond_865

    iget v1, p0, Lbz;->F:I

    iget v4, p0, Lbz;->r:I

    iget v5, p0, Lbz;->o:I

    mul-int/lit8 v5, v5, 0x8

    div-int/2addr v4, v5

    if-ge v1, v4, :cond_881

    :cond_865
    iget v1, p0, Lbz;->t:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_887

    iget v1, p0, Lbz;->F:I

    iget-object v4, p0, Lbz;->m:[I

    aget v4, v4, v2

    iget v5, p0, Lbz;->H:I

    mul-int/2addr v4, v5

    iget v5, p0, Lbz;->o:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lbz;->o:I

    div-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x7

    div-int/lit8 v4, v4, 0x8

    if-lt v1, v4, :cond_887

    :cond_881
    const/4 v1, 0x2

    iput v1, p0, Lbz;->h:I

    const/4 v1, 0x0

    goto/16 :goto_d

    :cond_887
    invoke-direct {p0}, Lbz;->I()V

    :cond_88a
    iget v1, p0, Lbz;->w:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lbz;->w:I

    iget v1, p0, Lbz;->w:I

    iget-object v4, p0, Lbz;->m:[I

    aget v4, v4, v2

    iget-object v5, p0, Lbz;->n:[I

    aget v2, v5, v2

    mul-int/2addr v2, v4

    if-ge v1, v2, :cond_8a2

    iget v1, p0, Lbz;->t:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8ba

    :cond_8a2
    const/4 v1, 0x0

    iput v1, p0, Lbz;->w:I

    iget v1, p0, Lbz;->v:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lbz;->v:I

    iget v1, p0, Lbz;->v:I

    iget v2, p0, Lbz;->t:I

    if-lt v1, v2, :cond_8ba

    const/4 v1, 0x0

    iput v1, p0, Lbz;->v:I

    iget v1, p0, Lbz;->x:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lbz;->x:I

    :cond_8ba
    iget v1, p0, Lbz;->x:I

    iget v2, p0, Lbz;->y:I

    if-ne v1, v2, :cond_6a1

    iget v1, p0, Lbz;->y:I

    if-lez v1, :cond_6a1

    const/4 v1, 0x0

    iput v1, p0, Lbz;->x:I

    invoke-direct {p0}, Lbz;->Z()V

    const/4 v1, 0x5

    iput v1, p0, Lbz;->h:I

    const/4 v1, 0x0

    goto/16 :goto_d

    .line 705
    :pswitch_8d0
    const/4 v1, 0x0

    goto/16 :goto_21

    .line 707
    :pswitch_8d3
    iget v2, p0, Lbz;->g:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_8dc

    .line 708
    iget v1, p0, Lbz;->g:I

    goto/16 :goto_21

    .line 709
    :cond_8dc
    iget v2, p0, Lbz;->f:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lbz;->f:I

    .line 710
    iget v2, p0, Lbz;->g:I

    add-int/lit8 v2, v2, -0x2

    iput v2, p0, Lbz;->g:I

    .line 711
    const/4 v2, 0x1

    iput v2, p0, Lbz;->h:I

    goto/16 :goto_39

    .line 715
    :cond_8ed
    const/4 v2, -0x2

    if-ne v1, v2, :cond_21

    .line 716
    iget v1, p0, Lbz;->g:I

    goto/16 :goto_21

    :cond_8f4
    move v2, v1

    goto/16 :goto_44

    .line 495
    nop

    :pswitch_data_8f8
    .packed-switch 0x0
        :pswitch_8d3
        :pswitch_3c
        :pswitch_3c
        :pswitch_543
        :pswitch_68a
        :pswitch_66b
        :pswitch_8d0
    .end packed-switch

    .line 510
    :sswitch_data_90a
    .sparse-switch
        0x0 -> :sswitch_508
        0xc0 -> :sswitch_87
        0xc1 -> :sswitch_87
        0xc4 -> :sswitch_22b
        0xd9 -> :sswitch_4f7
        0xda -> :sswitch_158
        0xdb -> :sswitch_3c0
        0xdd -> :sswitch_49c
        0xff -> :sswitch_508
    .end sparse-switch
.end method
