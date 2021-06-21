.class public abstract Lah;
.super Ljava/lang/Object;
.source "Source"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract Code()B
.end method

.method public abstract Code(Ljava/io/DataInput;I)I
.end method

.method public final Code(Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 24
    invoke-virtual {p0}, Lah;->I()I

    move-result v1

    move-object v0, p1

    check-cast v0, Lah;

    invoke-virtual {v0}, Lah;->I()I

    move-result v0

    sub-int v0, v1, v0

    .line 25
    if-nez v0, :cond_1a

    .line 26
    invoke-virtual {p0}, Lah;->Code()B

    move-result v0

    check-cast p1, Lah;

    invoke-virtual {p1}, Lah;->Code()B

    move-result v1

    sub-int/2addr v0, v1

    .line 28
    :cond_1a
    return v0
.end method

.method protected abstract I()I
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 38
    instance-of v0, p1, Lah;

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lah;->I()I

    move-result v1

    move-object v0, p1

    check-cast v0, Lah;

    invoke-virtual {v0}, Lah;->I()I

    move-result v0

    if-ne v1, v0, :cond_1f

    invoke-virtual {p0}, Lah;->Code()B

    move-result v0

    check-cast p1, Lah;

    invoke-virtual {p1}, Lah;->Code()B

    move-result v1

    if-ne v0, v1, :cond_1f

    const/4 v0, 0x1

    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 33
    invoke-virtual {p0}, Lah;->I()I

    move-result v0

    return v0
.end method
