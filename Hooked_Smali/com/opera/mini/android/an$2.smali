.class final Lcom/opera/mini/android/an$2;
.super Ljava/lang/Object;
.source "Source"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opera/mini/android/an;->I(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
.end annotation


# instance fields
.field private synthetic Code:Ljava/lang/String;

.field private synthetic I:Ljava/lang/String;

.field private synthetic J:Ljava/lang/Long;

.field private synthetic Z:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .registers 5

    .prologue
    .line 369
    iput-object p1, p0, Lcom/opera/mini/android/an$2;->Code:Ljava/lang/String;

    iput-object p2, p0, Lcom/opera/mini/android/an$2;->I:Ljava/lang/String;

    iput-object p3, p0, Lcom/opera/mini/android/an$2;->Z:Ljava/lang/String;

    iput-object p4, p0, Lcom/opera/mini/android/an$2;->J:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    .line 373
    iget-object v0, p0, Lcom/opera/mini/android/an$2;->Code:Ljava/lang/String;

    iget-object v1, p0, Lcom/opera/mini/android/an$2;->I:Ljava/lang/String;

    iget-object v2, p0, Lcom/opera/mini/android/an$2;->Z:Ljava/lang/String;

    iget-object v3, p0, Lcom/opera/mini/android/an$2;->J:Ljava/lang/Long;

    invoke-static {v0, v1, v2, v3}, Lcom/opera/mini/android/an;->Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 374
    return-void
.end method
