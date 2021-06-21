.class interface abstract Ldk;
.super Ljava/lang/Object;
.source "Source"


# static fields
.field public static final Code:Ldk;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    new-instance v0, Ldk$1;

    invoke-direct {v0}, Ldk$1;-><init>()V

    sput-object v0, Ldk;->Code:Ldk;

    return-void
.end method


# virtual methods
.method public abstract Code(Ljava/lang/Object;)Ljava/util/Map;
.end method

.method public abstract I(Ljava/lang/Object;)Ljava/util/Map;
.end method
