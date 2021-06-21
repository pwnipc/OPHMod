.class public Lcom/opera/mini/android/TrackedActivity;
.super Landroid/app/Activity;
.source "Source"


# static fields
.field private static Code:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput v0, Lcom/opera/mini/android/TrackedActivity;->Code:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onStart()V
    .registers 2

    .prologue
    .line 21
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 22
    invoke-static {}, Lcom/opera/mini/android/s;->t()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 24
    invoke-static {p0}, Lcom/opera/mini/android/an;->Code(Landroid/app/Activity;)V

    .line 25
    sget v0, Lcom/opera/mini/android/TrackedActivity;->Code:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/opera/mini/android/TrackedActivity;->Code:I

    .line 27
    :cond_12
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 32
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 33
    invoke-static {}, Lcom/opera/mini/android/s;->t()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 35
    invoke-static {p0}, Lcom/opera/mini/android/an;->I(Landroid/app/Activity;)V

    .line 36
    sget v0, Lcom/opera/mini/android/TrackedActivity;->Code:I

    add-int/lit8 v0, v0, -0x1

    .line 37
    sput v0, Lcom/opera/mini/android/TrackedActivity;->Code:I

    if-nez v0, :cond_19

    .line 40
    const-string v0, "[background]"

    invoke-static {v0}, Lcom/opera/mini/android/an;->Code(Ljava/lang/String;)V

    .line 43
    :cond_19
    return-void
.end method
