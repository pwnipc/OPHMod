.class final Ldk$1;
.super Ljava/lang/Object;
.source "Source"

# interfaces
.implements Ldk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldk;
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final Code(Ljava/lang/Object;)Ljava/util/Map;
    .registers 3

    .prologue
    .line 33
    invoke-static {p1}, Lde;->Code(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final I(Ljava/lang/Object;)Ljava/util/Map;
    .registers 3

    .prologue
    .line 38
    invoke-static {p1}, Lde;->I(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
