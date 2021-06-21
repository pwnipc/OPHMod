.class public final Ly;
.super Ljava/lang/Object;


# static fields
.field public static final Code:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "emulator"

    invoke-static {v0}, Lcom/google/android/gms/internal/Code;->Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ly;->Code:Ljava/lang/String;

    return-void
.end method
