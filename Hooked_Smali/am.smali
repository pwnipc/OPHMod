.class public final Lam;
.super Ljava/lang/Object;
.source "Source"


# direct methods
.method private static final Code([BIZ)J
    .registers 10

    .prologue
    const-wide/16 v2, -0x1

    .line 11
    const-wide/16 v0, 0x0

    .line 13
    const/4 v4, 0x0

    :goto_5
    if-ge v4, p1, :cond_15

    .line 15
    const/16 v5, 0x8

    shl-long/2addr v0, v5

    .line 16
    add-int/lit8 v5, v4, 0x0

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    or-long/2addr v0, v5

    .line 13
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 19
    :cond_15
    if-nez p2, :cond_1b

    .line 21
    packed-switch p1, :pswitch_data_32

    :pswitch_1a
    move-wide v0, v2

    .line 39
    :cond_1b
    :goto_1b
    :pswitch_1b
    return-wide v0

    .line 24
    :pswitch_1c
    long-to-int v0, v0

    int-to-byte v0, v0

    int-to-long v0, v0

    goto :goto_1b

    .line 26
    :pswitch_20
    long-to-int v0, v0

    int-to-short v0, v0

    int-to-long v0, v0

    goto :goto_1b

    .line 28
    :pswitch_24
    xor-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const-wide/32 v2, 0xffffff

    and-long/2addr v0, v2

    neg-long v0, v0

    goto :goto_1b

    .line 30
    :pswitch_2e
    long-to-int v0, v0

    int-to-long v0, v0

    goto :goto_1b

    .line 21
    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_20
        :pswitch_24
        :pswitch_2e
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1b
    .end packed-switch
.end method

.method public static Code(Ljava/io/InputStream;Ljava/io/OutputStream;Lag;)V
    .registers 19

    .prologue
    .line 45
    new-instance v9, Ljava/io/DataInputStream;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 46
    new-instance v10, Ljava/io/DataOutputStream;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 47
    const/4 v3, 0x0

    .line 48
    const/4 v2, 0x0

    .line 49
    const/16 v1, 0x400

    new-array v11, v1, [B

    .line 51
    new-instance v12, Lae;

    invoke-direct {v12}, Lae;-><init>()V

    .line 52
    invoke-virtual {v12}, Lae;->Code()V

    .line 54
    invoke-virtual/range {p2 .. p2}, Lag;->Code()Ljava/util/Vector;

    move-result-object v13

    .line 55
    const/4 v1, 0x0

    move v4, v1

    :goto_22
    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v4, v1, :cond_112

    .line 57
    invoke-virtual {v13, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lah;

    .line 59
    invoke-virtual {v1}, Lah;->Code()B

    move-result v5

    if-nez v5, :cond_3d

    .line 61
    check-cast v1, Lal;

    move v2, v3

    .line 161
    :goto_37
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v2

    move-object v2, v1

    goto :goto_22

    .line 65
    :cond_3d
    :goto_3d
    invoke-virtual {v1}, Lah;->I()I

    move-result v5

    if-ge v3, v5, :cond_5a

    .line 67
    invoke-virtual {v1}, Lah;->I()I

    move-result v5

    sub-int/2addr v5, v3

    .line 68
    array-length v6, v11

    if-le v5, v6, :cond_4c

    .line 70
    array-length v5, v11

    .line 73
    :cond_4c
    const/4 v6, 0x0

    invoke-virtual {v9, v11, v6, v5}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 74
    const/4 v6, 0x0

    invoke-virtual {v12, v11, v6, v5}, Lae;->Code([BII)V

    .line 75
    const/4 v6, 0x0

    invoke-virtual {v10, v11, v6, v5}, Ljava/io/DataOutputStream;->write([BII)V

    .line 77
    add-int/2addr v3, v5

    .line 78
    goto :goto_3d

    .line 80
    :cond_5a
    invoke-virtual {v1}, Lah;->Code()B

    move-result v5

    packed-switch v5, :pswitch_data_15e

    :cond_61
    :goto_61
    move-object v1, v2

    move v2, v3

    goto :goto_37

    .line 84
    :pswitch_64
    check-cast v1, Lai;

    .line 85
    iget v5, v1, Lai;->Code:I

    const/4 v6, 0x0

    .line 86
    iget v7, v1, Lai;->I:I

    if-le v5, v7, :cond_15a

    .line 88
    iget v5, v1, Lai;->I:I

    move v7, v5

    .line 91
    :goto_70
    if-ge v6, v7, :cond_9a

    .line 93
    sub-int v5, v7, v6

    .line 94
    array-length v8, v11

    if-le v5, v8, :cond_78

    .line 96
    array-length v5, v11

    .line 99
    :cond_78
    const/4 v8, 0x0

    invoke-virtual {v9, v11, v8, v5}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 100
    const/4 v8, 0x0

    invoke-virtual {v12, v11, v8, v5}, Lae;->Code([BII)V

    .line 101
    add-int v8, v3, v5

    .line 103
    const/4 v3, 0x0

    :goto_83
    if-ge v3, v5, :cond_94

    .line 105
    aget-byte v14, v11, v3

    iget-object v15, v1, Lai;->Z:[B

    aget-byte v15, v15, v6

    xor-int/2addr v14, v15

    int-to-byte v14, v14

    aput-byte v14, v11, v3

    .line 103
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_83

    .line 107
    :cond_94
    const/4 v3, 0x0

    invoke-virtual {v10, v11, v3, v5}, Ljava/io/DataOutputStream;->write([BII)V

    move v3, v8

    .line 108
    goto :goto_70

    .line 110
    :cond_9a
    iget v5, v1, Lai;->I:I

    if-ge v6, v5, :cond_157

    .line 112
    iget-object v5, v1, Lai;->Z:[B

    iget v1, v1, Lai;->I:I

    sub-int/2addr v1, v6

    invoke-virtual {v10, v5, v6, v1}, Ljava/io/DataOutputStream;->write([BII)V

    move-object v1, v2

    move v2, v3

    goto :goto_37

    .line 116
    :goto_a9
    iget v6, v1, Lai;->Code:I

    if-ge v5, v6, :cond_61

    .line 118
    iget v6, v1, Lai;->Code:I

    sub-int/2addr v6, v5

    .line 119
    array-length v7, v11

    if-le v6, v7, :cond_154

    .line 121
    array-length v6, v11

    move v7, v6

    .line 124
    :goto_b5
    const/4 v6, 0x0

    invoke-virtual {v9, v11, v6, v7}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 125
    const/4 v6, 0x0

    invoke-virtual {v12, v11, v6, v7}, Lae;->Code([BII)V

    .line 126
    add-int v6, v3, v7

    .line 127
    add-int v3, v5, v7

    move v5, v3

    move v3, v6

    .line 128
    goto :goto_a9

    .line 134
    :pswitch_c4
    check-cast v1, Laj;

    .line 135
    const/4 v5, 0x0

    iget-byte v6, v1, Laj;->Code:B

    invoke-virtual {v9, v11, v5, v6}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 138
    const/4 v5, 0x0

    iget-byte v6, v1, Laj;->Code:B

    invoke-virtual {v12, v11, v5, v6}, Lae;->Code([BII)V

    .line 139
    iget-byte v5, v1, Laj;->Code:B

    add-int/2addr v3, v5

    .line 141
    iget-byte v5, v1, Laj;->Code:B

    iget-boolean v6, v1, Laj;->Z:Z

    invoke-static {v11, v5, v6}, Lam;->Code([BIZ)J

    move-result-wide v5

    .line 142
    iget v7, v1, Laj;->J:I

    int-to-long v7, v7

    add-long/2addr v5, v7

    .line 144
    iget-byte v1, v1, Laj;->I:B

    packed-switch v1, :pswitch_data_166

    goto/16 :goto_61

    .line 147
    :pswitch_e8
    long-to-int v1, v5

    invoke-virtual {v10, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    move-object v1, v2

    move v2, v3

    .line 148
    goto/16 :goto_37

    .line 150
    :pswitch_f0
    long-to-int v1, v5

    int-to-short v1, v1

    invoke-virtual {v10, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    move-object v1, v2

    move v2, v3

    .line 151
    goto/16 :goto_37

    .line 153
    :pswitch_f9
    const/16 v1, 0x8

    shr-long v7, v5, v1

    long-to-int v1, v7

    invoke-virtual {v10, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 154
    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    long-to-int v1, v5

    invoke-virtual {v10, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    move-object v1, v2

    move v2, v3

    .line 155
    goto/16 :goto_37

    .line 157
    :pswitch_10c
    long-to-int v1, v5

    invoke-virtual {v10, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto/16 :goto_61

    .line 168
    :cond_112
    :goto_112
    invoke-virtual {v9, v11}, Ljava/io/DataInputStream;->read([B)I

    move-result v1

    .line 169
    if-ltz v1, :cond_122

    .line 171
    const/4 v4, 0x0

    invoke-virtual {v12, v11, v4, v1}, Lae;->Code([BII)V

    .line 174
    const/4 v4, 0x0

    invoke-virtual {v10, v11, v4, v1}, Ljava/io/DataOutputStream;->write([BII)V

    .line 176
    add-int/2addr v3, v1

    .line 177
    goto :goto_112

    .line 179
    :cond_122
    invoke-virtual {v12}, Lae;->I()[B

    move-result-object v4

    .line 181
    iget v1, v2, Lal;->Code:I

    if-eq v1, v3, :cond_130

    .line 183
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 190
    :cond_130
    iget-object v1, v2, Lal;->I:[B

    array-length v1, v1

    array-length v3, v4

    if-eq v1, v3, :cond_13c

    .line 192
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 199
    :cond_13c
    const/4 v1, 0x0

    :goto_13d
    iget-object v3, v2, Lal;->I:[B

    array-length v3, v3

    if-ge v1, v3, :cond_153

    .line 201
    iget-object v3, v2, Lal;->I:[B

    aget-byte v3, v3, v1

    aget-byte v5, v4, v1

    if-eq v3, v5, :cond_150

    .line 203
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 199
    :cond_150
    add-int/lit8 v1, v1, 0x1

    goto :goto_13d

    .line 210
    :cond_153
    return-void

    :cond_154
    move v7, v6

    goto/16 :goto_b5

    :cond_157
    move v5, v6

    goto/16 :goto_a9

    :cond_15a
    move v7, v5

    goto/16 :goto_70

    .line 80
    nop

    :pswitch_data_15e
    .packed-switch 0x1
        :pswitch_64
        :pswitch_c4
    .end packed-switch

    .line 144
    :pswitch_data_166
    .packed-switch 0x1
        :pswitch_e8
        :pswitch_f0
        :pswitch_f9
        :pswitch_10c
    .end packed-switch
.end method
