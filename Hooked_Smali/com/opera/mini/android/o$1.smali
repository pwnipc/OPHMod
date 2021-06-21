.class final Lcom/opera/mini/android/o$1;
.super Ljava/lang/Object;
.source "Source"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opera/mini/android/o;-><init>(Lcom/opera/mini/android/Browser;Landroid/content/res/AssetManager;)V
.end annotation


# instance fields
.field private synthetic Code:Lcom/opera/mini/android/o;


# direct methods
.method constructor <init>(Lcom/opera/mini/android/o;)V
    .registers 2

    .prologue
    .line 136
    iput-object p1, p0, Lcom/opera/mini/android/o$1;->Code:Lcom/opera/mini/android/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/opera/mini/android/o$1;->Code:Lcom/opera/mini/android/o;

    invoke-virtual {v0}, Lcom/opera/mini/android/o;->au()V

    .line 139
    return-void
.end method
