.class public Lcom/opera/mini/android/Code;
.super Lar;
.source "Source"


# direct methods
.method public constructor <init>(Lci;)V
    .registers 3

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lar;-><init>(Lci;)V

    .line 49
    const/4 v0, 0x2

    sput v0, Lcom/opera/mini/android/Code;->b:I

    .line 50
    invoke-virtual {p0}, Lcom/opera/mini/android/Code;->g()V

    .line 51
    return-void
.end method

.method private native Code(Lan;Lbr;IIIII)V
.end method

.method private static native Code(Lcc;III)V
.end method

.method private static Code(Lbr;Ljava/lang/Object;IIII)Z
    .registers 12

    .prologue
    .line 311
    check-cast p1, Lcc;

    invoke-virtual {p1}, Lcc;->b()Lbg;

    move-result-object v0

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lbg;->Code(Lbr;IIII)Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private static native I(Lcc;)V
.end method

.method public static z()Lbg;
    .registers 1

    .prologue
    .line 321
    sget-object v0, Lcom/opera/mini/android/Code;->I:Lar;

    check-cast v0, Lcom/opera/mini/android/Code;

    iget-object v0, v0, Lcom/opera/mini/android/Code;->B:Lcc;

    invoke-virtual {v0}, Lcc;->b()Lbg;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final A()V
    .registers 3

    .prologue
    .line 335
    iget-object v0, p0, Lcom/opera/mini/android/Code;->B:Lcc;

    if-eqz v0, :cond_d

    .line 337
    sget-object v0, Lcom/opera/mini/android/Code;->I:Lar;

    check-cast v0, Lcom/opera/mini/android/Code;

    iget-object v1, p0, Lcom/opera/mini/android/Code;->B:Lcc;

    invoke-virtual {v0, v1}, Lcom/opera/mini/android/Code;->Code(Lcc;)V

    .line 339
    :cond_d
    return-void
.end method

