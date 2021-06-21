.class final Lcom/opera/mini/android/o$6;
.super Ljava/lang/Object;
.source "Source"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opera/mini/android/o;->I(Z)V
.end annotation


# instance fields
.field private synthetic Code:Z


# direct methods
.method constructor <init>(Z)V
    .registers 2

    .prologue
    .line 1129
    iput-boolean p1, p0, Lcom/opera/mini/android/o$6;->Code:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 1132
    sget-object v0, Lcom/opera/mini/android/Browser;->I:Lcom/opera/mini/android/Browser;

    iget-boolean v1, p0, Lcom/opera/mini/android/o$6;->Code:Z

    invoke-virtual {v0, v1}, Lcom/opera/mini/android/Browser;->Code(Z)V

    .line 1133
    return-void
.end method
