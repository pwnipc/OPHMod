.class public interface abstract Ldn;
.super Ljava/lang/Object;
.source "Source"


# static fields
.field public static final Code:Ldn;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    new-instance v0, Ldn$1;

    invoke-direct {v0}, Ldn$1;-><init>()V

    sput-object v0, Ldn;->Code:Ldn;

    return-void
.end method


# virtual methods
.method public abstract Code(Ldf;)V
.end method