.method protected final Code([Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    const/16 v2, 0x78

    .line 391
    sget v0, Lcom/opera/mini/android/s;->al:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_55

    .line 393
    invoke-static {}, Lcom/opera/mini/android/ac;->Code()I

    move-result v0

    .line 394
    if-ge v0, v2, :cond_11

    .line 396
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 417
    :goto_10
    return-object v0

    .line 398
    :cond_11
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 399
    if-gt v0, v2, :cond_22

    const-string v2, "qvga"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 401
    const-string v0, "qvga"

    goto :goto_10

    .line 403
    :cond_22
    const/16 v2, 0xa0

    if-gt v0, v2, :cond_31

    const-string v2, "hvga"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 405
    const-string v0, "hvga"

    goto :goto_10

    .line 407
    :cond_31
    const/16 v2, 0xf0

    if-gt v0, v2, :cond_40

    const-string v2, "vga"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 409
    const-string v0, "vga"

    goto :goto_10

    .line 411
    :cond_40
    const/16 v2, 0x140

    if-gt v0, v2, :cond_4f

    const-string v0, "svga"

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 413
    const-string v0, "svga"

    goto :goto_10

    .line 415
    :cond_4f
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p1, v0

    goto :goto_10

    .line 417
    :cond_55
    invoke-super {p0, p1}, Lar;->Code([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method

.method protected final Code(Lcc;)V
    .registers 3

    .prologue
    .line 329
    invoke-static {p1}, Lcom/opera/mini/android/Code;->I(Lcc;)V

    .line 330
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcc;->Code(Ljava/lang/String;)V

    .line 331
    return-void
.end method

.method public Code(Z)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 63
    if-eqz p1, :cond_6

    .line 65
    invoke-virtual {p0}, Lcom/opera/mini/android/Code;->s()V

    .line 67
    :cond_6
    iget-object v0, p0, Lcom/opera/mini/android/Code;->J:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    move v2, v1

    .line 68
    :goto_d
    if-ge v2, v3, :cond_2e

    .line 70
    iget-object v0, p0, Lcom/opera/mini/android/Code;->J:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcc;

    .line 71
    iget-object v4, p0, Lcom/opera/mini/android/Code;->B:Lcc;

    if-eq v0, v4, :cond_26

    .line 73
    invoke-virtual {v0}, Lcc;->b()Lbg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbg;->I(Z)V

    .line 68
    :goto_22
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_d

    .line 77
    :cond_26
    invoke-virtual {v0}, Lcc;->b()Lbg;

    move-result-object v0

    invoke-virtual {v0, v1}, Lbg;->I(Z)V

    goto :goto_22

    .line 81
    :cond_2e
    sget-object v2, Lcom/opera/mini/android/Code;->Z:Lan;

    if-eqz p1, :cond_44

    const/16 v0, 0x63

    :goto_34
    invoke-virtual {v2, v0}, Lan;->E(I)V

    .line 82
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 83
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 84
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 89
    invoke-virtual {p0}, Lcom/opera/mini/android/Code;->u()V

    .line 92
    return-void

    :cond_44
    move v0, v1

    .line 81
    goto :goto_34
.end method

.method public I(I)V
    .registers 11

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 113
    .line 116
    sparse-switch p1, :sswitch_data_1f0

    .line 209
    :cond_6
    :goto_6
    :try_start_6
    invoke-super {p0, p1}, Lar;->I(I)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_9} :catch_153

    move-object v0, v8

    .line 216
    :goto_a
    sparse-switch p1, :sswitch_data_232

    :goto_d
    move-object v8, v0

    .line 290
    :goto_e
    :sswitch_e
    if-eqz v8, :cond_1ed

    .line 297
    throw v8

    .line 120
    :sswitch_11
    :try_start_11
    sget-object v0, Lcom/opera/mini/android/Code;->Z:Lan;

    invoke-virtual {v0}, Lan;->h()I

    move-result v0

    if-eqz v0, :cond_24

    move v0, v1

    :goto_1a
    new-instance v3, Lcom/opera/mini/android/events/NotificationSettingChangedEvent;

    invoke-direct {v3, v0}, Lcom/opera/mini/android/events/NotificationSettingChangedEvent;-><init>(Z)V

    invoke-static {v3}, Lcom/opera/mini/android/events/EventDispatcher;->I(Ljava/lang/Object;)V

    move-object v0, v8

    .line 121
    goto :goto_a

    :cond_24
    move v0, v2

    .line 120
    goto :goto_1a

    .line 125
    :sswitch_26
    sget-object v0, Lcom/opera/mini/android/Code;->Z:Lan;

    invoke-virtual {v0}, Lan;->h()I

    move-result v0

    if-eqz v0, :cond_39

    move v0, v1

    :goto_2f
    new-instance v3, Lcom/opera/mini/android/events/OdpSettingEvent;

    invoke-direct {v3, v0}, Lcom/opera/mini/android/events/OdpSettingEvent;-><init>(Z)V

    invoke-static {v3}, Lcom/opera/mini/android/events/EventDispatcher;->I(Ljava/lang/Object;)V

    move-object v0, v8

    .line 126
    goto :goto_a

    :cond_39
    move v0, v2

    .line 125
    goto :goto_2f

    .line 130
    :sswitch_3b
    sget-object v0, Lcom/opera/mini/android/Code;->Z:Lan;

    sget-object v3, Lcom/opera/mini/android/Code;->Z:Lan;

    invoke-virtual {v3}, Lan;->f()I

    move-result v3

    invoke-virtual {v0, v3}, Lan;->h(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/opera/mini/android/bl;->Code(J)V

    move-object v0, v8

    .line 131
    goto :goto_a

    .line 135
    :sswitch_4c
    sget-object v0, Lcom/opera/mini/android/Code;->Z:Lan;

    sget-object v3, Lcom/opera/mini/android/Code;->Z:Lan;

    invoke-virtual {v3}, Lan;->f()I

    move-result v3

    invoke-virtual {v0, v3}, Lan;->h(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/opera/mini/android/bl;->I(J)V

    move-object v0, v8

    .line 136
    goto :goto_a

    .line 140
    :sswitch_5d
    sget-object v0, Lcom/opera/mini/android/Code;->Z:Lan;

    invoke-virtual {v0}, Lan;->h()I

    move-result v0

    if-eqz v0, :cond_6b

    move v0, v1

    :goto_66
    invoke-static {v0}, Lcom/opera/mini/android/bl;->Code(Z)V

    move-object v0, v8

    .line 141
    goto :goto_a

    :cond_6b
    move v0, v2

    .line 140
    goto :goto_66

    .line 145
    :sswitch_6d
    sget-object v0, Lcom/opera/mini/android/Code;->Z:Lan;

    invoke-virtual {v0}, Lan;->h()I

    move-result v0

    if-eqz v0, :cond_7b

    move v0, v1

    :goto_76
    invoke-static {v0}, Lcom/opera/mini/android/bl;->I(Z)V

    move-object v0, v8

    .line 146
    goto :goto_a

    :cond_7b
    move v0, v2

    .line 145
    goto :goto_76

    .line 150
    :sswitch_7d
    new-instance v0, Lcom/opera/mini/android/events/OdpVisitedEvent;

    invoke-direct {v0}, Lcom/opera/mini/android/events/OdpVisitedEvent;-><init>()V

    invoke-static {v0}, Lcom/opera/mini/android/events/EventDispatcher;->I(Ljava/lang/Object;)V

    move-object v0, v8

    .line 151
    goto :goto_a

    .line 155
    :sswitch_87
    new-instance v0, Lcom/opera/mini/android/events/MobileStoreShownEvent;

    invoke-direct {v0}, Lcom/opera/mini/android/events/MobileStoreShownEvent;-><init>()V

    invoke-static {v0}, Lcom/opera/mini/android/events/EventDispatcher;->I(Ljava/lang/Object;)V

    move-object v0, v8

    .line 156
    goto/16 :goto_a

    .line 160
    :sswitch_92
    new-instance v0, Lcom/opera/mini/android/events/OpenUrlEvent;

    invoke-direct {v0}, Lcom/opera/mini/android/events/OpenUrlEvent;-><init>()V

    invoke-static {v0}, Lcom/opera/mini/android/events/EventDispatcher;->I(Ljava/lang/Object;)V

    move-object v0, v8

    .line 161
    goto/16 :goto_a

    .line 165
    :sswitch_9d
    sget-object v0, Lcom/opera/mini/android/Code;->Z:Lan;

    invoke-virtual {v0}, Lan;->f()I

    move-result v0

    .line 166
    sget-object v3, Lcom/opera/mini/android/Code;->Z:Lan;

    invoke-virtual {v3}, Lan;->f()I

    move-result v3

    .line 167
    sget-object v4, Lcom/opera/mini/android/Code;->Z:Lan;

    invoke-virtual {v4, v3}, Lan;->f(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/opera/mini/android/Code;->Z:Lan;

    invoke-virtual {v4, v0}, Lan;->h(I)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/opera/mini/android/an;->Code(Ljava/lang/String;J)V

    move-object v0, v8

    .line 169
    goto/16 :goto_a

    .line 173
    :sswitch_bb
    sget-object v0, Lcom/opera/mini/android/Code;->Z:Lan;

    invoke-virtual {v0}, Lan;->f()I

    move-result v0

    .line 174
    sget-object v3, Lcom/opera/mini/android/Code;->Z:Lan;

    invoke-virtual {v3}, Lan;->f()I

    move-result v3

    .line 175
    sget-object v4, Lcom/opera/mini/android/Code;->Z:Lan;

    invoke-virtual {v4, v3}, Lan;->f(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/opera/mini/android/Code;->Z:Lan;

    invoke-virtual {v4, v0}, Lan;->f(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/opera/mini/android/an;->Code(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v8

    .line 177
    goto/16 :goto_a

    .line 181
    :sswitch_d9
    sget-object v0, Lcom/opera/mini/android/Code;->Z:Lan;

    invoke-virtual {v0}, Lan;->h()I

    move-result v0

    if-eqz v0, :cond_e8

    move v0, v1

    :goto_e2
    invoke-static {v0}, Lcom/opera/mini/android/an;->Code(Z)V

    move-object v0, v8

    .line 182
    goto/16 :goto_a

    :cond_e8
    move v0, v2

    .line 181
    goto :goto_e2

    .line 186
    :sswitch_ea
    sget-object v0, Lcom/opera/mini/android/Code;->Z:Lan;

    sget-object v3, Lcom/opera/mini/android/Code;->Z:Lan;

    sget-object v4, Lcom/opera/mini/android/ag;->Code:Lcom/opera/mini/android/ag;

    sget-object v5, Lcom/opera/mini/android/Code;->Z:Lan;

    sget-object v6, Lcom/opera/mini/android/Code;->Z:Lan;

    invoke-virtual {v6}, Lan;->f()I

    move-result v6

    invoke-virtual {v5, v6}, Lan;->f(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/opera/mini/android/ag;->Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lan;->Code(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lan;->b(I)V

    move-object v0, v8

    .line 187
    goto/16 :goto_a

    .line 191
    :sswitch_10a
    sget-object v0, Lcom/opera/mini/android/Code;->Z:Lan;

    sget-object v3, Lcom/opera/mini/android/Code;->Z:Lan;

    invoke-virtual {v3}, Lan;->f()I

    move-result v3

    invoke-virtual {v0, v3}, Lan;->y(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/opera/mini/android/bg;

    .line 192
    sget-object v3, Lcom/opera/mini/android/Code;->Z:Lan;

    sget-object v4, Lcom/opera/mini/android/Code;->Z:Lan;

    invoke-virtual {v4}, Lan;->f()I

    move-result v4

    invoke-virtual {v3, v4}, Lan;->f(I)Ljava/lang/String;

    move-result-object v3

    .line 193
    invoke-virtual {v0, v3}, Lcom/opera/mini/android/bg;->Code(Ljava/lang/String;)V

    move-object v0, v8

    .line 194
    goto/16 :goto_a

    .line 198
    :sswitch_12a
    sget-object v0, Lcom/opera/mini/android/Code;->Z:Lan;

    sget-object v3, Lcom/opera/mini/android/Code;->Z:Lan;

    invoke-virtual {v3}, Lan;->f()I

    move-result v3

    invoke-virtual {v0, v3}, Lan;->y(I)Ljava/lang/Object;

    .line 199
    sget-object v0, Lcom/opera/mini/android/Code;->Z:Lan;

    invoke-virtual {v0}, Lan;->h()I

    .line 200
    sget-object v0, Lcom/opera/mini/android/Code;->Z:Lan;

    sget-object v3, Lcom/opera/mini/android/Code;->Z:Lan;

    invoke-virtual {v3}, Lan;->f()I

    move-result v3

    invoke-virtual {v0, v3}, Lan;->f(I)Ljava/lang/String;

    move-object v0, v8

    .line 201
    goto/16 :goto_a

    .line 205
    :sswitch_148
    invoke-static {}, Lar;->o()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 206
    invoke-static {}, Lcu;->Code()V
    :try_end_151
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_151} :catch_153

    goto/16 :goto_6

    .line 212
    :catch_153
    move-exception v0

    goto/16 :goto_a

    .line 220
    :sswitch_156
    sget-object v0, Lcom/opera/mini/android/Code;->Z:Lan;

    invoke-virtual {v0}, Lan;->h()I

    move-result v1

    .line 221
    sget-object v0, Lcom/opera/mini/android/Code;->Z:Lan;

    invoke-virtual {v0}, Lan;->h()I

    move-result v2

    .line 222
    sget-object v0, Lcom/opera/mini/android/Code;->Z:Lan;

    invoke-virtual {v0}, Lan;->h()I

    move-result v3

    .line 223
    sget-object v0, Lcom/opera/mini/android/Code;->Z:Lan;

    sget-object v4, Lcom/opera/mini/android/Code;->Z:Lan;

    invoke-virtual {v4}, Lan;->f()I

    move-result v4

    invoke-virtual {v0, v4}, Lan;->y(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcc;

    .line 224
    invoke-static {v0, v3, v2, v1}, Lcom/opera/mini/android/Code;->Code(Lcc;III)V

    goto/16 :goto_e

    .line 235
    :sswitch_17b
    sget-object v0, Lcom/opera/mini/android/Code;->Z:Lan;

    invoke-virtual {v0}, Lan;->h()I

    move-result v5

    .line 236
    sget-object v0, Lcom/opera/mini/android/Code;->Z:Lan;

    invoke-virtual {v0}, Lan;->h()I

    move-result v4

    .line 237
    sget-object v0, Lcom/opera/mini/android/Code;->Z:Lan;

    invoke-virtual {v0}, Lan;->h()I

    move-result v3

    .line 238
    sget-object v0, Lcom/opera/mini/android/Code;->Z:Lan;

    invoke-virtual {v0}, Lan;->h()I

    move-result v2

    .line 239
    sget-object v0, Lcom/opera/mini/android/Code;->Z:Lan;

    invoke-virtual {v0}, Lan;->h()I

    move-result v1

    .line 241
    sget-object v0, Lcom/opera/mini/android/Code;->Z:Lan;

    invoke-virtual {v0}, Lan;->f()I

    move-result v7

    .line 244
    sget-object v0, Lcom/opera/mini/android/Code;->Z:Lan;

    invoke-virtual {v0}, Lan;->f()I

    move-result v0

    .line 245
    if-eqz v0, :cond_1ee

    .line 247
    sget-object v6, Lcom/opera/mini/android/Code;->Z:Lan;

    invoke-virtual {v6, v0}, Lan;->y(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcc;

    .line 250
    :goto_1af
    sget-object v6, Lcom/opera/mini/android/Code;->Z:Lan;

    invoke-static/range {v0 .. v7}, Lcom/opera/mini/android/a;->Code(Lcc;IIIIILan;I)V

    goto/16 :goto_e

    .line 255
    :sswitch_1b6
    sget-object v0, Lcom/opera/mini/android/Code;->Z:Lan;

    invoke-virtual {v0}, Lan;->h()I

    move-result v0

    if-eqz v0, :cond_1c4

    move v0, v1

    .line 257
    :goto_1bf
    invoke-static {v0}, Lcom/opera/mini/android/a;->I(Z)V

    goto/16 :goto_e

    :cond_1c4
    move v0, v2

    .line 255
    goto :goto_1bf

    .line 261
    :sswitch_1c6
    sget-object v0, Lcom/opera/mini/android/Code;->Z:Lan;

    invoke-virtual {v0}, Lan;->h()I

    move-result v0

    if-eqz v0, :cond_1d3

    .line 263
    :goto_1ce
    invoke-static {v1}, Lcom/opera/mini/android/a;->Z(Z)V

    goto/16 :goto_e

    :cond_1d3
    move v1, v2

    .line 261
    goto :goto_1ce

    .line 275
    :sswitch_1d5
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 276
    new-instance v2, Lcom/opera/mini/android/Code$1;

    invoke-direct {v2}, Lcom/opera/mini/android/Code$1;-><init>()V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 289
    sget-object v1, Lcom/opera/mini/android/Browser;->I:Lcom/opera/mini/android/Browser;

    invoke-virtual {v1}, Lcom/opera/mini/android/Browser;->I()V

    goto/16 :goto_d

    .line 299
    :cond_1ed
    return-void

    :cond_1ee
    move-object v0, v8

    goto :goto_1af

    .line 116
    :sswitch_data_1f0
    .sparse-switch
        -0x158 -> :sswitch_148
        -0xfd -> :sswitch_12a
        -0xfc -> :sswitch_10a
        -0xf9 -> :sswitch_ea
        -0xc -> :sswitch_92
        -0xb -> :sswitch_7d
        -0xa -> :sswitch_87
        -0x9 -> :sswitch_5d
        -0x8 -> :sswitch_4c
        -0x7 -> :sswitch_3b
        -0x6 -> :sswitch_6d
        -0x5 -> :sswitch_11
        -0x4 -> :sswitch_26
        -0x3 -> :sswitch_d9
        -0x2 -> :sswitch_bb
        -0x1 -> :sswitch_9d
    .end sparse-switch

    .line 216
    :sswitch_data_232
    .sparse-switch
        -0x155 -> :sswitch_1d5
        -0xd4 -> :sswitch_e
        -0x82 -> :sswitch_156
        -0x7e -> :sswitch_1c6
        -0x7d -> :sswitch_1b6
        -0x7c -> :sswitch_17b
        -0x24 -> :sswitch_e
    .end sparse-switch
.end method

.method public Z()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 103
    sget-object v3, Lcom/opera/mini/android/Code;->Z:Lan;

    invoke-static {}, Lcom/opera/mini/android/s;->t()Z

    move-result v0

    if-eqz v0, :cond_1c

    move v0, v1

    :goto_b
    invoke-virtual {v3, v2, v0}, Lan;->J(II)V

    .line 105
    sget-object v0, Lcom/opera/mini/android/Code;->Z:Lan;

    sget-boolean v3, Lcom/opera/mini/android/s;->am:Z

    if-eqz v3, :cond_15

    move v2, v1

    :cond_15
    invoke-virtual {v0, v1, v2}, Lan;->J(II)V

    .line 107
    invoke-super {p0}, Lar;->Z()V

    .line 108
    return-void

    :cond_1c
    move v0, v2

    .line 103
    goto :goto_b
.end method

.method protected final b(I)V
    .registers 10

    .prologue
    .line 365
    sget-object v1, Lcom/opera/mini/android/Code;->Z:Lan;

    iget-object v2, p0, Lcom/opera/mini/android/Code;->g:Lbr;

    iget-object v0, p0, Lcom/opera/mini/android/Code;->g:Lbr;

    invoke-interface {v0}, Lbr;->Code()I

    move-result v4

    iget-object v0, p0, Lcom/opera/mini/android/Code;->g:Lbr;

    invoke-interface {v0}, Lbr;->I()I

    move-result v5

    iget-object v0, p0, Lcom/opera/mini/android/Code;->g:Lbr;

    invoke-interface {v0}, Lbr;->Z()I

    move-result v6

    iget-object v0, p0, Lcom/opera/mini/android/Code;->g:Lbr;

    invoke-interface {v0}, Lbr;->J()I

    move-result v7

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v7}, Lcom/opera/mini/android/Code;->Code(Lan;Lbr;IIIII)V

    .line 368
    return-void
.end method

.method public final f()V
    .registers 3

    .prologue
    .line 348
    invoke-super {p0}, Lar;->f()V

    .line 349
    invoke-static {}, Lcu;->I()V

    .line 350
    sget v0, Lcom/opera/mini/android/s;->al:I

    const/4 v1, 0x7

    if-lt v0, v1, :cond_10

    .line 352
    sget-object v0, Lcom/opera/mini/android/Browser;->I:Lcom/opera/mini/android/Browser;

    invoke-static {v0}, Lcom/opera/mini/android/bf;->Code(Landroid/content/Context;)V

    .line 354
    :cond_10
    return-void
.end method

.method protected final k()Z
    .registers 2

    .prologue
    .line 97
    sget-object v0, Lcom/opera/mini/android/Code;->Code:Lci;

    check-cast v0, Lcom/opera/mini/android/o;

    invoke-virtual {v0}, Lcom/opera/mini/android/o;->d()Z

    move-result v0

    return v0
.end method

.method public final l()Ljava/lang/String;
    .registers 3

    .prologue
    .line 423
    sget-boolean v0, Ldb;->l:Z

    if-eqz v0, :cond_a

    .line 426
    sget-object v0, Lcom/opera/mini/android/Code;->f:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 428
    :goto_9
    return-object v0

    :cond_a
    sget-object v0, Lar;->f:[Ljava/lang/String;

    invoke-super {p0, v0}, Lar;->Code([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method public run()V
    .registers 1

    .prologue
    .line 358
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 359
    invoke-super {p0}, Lar;->run()V

    .line 360
    return-void
.end method

.method public final t()I
    .registers 3

    .prologue
    .line 41
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method protected final x()V
    .registers 1

    .prologue
    .line 372
    invoke-static {}, Lcom/opera/mini/android/br;->J()V

    .line 373
    return-void
.end method
