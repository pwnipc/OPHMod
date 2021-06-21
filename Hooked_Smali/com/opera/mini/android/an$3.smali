.class final Lcom/opera/mini/android/an$3;
.super Ljava/lang/Object;
.source "Source"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opera/mini/android/an;->I(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
.end annotation


# instance fields
.field private synthetic Code:Ljava/lang/String;

.field private synthetic I:J

.field private synthetic J:Ljava/lang/String;

.field private synthetic Z:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 395
    iput-object p1, p0, Lcom/opera/mini/android/an$3;->Code:Ljava/lang/String;

    iput-wide p2, p0, Lcom/opera/mini/android/an$3;->I:J

    iput-object p4, p0, Lcom/opera/mini/android/an$3;->Z:Ljava/lang/String;

    iput-object p5, p0, Lcom/opera/mini/android/an$3;->J:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .prologue
    .line 399
    iget-object v0, p0, Lcom/opera/mini/android/an$3;->Code:Ljava/lang/String;

    iget-wide v1, p0, Lcom/opera/mini/android/an$3;->I:J

    iget-object v3, p0, Lcom/opera/mini/android/an$3;->Z:Ljava/lang/String;

    iget-object v4, p0, Lcom/opera/mini/android/an$3;->J:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/opera/mini/android/an;->Code(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 400
    return-void
.end method
