.class public final LI;
.super Ljava/lang/Object;
.source "Source"


# static fields
.field private static final Code:LJ;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 601
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_e

    .line 602
    new-instance v0, LB;

    invoke-direct {v0}, LB;-><init>()V

    sput-object v0, LI;->Code:LJ;

    .line 616
    :goto_d
    return-void

    .line 603
    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1c

    .line 604
    new-instance v0, Lf;

    invoke-direct {v0}, Lf;-><init>()V

    sput-object v0, LI;->Code:LJ;

    goto :goto_d

    .line 605
    :cond_1c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2a

    .line 606
    new-instance v0, Le;

    invoke-direct {v0}, Le;-><init>()V

    sput-object v0, LI;->Code:LJ;

    goto :goto_d

    .line 607
    :cond_2a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_38

    .line 608
    new-instance v0, Ld;

    invoke-direct {v0}, Ld;-><init>()V

    sput-object v0, LI;->Code:LJ;

    goto :goto_d

    .line 609
    :cond_38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_46

    .line 610
    new-instance v0, La;

    invoke-direct {v0}, La;-><init>()V

    sput-object v0, LI;->Code:LJ;

    goto :goto_d

    .line 611
    :cond_46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_54

    .line 612
    new-instance v0, LC;

    invoke-direct {v0}, LC;-><init>()V

    sput-object v0, LI;->Code:LJ;

    goto :goto_d

    .line 614
    :cond_54
    new-instance v0, LJ;

    invoke-direct {v0}, LJ;-><init>()V

    sput-object v0, LI;->Code:LJ;

    goto :goto_d
.end method

.method static synthetic Code()V
    .registers 0

    .prologue
    .line 40
    return-void
.end method

.method static synthetic Code(LCode;Ljava/util/ArrayList;)V
    .registers 4

    .prologue
    .line 40
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll;

    invoke-interface {p0, v0}, LCode;->Code(Ll;)V

    goto :goto_4

    :cond_14
    return-void
.end method

.method static synthetic I()LJ;
    .registers 1

    .prologue
    .line 40
    sget-object v0, LI;->Code:LJ;

    return-object v0
.end method
