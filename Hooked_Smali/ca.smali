.class public abstract Lca;
.super Ljava/lang/Object;
.source "Source"


# direct methods
.method public static Code()I
    .registers 1

    .prologue
    .line 249
    sget v0, Ldb;->f:I

    packed-switch v0, :pswitch_data_e

    .line 263
    :pswitch_5
    const/16 v0, 0x30

    :goto_7
    return v0

    .line 252
    :pswitch_8
    const/16 v0, 0x2a

    goto :goto_7

    .line 257
    :pswitch_b
    const/16 v0, 0x23

    goto :goto_7

    .line 249
    :pswitch_data_e
    .packed-switch -0x9
        :pswitch_b
        :pswitch_b
        :pswitch_5
        :pswitch_b
        :pswitch_8
        :pswitch_5
        :pswitch_5
        :pswitch_b
    .end packed-switch
.end method
