.class public final Lq;
.super Lt;
.source "Source"


# instance fields
.field private final B:Landroid/os/Bundle;

.field private final Code:Ljava/lang/String;

.field private final I:Ljava/lang/CharSequence;

.field private final J:Z

.field private final Z:[Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 253
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_8

    .line 254
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 256
    :cond_8
    return-void
.end method


# virtual methods
.method public final B()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lq;->B:Landroid/os/Bundle;

    return-object v0
.end method

.method public final Code()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lq;->Code:Ljava/lang/String;

    return-object v0
.end method

.method public final I()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lq;->I:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final J()Z
    .registers 2

    .prologue
    .line 81
    iget-boolean v0, p0, Lq;->J:Z

    return v0
.end method

.method public final Z()[Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lq;->Z:[Ljava/lang/CharSequence;

    return-object v0
.end method
